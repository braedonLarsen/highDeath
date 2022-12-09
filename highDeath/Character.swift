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
    var timeToAttack: Double
 //hero init
    init(aR: Double, h: Int, aD: Int )
    {
        attackRate = aR
        health = h
        attackDamage = aD
        timeToAttack = attackRate
    }
    func getHealth() -> Int
    {
        return health
    }
    func timeOfAttack() -> Double
    {
        return timeToAttack
    }
    func updateTime(d:Double)
    {
        timeToAttack -= d
    }
    func takeDamage(d:Int)
    {
        health -= d
    }
    func attack(v:villian)
    {
        v.takeDamage(d:attackDamage)
    }
}
public class villian
{
    var attackRate: Double
    var health: Int
    var attackDamage: Int
    var timeToAttack: Double
    
    //villian init
        init(VaR: Double, Vh: Int, VaD: Int )
        {
            attackRate = VaR
            health = Vh
            attackDamage = VaD
            timeToAttack = attackRate
        }
    func attack(h:heroes)
    {
        h.takeDamage(d:attackDamage)
    }
    func timeOfAttack() -> Double
    {
        return timeToAttack
    }
    func updateTime(d:Double)
    {
        timeToAttack -= d
    }
    func getHealth() -> Int
    {
       return health
    }
    func takeDamage(d:Int)
    {
        health -= d
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
