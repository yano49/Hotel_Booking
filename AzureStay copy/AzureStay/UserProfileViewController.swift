import UIKit

class UserProfileViewController: UIViewController {

    // Outlets for the image view and labels
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load user data and display it
        loadUserProfile()
        styleProfileImage()
    }

    private func loadUserProfile() {
        let defaults = UserDefaults.standard
        
        // Load the user data
        let name = defaults.string(forKey: "profile_name") ?? "User"
        let dob = defaults.string(forKey: "profile_dob") ?? "N/A"
        let email = defaults.string(forKey: "profile_email") ?? "N/A"
        let phone = defaults.string(forKey: "profile_phone") ?? "N/A"
        
        // Update the labels
        nameLabel.text = name
        dobLabel.text = dob
        emailLabel.text = email
        phoneLabel.text = phone
        
        // Load the profile picture
        if let imageData = defaults.data(forKey: "profile_picture"), let image = UIImage(data: imageData) {
            profileImageView.image = image
        } else {
            profileImageView.image = UIImage(named: "defaultProfile") // Add a default profile image in your assets
        }
    }

    private func styleProfileImage() {
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
    }
}
