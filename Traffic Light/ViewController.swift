//
//  ViewController.swift
//  Traffic Light
//
//  Created by Jayden Patterson on 2021/09/06.
//

import UIKit

class ViewController: UIViewController {
// Below are all the outlets for the different elements
    @IBOutlet var redLight: UIImageView!
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myButton: UIButton!
    @IBOutlet var yellowLight: UIImageView!
    @IBOutlet var greenLight: UIImageView!
    
//    Here I decided to use an Int counter to change the phases of the lights. Starting at 0 once the button is pressed 1 is added and moves us through the Switch Statement in the function.
    var count = 0
    func changeClolour() {
        count += 1
        switch count {
        case 1:
            greenLight.tintColor = .green
            myLabel.text = "This is a green light. If this colour is displayed you may proceed over the line into the intersection."
            redLight.tintColor = .black
        case 2:
            yellowLight.tintColor = .orange
            myLabel.text = "This is an amber light. When this light is displayed it means to express caution as the light will change red very soon. If you haven't yet entered the intersection, please stop your vehicle at the line when you see this light."
            greenLight.tintColor = .black
        case 3:
            redLight.tintColor = .red
            myLabel.text = "This is a red light. This light means that you may not proceed into the intersection as there is traffic moving in another direction or pedestrians are crossing the road. Please do not cross the line until the light changes back to green."
            yellowLight.tintColor = .black
        default:
            count = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeLight(_ sender: Any) {
        changeClolour()
//      Calls the function when the button is pressed.
    }

}

