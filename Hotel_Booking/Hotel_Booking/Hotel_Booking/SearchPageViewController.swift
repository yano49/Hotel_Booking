//
//  SearchPageViewController.swift
//  Hotel_Booking
//
//  Created by SHIN MIN  on 26/09/2024.
//

import UIKit

class SearchPageViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var searchResults = [SearchResult]()
    
    // Variables to receive filter data
    var selectedLocations: [String] = []
    var startDate: String = ""
    var endDate: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
             searchResults = [
                 SearchResult(name: mandarinOriental.name, address: mandarinOriental.address, facilities: mandarinOriental.facilities, imageUrl: "hotel1"),
                 SearchResult(name: anantaraGoldenTriangle.name, address: anantaraGoldenTriangle.address, facilities: anantaraGoldenTriangle.facilities, imageUrl: "hotel2"),
                 SearchResult(name: rayavadeeKrabi.name, address: rayavadeeKrabi.address, facilities: rayavadeeKrabi.facilities, imageUrl: "hotel3"),
                 SearchResult(name: trisaraPhuket.name, address: trisaraPhuket.address, facilities: trisaraPhuket.facilities, imageUrl: "hotel4"),
             ]
             
             tableView.dataSource = self
             tableView.delegate = self
             tableView.reloadData()
        
    }
    
    func filterResults() {
         // Implement your filtering logic based on selectedLocations, startDate, and endDate
     }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return searchResults.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "SearchResultCell", for: indexPath) as! HotelTableViewCell
         
         let result = searchResults[indexPath.row]
         
         cell.hotelNameLabel.text = result.name
         cell.hotelAddressLabel.text = result.address
         cell.hotelFacilitiesLabel.text = result.facilities.joined(separator: ", ")
         
         return cell
     }

     struct SearchResult {
         var name: String
         var address: String
         var facilities: [String]
         var imageUrl: String
     }
}
