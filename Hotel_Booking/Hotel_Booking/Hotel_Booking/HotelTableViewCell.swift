//
//  HotelTableViewCell.swift
//  Hotel_Booking
//
//  Created by SHIN MIN  on 27/09/2024.
//

import UIKit

class HotelTableViewCell: UITableViewCell {
    @IBOutlet weak var hotelNameLabel: UILabel!
    @IBOutlet weak var hotelAddressLabel: UILabel!
    @IBOutlet weak var hotelFacilitiesLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
