import UIKit

struct City: Decodable {
    let name: String
    let image: String
    let description: String
}

class CityDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var hotelsTableView: UITableView! // Outlet for the table view

    var cityName: String?
    var cityImageName: String?
    
    var hotels: [NewHotel] = [] // Array to hold hotel data

    override func viewDidLoad() {
        super.viewDidLoad()

        if let cityImageName = cityImageName, let cityImage = UIImage(named: cityImageName) {
            cityImageView.image = cityImage
        } else {
            cityImageView.image = UIImage(named: "defaultImage")
        }

        // Load city details and hotel details
        loadCityDetails()
        loadHotelDetails()
        
        // Add overlay to the image view
        addImageOverlay()

        // Set up table view
        hotelsTableView.dataSource = self
        hotelsTableView.delegate = self

        // Make table view corners rounded
        hotelsTableView.layer.cornerRadius = 15
        hotelsTableView.layer.masksToBounds = true
    }

    func loadCityDetails() {
        guard let url = Bundle.main.url(forResource: "cities", withExtension: "json") else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let cities = try JSONDecoder().decode([City].self, from: data)
            if let city = cities.first(where: { $0.name == cityName }) {
                descriptionLabel.text = city.description // Set the description text
            }
        } catch {
            print("Error loading city details: \(error)")
        }
    }

    func loadHotelDetails() {
        hotels = NewHotel.loadHotels() ?? [] // Load hotels from the new JSON file
        hotelsTableView.reloadData() // Reload the table view to show hotel data
    }

    func addImageOverlay() {
        let overlayView = UIView()
        overlayView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        overlayView.translatesAutoresizingMaskIntoConstraints = false

        cityImageView.addSubview(overlayView)

        NSLayoutConstraint.activate([
            overlayView.topAnchor.constraint(equalTo: cityImageView.topAnchor),
            overlayView.bottomAnchor.constraint(equalTo: cityImageView.bottomAnchor),
            overlayView.leadingAnchor.constraint(equalTo: cityImageView.leadingAnchor),
            overlayView.trailingAnchor.constraint(equalTo: cityImageView.trailingAnchor)
        ])

        setupCityNameLabel(overlayView: overlayView)
    }

    func setupCityNameLabel(overlayView: UIView) {
        let nameLabel = UILabel()
        nameLabel.text = cityName
        nameLabel.textColor = .white
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        nameLabel.textAlignment = .center
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

        overlayView.addSubview(nameLabel)

        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: overlayView.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: overlayView.centerYAnchor)
        ])
    }

    // MARK: - UITableViewDataSource Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotels.count // Return the number of hotels
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HotelCell", for: indexPath)
        let hotel = hotels[indexPath.row]
        cell.textLabel?.text = hotel.name
        return cell
    }
}
