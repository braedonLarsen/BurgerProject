//
//  ViewController.swift
//  BurgerProject
//
//  Created by BRAEDON LARSEN on 10/7/22.
//

import UIKit

class ViewController: UIViewController {

    var cheese = 0
    var tomato = 0
    var lettuce = 0
    var onion = 0
    var ketchup = 0
    var temper = 0
    var output: Burger!

 
    
    @IBAction func cheeseAction(_ sender: UISegmentedControl) {
        cheese = sender.selectedSegmentIndex
    }
    @IBAction func tomatoAction(_ sender: UISegmentedControl) {
        tomato = sender.selectedSegmentIndex
    }
    @IBAction func lettuceAction(_ sender: UISegmentedControl) {
        lettuce = sender.selectedSegmentIndex
    }
    @IBAction func onionAction(_ sender: UISegmentedControl) {
        onion = sender.selectedSegmentIndex
    }
    @IBAction func ketchupAction(_ sender: UISegmentedControl) {
        ketchup = sender.selectedSegmentIndex
    }
    @IBAction func tempAction(_ sender: UISegmentedControl) {
        temper = sender.selectedSegmentIndex
    }
    override func viewWillDisappear(_ animated: Bool) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    @IBAction func confirmAction(_ sender: Any) {
        var boolTomato = false
        var boolLettuce = false
        var boolOnion = false
        var boolKetchup = false
        
    
    if tomato != 0
        {
            boolTomato = true
        }
    if lettuce != 0
        {
            boolLettuce = true
        }
    if onion != 0
        {
            boolOnion = true
        }
    if ketchup != 0
        {
        boolKetchup = true
        }
    
        if temper == 0
        {
        output = Burger(cheese: cheese, tomato: boolTomato, lettuce: boolLettuce, onion: boolOnion, ketchup: boolKetchup, type: temp.rare)
        }
        else if temper == 1
        {
            output = Burger(cheese: cheese, tomato: boolTomato, lettuce: boolLettuce, onion: boolOnion, ketchup: boolKetchup, type: temp.medium)
        }
        else if temper == 2
        {
            output = Burger(cheese: cheese, tomato: boolTomato, lettuce: boolLettuce, onion: boolOnion, ketchup: boolKetchup, type: temp.mediumWell)
        }
        else if temper == 3
        {
            output = Burger(cheese: cheese, tomato: boolTomato, lettuce: boolLettuce, onion: boolOnion, ketchup: boolKetchup, type: temp.chared)
        }
    }
    
    
    
        
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

