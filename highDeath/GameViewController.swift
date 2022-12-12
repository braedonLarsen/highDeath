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
  //  var heroesArray: Array<heroes> = Array()
    var heroesArray = [heroes]()
    var villainArray = [villian]()
    var healerStats = healer(Hh: 100, Hm: 500)
    var timeSince = 0
    var currentVillian = 0
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        fourCharacterOutlet.image = UIImage(named: "paladinPic")
        fiveCharacterOutlet.image = UIImage(named: "roguePic")
        oneCharacterOutlet.image = UIImage(named: "rangerPic")
        twoCharacterOutlet.image = UIImage(named: "newClericPic")
        threeCharacterOutlet.image = UIImage(named: "wizardPic")
        
        //heroes
        
        //paladin pos 0
        heroesArray.append(heroes(aR: 3.0, h: 300, aD: 20 ))
        //Ranger pos 1
        heroesArray.append(heroes(aR: 2.0, h: 200, aD: 50))
        //Wizard pos 2
        heroesArray.append(heroes(aR: 2.0, h: 100, aD: 100))
        //Rouge pos 3
        heroesArray.append(heroes(aR: 1.0, h: 150, aD: 75))
        
        //villains
        
        //troll
        villainArray.append(villian(VaR: 3.0, Vh: 750, VaD: 60))
        //Troglodyte
        villainArray.append(villian(VaR: 1.5, Vh: 400, VaD:40))
        //Skeleton
        villainArray.append(villian(VaR: 1.0, Vh: 300, VaD: 30))
        //orc
        villainArray.append(villian(VaR: 4.0, Vh: 500, VaD: 55))
        //dragon
        villainArray.append(villian(VaR: 5.0, Vh: 1000, VaD: 100))
        //golem
        villainArray.append(villian(VaR: 4.0, Vh: 900, VaD: 30))
        //dire wolf
        villainArray.append(villian(VaR: 1.0, Vh: 350, VaD: 40))
        // Do any additional setup after loading the view.
        
        
        
        
        
        //Running Logic
        
        
    }
    
    @IBAction func fourCharacterAction(_ sender: UITapGestureRecognizer) {
    }
    
    
    
    func timing(){
        let timer = Timer.scheduledTimer(withTimeInterval: 0.5 , repeats: true) {
            
            timer in
            
            timeUpdate()
            canAttack()
        }
    func timeUpdate()
        {
            for heroes in heroesArray
            {
                heroes.timeToAttack -= Double(timeSince)
                
            }
            villainArray[currentVillian].timeToAttack -= Double(timeSince)
            timeSince = 0
        }
        
    func canAttack()
        {
            
            for heroes in heroesArray
            {
                if heroes.timeToAttack <= 0
                {
                    heroes.timeToAttack = heroes.attackRate
                    heroes.attack(v:villainArray[currentVillian])
                }
            }
            if villainArray[currentVillian].timeToAttack <= 0
            {
                var chosenHero = Int.random(in: 0..<5)
                villainArray[currentVillian].timeToAttack = villainArray[currentVillian].attackRate
                villainArray[currentVillian].attack(h: heroesArray[chosenHero])
            }
        }
    func updateBars()
        {
            //Palidan pos 0 outlets 4, Ranger pos 1 outlets 1, Wizard pos 2 outlet 3, Rouge pos 3 outlet five
            
            
        }
    
    
            
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
