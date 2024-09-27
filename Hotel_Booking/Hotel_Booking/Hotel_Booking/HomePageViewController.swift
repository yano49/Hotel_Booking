//
//  ViewController.swift
//  Hotel_Booking
//
//  Created by SHIN MIN on 22/8/2567 BE.
//

import UIKit

class HomePageViewController: UIViewController{
    
    @IBOutlet weak var profilePicture: UIImageView!
        
    @IBOutlet weak var greetingUsername: UILabel!
    
    @IBOutlet weak var hotel1: UIImageView!
    
    @IBOutlet weak var hotel2: UIImageView!
    
    @IBOutlet weak var hotel3: UIImageView!
    
    @IBOutlet weak var hotel4: UIImageView!
    
    @IBOutlet weak var hotel5: UIImageView!
    
    @IBOutlet weak var yourTicket: UIImageView!
    
    @IBOutlet weak var yourTktName: UILabel!
    
    @IBOutlet weak var yourTktDate: UILabel!
    
    @IBOutlet weak var moreButton: UIButton!
        
    @IBOutlet weak var filterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userProfileImage = UIImage(named: "profileImage")
        let username = "Selena"
        
        profilePicture.image = userProfileImage
        greetingUsername.text = "Hello, \(username)"
        hotel1.image = UIImage(named: "hotel1")
        hotel2.image = UIImage(named: "hotel2")
        hotel3.image = UIImage(named: "hotel3")
        hotel4.image = UIImage(named: "hotel4")
        hotel5.image = UIImage(named: "hotel5")
        
    }
    
    @IBAction func moreButtonClicked(_ sender: Any) {
        
    }

}

