//
//  Character.swift
//  highDeath
//
//  Created by BRAEDON LARSEN on 12/2/22.
//

import Foundation

public class Character
{
    var attackRate: Double
    var health: Int
    var attackDamage: Int
    var Mana: Int
    
    
    
    
 //hero init
    init(aR: Double, h: Int, aD: Int )
    {
        attackRate = aR
        health = h
        attackDamage = aD
    }
    
//villian init
    init(VaR: Int, Vh: Int, VaD: Int )
    {
        attackRate = VaR
        health = Vh
        attackDamage = VaD
    }
    
//healer init
    init(Hh: Int, Hm: Int )
    {
        health = Hh
        Mana = Hm
    }
    
    
  
}
