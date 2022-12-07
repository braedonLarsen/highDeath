//
//  Character.swift
//  highDeath
//
//  Created by BRAEDON LARSEN on 12/2/22.
//

import Foundation

public class heroes
{
    var attackRate: Double
    var health: Int
    var attackDamage: Int
 //hero init
    init(aR: Double, h: Int, aD: Int )
    {
        attackRate = aR
        health = h
        attackDamage = aD
    }
}
public class villian
{
    var attackRate: Double
    var health: Int
    var attackDamage: Int
    
    //villian init
        init(VaR: Double, Vh: Int, VaD: Int )
        {
            attackRate = VaR
            health = Vh
            attackDamage = VaD
        }
}
public class healer
{var Mana: Int
    var health: Int
    //healer init
    init(Hh: Int, Hm: Int )
    {
        health = Hh
        Mana = Hm
    }
    
}
