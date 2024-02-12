//
//  ViewController.swift
//  LesContraintes
//
//  Created by Tatiana Simmer on 12/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    // Image and text data
    var images = ["1", "2", "3", "4"]
    var imageDescriptions = ["Fauteuil élégant accompagné de son repose pieds jaune orangé", "Ce luminaire est tout simplement parfait pour sublimer votre table a manger ou un salon", "Chaise blanche de style scandinave", " Sofa vert en velou"]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateContent()
    }
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
//            // Show the previous image and text
            currentIndex = (currentIndex - 1 + images.count) % images.count
            updateContent()
        }

        @IBAction func rightButtonPressed(_ sender: UIButton) {
            // Show the next image and text
            currentIndex = (currentIndex + 1) % images.count
            updateContent()
        }

        func updateContent() {
            imageView.image = UIImage(named: images[currentIndex])
            textLabel.text = imageDescriptions[currentIndex]
        }
}
