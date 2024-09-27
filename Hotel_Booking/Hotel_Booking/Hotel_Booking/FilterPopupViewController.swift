//
//  FilterPopupViewController.swift
//  Hotel_Booking
//
//  Created by SHIN MIN  on 27/09/2024.
//

import UIKit

class FilterPopupViewController: UIViewController, UITextFieldDelegate {
    // Outlets for UI components
    @IBOutlet weak var bangkokButton: CheckboxButton!
    
    @IBOutlet weak var pattayaButton: CheckboxButton!
   
    @IBOutlet weak var chaingMaiButton: CheckboxButton!
    @IBOutlet weak var krabiButton: CheckboxButton!
    @IBOutlet weak var KohSamuiButton: CheckboxButton!
    // Variables to store filter state
    var selectedLocations: [String] = []
    var startDate: String = ""
    var endDate: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bangkokButton.setTitle("Bangkok", for: .normal)
        bangkokButton.setTitleColor(.black, for: .normal)
        
        pattayaButton.setTitle("Pattaya", for: .normal)
        pattayaButton.setTitleColor(.black, for: .normal)
        
        chaingMaiButton.setTitle("Chiang Mai", for: .normal)
        chaingMaiButton.setTitleColor(.black, for: .normal)
        
        krabiButton.setTitle("Krabi", for: .normal)
        krabiButton.setTitleColor(.black, for: .normal)
        
        KohSamuiButton.setTitle("Koh Samui", for: .normal)
        KohSamuiButton.setTitleColor(.black, for: .normal)
    }
    
    
    @objc func donePressed() {
        view.endEditing(true)
    }
    
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        
        if isValidDate(startDate) && isValidDate(endDate) {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let searchVC = storyboard.instantiateViewController(withIdentifier: "SearchPageViewController") as? SearchPageViewController {
                searchVC.selectedLocations = self.selectedLocations
                searchVC.startDate = self.startDate
                searchVC.endDate = self.endDate
                self.present(searchVC, animated: true, completion: nil)
            }
        }
    }
    
    func isValidDate(_ date: String) -> Bool {
        let datePattern = "^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/([0-9]{2})$"
        let datePredicate = NSPredicate(format: "SELF MATCHES %@", datePattern)
        return datePredicate.evaluate(with: date)
    }
    
    @IBAction func locationButtonTapped(_ sender: CheckboxButton) {
        guard let locationName = sender.titleLabel?.text else { return }
    
        sender.isSelected.toggle()
        
        
        if sender.isSelected {
            //sender.setTitleColor(.blue, for: .normal)
            sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            selectedLocations.append(locationName)
        } else {
            //sender.setTitleColor(.black, for: .normal)
            sender.setImage(UIImage(systemName: "square"), for: .normal)
            selectedLocations.removeAll { $0 == locationName }
        }
    }
    
    @IBAction func cancelPopup(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func searchButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "goToSearchPage", sender: self)
    }
    
    class CheckboxButton: UIButton {
        override var isSelected: Bool {
            didSet {
                //self.setTitleColor(for: .normal) = isSelected ? .blue : .black
                //self.setTitle(isSelected ? "✓" : "", for: .normal)
                
                
            }
        }
    }
}
