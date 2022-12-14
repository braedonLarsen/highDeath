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
    
    @IBOutlet weak var deBugOutlet: UILabel!
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
    var healerStats = healer(Hh: 100, Hm: 500,At: 40)
    var timeSince: Double = 0.0
    var currentVillian = Int.random(in: 0..<5)
    var activeVillian = villian(VaR: 0, Vh: 45, VaD: 0, n: "nil")
    var boolDict = ["paladin":false, "rouge":false,"ranger":false,"cleric":false,"mage":false]
   
   
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
        villainArray.append(villian(VaR: 3.0, Vh: 2000, VaD: 60, n:"Troll"))
        //Troglodyte
        villainArray.append(villian(VaR: 1.5, Vh: 5000, VaD:40, n: "Troglodyte"))
        //Skeleton
        villainArray.append(villian(VaR: 1.0, Vh: 500, VaD: 30, n: "Skeleton"))
        //orc
        villainArray.append(villian(VaR: 4.0, Vh: 500, VaD: 55, n: "Orc"))
        //dragon
        villainArray.append(villian(VaR: 5.0, Vh: 25000, VaD: 100, n: "Dragon"))
        //golem
        villainArray.append(villian(VaR: 4.0, Vh: 15000, VaD: 30, n: "Golem"))
        //dire wolf
        villainArray.append(villian(VaR: 1.0, Vh: 1500, VaD: 40, n: "Dire Wolf"))
        var activeVillian = villainArray[currentVillian]
        villianLabel.text = "\(activeVillian.name)"
        // Do any additional setup after loading the view.
        
        
       /* @IBAction func paladin(_ sender: UITapGestureRecognizer) {
            boolDict.updateValue(true, forKey: "paladin")
            boolDict.updateValue(false, forKey: "rouge")
            boolDict.updateValue(false, forKey: "ranger")
            boolDict.updateValue(false, forKey: "cleric")
            boolDict.updateValue(false, forKey: "mage")
        }
        
        @IBAction func rouge(_ sender: UITapGestureRecognizer) {
            boolDict.updateValue(false, forKey: "paladin")
            boolDict.updateValue(true, forKey: "rouge")
            boolDict.updateValue(false, forKey: "ranger")
            boolDict.updateValue(false, forKey: "cleric")
            boolDict.updateValue(false, forKey: "mage")
        }
        
        @IBAction func ranger(_ sender: UITapGestureRecognizer) {
            boolDict.updateValue(false, forKey: "paladin")
            boolDict.updateValue(false, forKey: "rouge")
            boolDict.updateValue(true, forKey: "ranger")
            boolDict.updateValue(false, forKey: "cleric")
            boolDict.updateValue(false, forKey: "mage")
        }
        
        @IBAction func cleric(_ sender: UITapGestureRecognizer) {
            boolDict.updateValue(false, forKey: "paladin")
            boolDict.updateValue(false, forKey: "rouge")
            boolDict.updateValue(false, forKey: "ranger")
            boolDict.updateValue(true, forKey: "cleric")
            boolDict.updateValue(false, forKey: "mage")
        }
        @IBAction func mage(_ sender: UITapGestureRecognizer) {
            boolDict.updateValue(false, forKey: "paladin")
            boolDict.updateValue(false, forKey: "rouge")
            boolDict.updateValue(false, forKey: "ranger")
            boolDict.updateValue(false, forKey: "cleric")
            boolDict.updateValue(true, forKey: "mage")
        }
        
        @IBAction func quickHealButton(_ sender: Any) {
            if boolDict["ranger"] == true{
                heroesArray[1].quickHeal()
            }
            else if boolDict["paladin"] == true{
                heroesArray[0].quickHeal()
            }
            else if boolDict["rouge"] == true {
                heroesArray[3].quickHeal()
            }
            else if boolDict["cleric"] == true{
                healerStats.quickHeal()
            }
            else if  boolDict["mage"] == true{
                heroesArray[2].quickHeal()
            }
        }
        
        @IBAction func groupHealButton(_ sender: Any) {
            for heroes in heroesArray
            {
                heroes.quickHeal()
            }
        }
        @IBAction func attack(_ sender: Any) {
            healerStats
        }
        
        @IBAction func buff(_ sender: Any) {
        }
        
        @IBAction func protect(_ sender: Any) {
            
        }
        @IBAction func revive(_ sender: Any) {
            
        }
        */
        
        
        //Running Logic
        timing()
        
        
        
    }
    
    @IBAction func fourCharacterAction(_ sender: UITapGestureRecognizer) {
    }
    
    
    
    func timing(){
        let timer = Timer.scheduledTimer(withTimeInterval: 0.001 , repeats: true) {
            
            timer in
            self.timeSince += Double(0.001)
            //print("tick")
            setVillian()
            deathSave()
            timeUpdate()
            canAttack()
            updateBars()
            
           //print("tock")
            print("\(self.timeSince)")
        }
    func timeUpdate()
        {
            for heroes in heroesArray
            {
                heroes.timeToAttack -= Double(timeSince)
                
            }
            activeVillian.timeToAttack -= Double(timeSince)
            timeSince = 0
        }
    
    func canAttack()
        {
            
            for heroes in heroesArray
            {
                if heroes.isDead == false
                {
                    if heroes.timeToAttack <= 0
                    {
                        print("hero can attack")
                        heroes.timeToAttack = heroes.attackRate
                        heroes.attack(v:activeVillian)
                    }
                }
                if activeVillian.timeToAttack <= 0
                {
                    print("villian can attack")
                    var chosenHero = Int.random(in: 0..<4)
                    activeVillian.timeToAttack = activeVillian.attackRate
                    activeVillian.attack(h: heroesArray[chosenHero])
                }
            }
        }
    
    func updateBars()
        {
            //Palidan pos 0 outlets 4, Ranger pos 1 outlets 1, Wizard pos 2 outlet 3, Rouge pos 3 outlet five
            
            var palidanHealthPrecent = 0.0
            var rangerHealthPrecent = 0.0
            var wizardHealthPrecent = 0.0
            var rougeHealthPrecent = 0.0
            var currentVillianHealth = 0.0
            
            //Health bar updates
            palidanHealthPrecent = Double(heroesArray[0].health/heroesArray[0].maxHealth)
            fourCharacterHealth.value = Float(palidanHealthPrecent)
            
            rangerHealthPrecent = Double(heroesArray[1].health/heroesArray[1].maxHealth)
            oneCharacterHealth.value = Float(rangerHealthPrecent)
            
            wizardHealthPrecent = Double(heroesArray[2].health/heroesArray[2].maxHealth)
            threeCharacterHealth.value = Float(wizardHealthPrecent)
            
            rougeHealthPrecent = Double(heroesArray[3].health/heroesArray[2].maxHealth)
            fiveCharacterHealth.value = Float(rougeHealthPrecent)
            
            currentVillianHealth = Double(activeVillian.health/activeVillian.maxHealth)
            villianHealth.value = Float(currentVillianHealth)
            
            //Attack bar updates
            
            var palidanAttackPrecent = 0.0
            var rangerAttackPrecent = 0.0
            var wizardAttackPrecent = 0.0
            var rougeAttackPrecent = 0.0
            var currentVillianAttack = 0.0
            
            palidanAttackPrecent = Double(heroesArray[0].timeToAttack/heroesArray[0].attackRate)
            fourCharacterAttack.value = Float(palidanAttackPrecent)
            
            rangerAttackPrecent = Double(heroesArray[1].timeToAttack/heroesArray[1].attackRate)
            oneCharacterAttack.value = Float(rangerAttackPrecent)
            
            wizardAttackPrecent = Double(heroesArray[2].timeToAttack/heroesArray[2].attackRate)
            threeCharacterAttack.value = Float(wizardAttackPrecent)
            
            rougeAttackPrecent = Double(heroesArray[3].timeToAttack/heroesArray[2].attackRate)
            fiveCharacterAttack.value = Float(rougeAttackPrecent)
            
            currentVillianAttack = Double(activeVillian.timeToAttack/activeVillian.attackRate)
            villianAttack.value = Float(currentVillianAttack)
            
        }
    func setVillian()
        {
            
            if activeVillian.isDead == true
            {
              print("new villian")
                activeVillian = villainArray[Int.random(in: 0..<5)]
                activeVillian.health = activeVillian.maxHealth
               villianLabel.text = "\(villainArray[currentVillian].name)"
                
            }
            
        }
    func deathSave()
        {
            for heroes in heroesArray
            {
                if heroes.health <= 0
                {
                    heroes.isDead = true
                }
                
            }
            if activeVillian.health <= 0
            {
                activeVillian.isDead = true
            }
            
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
