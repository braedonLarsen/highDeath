//
//  GameViewController.swift
//  highDeath
//
//  Created by BRAEDON LARSEN on 12/2/22.
//

import UIKit

class GameViewController: UIViewController {

  //Lord of the Outlets
  
    @IBOutlet weak var villianLabel: UILabel!
    @IBOutlet weak var villianHealth: UISlider!
    @IBOutlet weak var villianAttack: UISlider!
    
    @IBOutlet weak var oneCharacterOutlet: UIImageView!
    @IBOutlet weak var twoCharacterOutlet: UIImageView!
    @IBOutlet weak var threeCharacterOutlet: UIImageView!
    @IBOutlet weak var fourCharacterOutlet: UIImageView!
    @IBOutlet weak var fiveCharacterOutlet: UIImageView!
    
    @IBOutlet weak var oneCharacterHealth: UISlider!
    @IBOutlet weak var twoCharacterHealth: UISlider!
    @IBOutlet weak var threeCharacterHealth: UISlider!
    @IBOutlet weak var fourCharacterHealth: UISlider!
    @IBOutlet weak var fiveCharacterHealth: UISlider!
    
    @IBOutlet weak var oneCharacterAttack: UISlider!
    @IBOutlet weak var threeCharacterAttack: UISlider!
    @IBOutlet weak var fourCharacterAttack: UISlider!
    @IBOutlet weak var fiveCharacterAttack: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
