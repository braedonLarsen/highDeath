//
//  statsViewViewController.swift
//  highDeath
//
//  Created by Christian Bourquin on 12/15/22.
//

import UIKit

class statsViewViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        for heroes in AppData.gaggleOHeroes
        {
            var Ad = heroes.attackDamage
            var Ar = heroes.attackRate
            var H = heroes.health
            labelOutlet.text! += ("damage:\(Ad) attackrate:\(Ar) health:\(H)")
        }
        // Do any additional setup after loading the view.
    
    }
    override func viewDidAppear(_ animated: Bool) {
        
        for heroes in AppData.gaggleOHeroes
        {
            var Ad = heroes.attackDamage
            var Ar = heroes.attackRate
            var H = heroes.health
            labelOutlet.text! += ("damage:\(Ad) attackrate:\(Ar) health:\(H)")
        }
    }

    
}
