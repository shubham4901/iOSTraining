//func : [Previous](@previous)
func 
func import Foundation
func import os
func 
func class Hackathon {
func     var year = 2020
func     var hackathonName: String = "SmartCity Hackathon"
func     var topics = [
func     
func         "t001":"Smart Library",
func         "t002":"Track Bus",
func         "t003":"Donate It",
func         "t004":"It's Easy to complaint"
func     ]
func     
func     
func     func getAllTopics() -> [String:String] {
func         for (key,value) in topics {
func             print("\(key) : \(value)")
func         }
func         return topics
func     }
func }
func class College : Hackathon {
func 
func     var collegeName: String
func     var numberofGroups: Int
func     
func     
func }
func class StudentGroups : College {
func     
func }
func class Students : StudentGroups {
func     
func }
