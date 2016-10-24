//
//  ViewController.swift
//  ColorMakerSlider
//
//  Created by Mike Huffaker on 10/24/16.
//  Copyright © 2016 Mike Huffaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
 
    @IBOutlet weak var colorLabel: UILabel!
 
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        changeColorComponent()
    }

    @IBAction func changeColorComponent()
    {
        print( "Slider was adjusted by user" )
        print( "Red:\(String(redSlider.value))" )
        print( "Blue:\(String(blueSlider.value))" )
        print( "Green:\(String(greenSlider.value))" )
        
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor( red: r, green: g, blue: b, alpha: 1.0 )
        colorLabel.textColor = UIColor( red: r, green: g, blue: b, alpha: 1.0 )

        
    }

}

