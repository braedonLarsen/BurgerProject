//
//  MenuViewController.swift
//  BurgerProject
//
//  Created by BRAEDON LARSEN on 10/11/22.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var hamburgerTextOutlet: UILabel!
    @IBOutlet weak var hamburgerQuanOutlet: UILabel!
    @IBOutlet weak var cheeseBurgerQuanOutlet: UILabel!
    @IBOutlet weak var loadedQuanOutlet: UILabel!
    @IBOutlet weak var friesQuanOutlet: UILabel!
    @IBOutlet weak var drinkOutlet: UILabel!
    @IBOutlet weak var orderConfirmOutlet: UILabel!
    
    var hamTemplete = Burger(cheese: 0,tomato: false,lettuce: false,onion: false,ketchup: false,type: temp.rare)
    
    var cheeseTemplete = Burger(cheese: 1,tomato: true,lettuce: false,onion: false,ketchup: false,type: temp.medium)
    
    var loadedTemplete = Burger(cheese: 2,tomato: true,lettuce: true,onion: true,ketchup: true,type: temp.mediumWell)
    
    var burgerList = [Burger]()
    
    var hamburger = 0.0
    var cheeseBurger = 0.0
    var loadedBurger = 0.0
    var fries = 0.0
    var drink = 0.0
    
    
    @IBAction func hamburgerStepper(_ sender: UIStepper) {
        hamburger = sender.value
        hamburgerQuanOutlet.text = "x\(hamburger)"
        burgerList.append(hamTemplete)
    }
    @IBAction func cheeseBurgerSteeper(_ sender: UIStepper) {
        cheeseBurger = sender.value
        cheeseBurgerQuanOutlet.text = "x\(cheeseBurger)"
    }
    @IBAction func loadedSteeper(_ sender: UIStepper) {
        loadedBurger = sender.value
        loadedQuanOutlet.text = "x\(loadedBurger)"
    }
    @IBAction func friesSteeper(_ sender: UIStepper) {
        fries = sender.value
        friesQuanOutlet.text = "x\(fries)"
    }
    @IBAction func drinkSteeper(_ sender: UIStepper) {
        drink = sender.value
        drinkOutlet.text = "x\(drink)"
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        print("unwinding")
        //access to view controller
        let svc = seg.destination as! ViewController
        hamTemplete = svc.output
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func burgetCustButton(_ sender: Any) {
        performSegue(withIdentifier: "burgerSegue", sender: nil)
        hamburgerTextOutlet.textColor = UIColor(named: "red")
    }
    
    @IBAction func confirmorder(_ sender: UIButton) {
        orderConfirmOutlet.text = "Hamburger x \(hamburger) \(report(bur: hamTemplete)) "
        
        
        //        \n Cheeseburger x \(cheeseBurger) \n Loaded Burger x \(loadedBurger) \n Fries x \(fries) \n Drink \(drink)"
        
        
        
        
        func report(bur: Burger) -> String
        {
            var output = ""
            if bur.cheese == 0
            {
                output += "Cheese: none "
            }
            else if bur.cheese == 1
            {
                output += "Cheese: swiss "
            }
            else if bur.cheese == 2
            {
                output += "Cheese: cheedar "
            }
            if bur.tomato == true
            {
                output += "Tomato: Yes "
            }
            else if bur.tomato == false
            {
                output += "Tomato: No "
            }
            if bur.lettuce == true
            {
                output += "Lettuce: Yes "
            }
            else if bur.lettuce == false
            {
                output += "Lettuce: No "
            }
            if bur.onion == true
            {
                output += "Onion: Yes "
            }
            else if bur.onion == false
            {
                output += "Onion: No "
            }
            if bur.ketchup == true
            {
                output += "Ketchup: Yes "
            }
            else if bur.ketchup == false
            {
                output += "Ketchup: No "
            }
            return output
        }
        
        
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
