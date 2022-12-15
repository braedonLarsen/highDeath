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
    var maxHealth: Double
    var health: Double
    var attackDamage: Int
    var timeToAttack: Double
    var isDead: Bool
    
 //hero init
    init(aR: Double, h: Double, aD: Int )
    {
        attackRate = aR
        maxHealth = h
        health = h
        attackDamage = aD
        timeToAttack = attackRate
        isDead = false
    }
    func getHealth() -> Double
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
        health -= Double(d)
    }
    func attack(v:villian)
    {
        v.takeDamage(d:attackDamage)
    }
    func quickHeal(){
        health += 100
    }
    func atkBuff(){
        attackDamage += 5
    }
}
public class villian
{
    var attackRate: Double
    var health: Double
    var maxHealth: Double
    var attackDamage: Int
    var timeToAttack: Double
    var name: String
    var isDead: Bool
    
    //villian init
    init(VaR: Double, Vh: Double, VaD: Int ,n: String)
        {
            attackRate = VaR
            health = Vh
            maxHealth = Vh
            attackDamage = VaD
            timeToAttack = attackRate
            name = n
            isDead = false 
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
    func getHealth() -> Double
    {
       return health
    }
    func takeDamage(d:Int)
    {
        health -= Double(d)
    }
    func quickHeal(){
        
    }
    func groupHeal(){
        
    }
    func protection(){
        
    }
    func revive(){
        
    }
    func atkBuff(){
        
    }
    func attack(){
        
    }
}
public class healer
{var Mana: Int
    var health: Int
    var attack: Int
    //healer init
    init(Hh: Int, Hm: Int,At:Int )
    {
        health = Hh
        Mana = Hm
        attack = At
    }
    func quickHeal(){
        health += 100
    }
    
    func attack(v:villian)
    {
        v.health -= Double(attack)
    }
    func atkBuff(){
        attack += 5
    }
    
}
