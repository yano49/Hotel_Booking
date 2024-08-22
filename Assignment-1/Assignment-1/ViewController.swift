//
//  ViewController.swift
//  Assignment-1
//
//  Created by Knight on 12/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var sealButton: UIButton!
    @IBOutlet weak var crabButton: UIButton!
    @IBOutlet weak var turtleButton: UIButton!
    @IBOutlet weak var sharkButton: UIButton!
    @IBOutlet weak var orcaButton: UIButton!
    @IBOutlet weak var octopusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        descriptionLabel.text = ""
                setImageForButton(button: sealButton, imageName: "seals.jpg")
                setImageForButton(button: crabButton, imageName: "crab.jpg")
                setImageForButton(button: turtleButton, imageName: "turtle.jpg")
                setImageForButton(button: sharkButton, imageName: "shark.jpg")
                setImageForButton(button: orcaButton, imageName: "orca.jpg")
                setImageForButton(button: octopusButton, imageName: "octopus.jpg")
        
                sealButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
                crabButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
                turtleButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
                sharkButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
                orcaButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
                octopusButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        
        sealButton.setTitle("", for: .normal)
        crabButton.setTitle("", for: .normal)
        turtleButton.setTitle("", for: .normal)
        sharkButton.setTitle("", for: .normal)
        orcaButton.setTitle("", for: .normal)
        octopusButton.setTitle("", for: .normal)
        
            }

            func setImageForButton(button: UIButton, imageName: String) {
                if let image = UIImage(named: imageName) {
                    let resizedImage = resizeImage(image: image, targetSize: CGSize(width: 170, height: 170))
                    button.setImage(resizedImage, for: .normal)
                    button.imageView?.contentMode = .scaleAspectFit
                }
            }

            func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
                let size = image.size
                let widthRatio = targetSize.width / size.width
                let heightRatio = targetSize.height / size.height

                let scaleFactor = min(widthRatio, heightRatio)

                let scaledSize = CGSize(width: size.width * scaleFactor, height: size.height * scaleFactor)

                let renderer = UIGraphicsImageRenderer(size: scaledSize)
                let resizedImage = renderer.image { _ in
                    image.draw(in: CGRect(origin: .zero, size: scaledSize))
                }

                return resizedImage
            }

            @objc func buttonTapped(_ sender: UIButton) {
                var imageName = ""

                switch sender {
                case sealButton:
                    imageName = "Seal"
                case crabButton:
                    imageName = "Crab"
                case turtleButton:
                    imageName = "Turtle"
                case sharkButton:
                    imageName = "Shark"
                case orcaButton:
                    imageName = "Orca"
                case octopusButton:
                    imageName = "Octopus"
                default:
                    imageName = "Unknown"
                }

                descriptionLabel.text = imageName
            }
}

