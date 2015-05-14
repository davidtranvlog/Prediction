//
//  ViewController.swift
//  Prediction
//
//  Created by Thao Phung on 5/6/15.
//  Copyright (c) 2015 Thao Phung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var predictLabel: UILabel!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    var predictions = Predictions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Get called whenever the user tab the button
    @IBAction func predictFutureTap(sender: UIButton) {
        
        // get random prediction
        let prediction = predictions.randomPrediction()
        predictLabel.text = prediction
        
        // change backgound image
        let image = randomImage()
        backgroundImageView.image = image
        
        // change color of button
        sender.backgroundColor = randomButtonColor()
        
        // color of label change
        let labelColor = randomLabelColor()
        predictLabel.textColor = labelColor
        
        // color of "Predict Future" change
        let buttonColor = randomPFColor()
        sender.titleLabel?.textColor = buttonColor
    }
    
    // The background image changes
    func randomImage() -> UIImage
    {
        let imageCount = 11
        let randomIndex = Int(arc4random()) % imageCount + 1
        if let image = UIImage(named: "image\(randomIndex).jpg")
        {
            return image
        } else {
            return UIImage(named: "image1.jpg")!
        }
    }
    
    // The background color of button change
    func randomButtonColor() -> UIColor
    {
        let random = Int(arc4random()) % 6
        switch random {
        case 0: return UIColor(red: 252/255.0, green: 220/255.0, blue: 71/255.0, alpha: 0.65)
        case 1: return UIColor(red: 220/255.0, green: 214/255.0, blue: 225/255.0, alpha: 0.65)
        case 2: return UIColor(red: 254/255.0, green: 235/255.0, blue: 109/255.0, alpha: 0.65)
        case 3: return UIColor(red: 216/255.0, green: 212/255.0, blue: 204/255.0, alpha: 0.65)
        case 4: return UIColor(red: 235/255.0, green: 148/255.0, blue: 105/255.0, alpha: 0.65)
        case 5: return UIColor(red: 240/255.0, green: 217/255.0, blue: 159/255.0, alpha: 0.65)
        default: return UIColor(red: 190/255.0, green: 230/255.0, blue: 203/255.0, alpha: 0.65)
        }
    }
    
    // the color of label change
    func randomLabelColor() -> UIColor
    {
        let random = Int(arc4random()) % 5
        
        switch random {
        case 0: return UIColor(red: 245/255.0, green: 241/255.0, blue: 201/255.0, alpha: 1)
        case 1: return UIColor(red: 85/255.0, green: 168/255.0, blue: 130/255.0, alpha: 1)
        case 2: return UIColor(red: 255/255.0, green: 255/255.0, blue: 236/255.0, alpha: 1)
        case 3: return UIColor(red: 178/255.0, green: 17/255.0, blue: 29/255.0, alpha: 1)
        case 4: return UIColor(red: 8/255.0, green: 62/255.0, blue: 10/255.0, alpha: 1)
        default: return UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1)
            
        }
    }
    
    
    // Color of "Predict Future" change
    func randomPFColor() -> UIColor
    {
        let random = Int(arc4random()) % 8
        switch random {
        case 0: return UIColor(red: 120/255.0, green: 73/255.0, blue: 87/255.0, alpha: 0.9)
        case 1: return UIColor(red: 120/255.0, green: 6/255.0, blue: 27/255.0, alpha: 0.9)
        case 2: return UIColor(red: 29/255.0, green: 78/255.0, blue: 120/255.0, alpha: 0.9)
        case 3: return UIColor(red: 23/255.0, green: 120/255.0, blue: 100/255.0, alpha: 0.9)
        case 4: return UIColor(red: 53/255.0, green: 120/255.0, blue: 55/255.0, alpha: 0.9)
        case 5: return UIColor(red: 120/255.0, green: 102/255.0, blue: 96/255.0, alpha: 0.9)
        case 6: return UIColor(red: 88/355.0, green: 117/255.0, blue: 120/255.0, alpha: 0.9)
        case 7: return UIColor(red: 120/255.0, green: 105/255.0, blue: 32/255.0, alpha: 0.9)
        default: return UIColor(red: 110/255.0, green: 137/255.0, blue: 44/255.0, alpha: 0.9)
        }
    }
    
    
}

