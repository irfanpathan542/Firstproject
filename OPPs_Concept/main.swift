//
//  main.swift
//  OPPs_Concept
//
//  Created by iFlame on 08/03/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import Foundation

print("Hello, World!")

class details {
    let name : String! = "name"
    let address : String! = "address"
    var cellNumber : Int?
    var age : Int! = 10
}

class human : NSObject {

    let name : String!
    let address : String!
    var cellNumber : Int?
    var age : Int!
  
    var userInfo : details?
    
    //MARK:- Constructors
    required init(name: String, address : String) {
        self.name = name
        self.address = address
    }
    
    convenience init(name: String, address : String, age : Int) {
        self.init(name: name, address: address)
        //self.name = name
        //self.address = address
        self.age = age
    }
    

    //MARK:- Functions
    func walk(){
        print("Walk")
    }
    
    //nonnull && nulable
    
    func printDescription() {
        print("name ==>> \(name!)")
        print("address ==>> \(address!)")
        
        if cellNumber != nil && age > 18 && age < 30 && age != nil{
            
            print("cellNumber ==>> \(cellNumber!)")
            print("cellNumber ==>> \(age)")
        }
        
        if let mynum = cellNumber,
            let myAge = age, myAge > 18 && myAge < 30
            {
            print("cellNumber ==>> \(mynum)")
            print("myAge ==>> \(myAge)")
        }
    }
    
    func printDescription(message : String) {
        print("human ==>> \(message)")
        //self.printDescription()
    }
    
}

func == (lhs: human, rhs:human)->Bool{
    if lhs.name == rhs.name && lhs.address == rhs.address{
        return true
    }
    return false
}

func > (lhs: human, rhs:human)->Bool{
    if lhs.name.compare(rhs.name) == .orderedAscending {
        return true
    }
    return false
}

class student : human {

    var student_id : Int!
    var standard : Int!
    var subject : String!
    
    //MARK:- Constructors
    init(name: String, address : String, student_id : Int, standard : Int, subject : String) {
        super.init(name: name, address: address)
        self.student_id = student_id
        self.standard = standard
        self.subject = subject
    }
    
    required init(name: String, address: String) {
        super.init(name: name, address: address)
    }
    
    convenience init(name: String, address : String, age : Int) {
        self.init(name: name, address: address)
        self.age = age
    }
    
    
    //override init(name: String, address : String, age : Int) {
    //    super.init(name: name, address: address)
    //
    //}
    
    
    func result() -> String {
        return "pass"
    }
    
    func study(){
        print(" Study")
    }
    
    override func printDescription() {
        print("\n\n")
        print("student_id ==>> \(student_id)")
        print("standard ==>> \(standard)")
        print("subject ==>> \(subject)")
        print("\n\n")
        super.printDescription()
    }
    override func printDescription(message: String) {
        print("student ==>> \(message)")
        super.printDescription(message: message)

    }
}

class employee : human {
    
    var employee_id : Int!
    var jobName : String?
    
    func doAJob(){
        print(" JOB")
    }
}

//let object = student(name: "name", address: "address description")
let object = student.init(name: "Bansi", address: "Ahmedabad",student_id: 9, standard: 9, subject: "English")

let objectEmp = employee.init(name: "Bansi", address: "adsadasda")

let object1 = student.init(name: "Sunil", address: "Ahmedabad",student_id: 9, standard: 9, subject: "English")
let objectEmp1 = employee.init(name: "Irphan", address: "adsadasda")
let object2 = student.init(name: "Shailesh", address: "Ahmedabad",student_id: 9, standard: 9, subject: "English")
let objectEmp2 = employee.init(name: "Rathod", address: "adsadasda")

let array : [human] = [object, objectEmp, object1, objectEmp1, object2, objectEmp2]

let sortedHumans = array.sorted(by: {return $0 > $1})

for i in 0..<sortedHumans.count{
    print("name ==> \(sortedHumans[i].name)")
}

print("==>> \((array as NSObject).value(forKeyPath: "name"))")





print("==>> \(object)")
print("==>> \(objectEmp)")

if objectEmp == object{
    print("Same Human")
}
else{
    print("Different Person")
}

object.cellNumber = 9988998899
object.age = 25




object.printDescription()
object.printDescription(message: "Custom Message")






////let object = student(name: "name", address: "address description")
////object.name = "Hello"
//
////HAS A relation
//print("object.name ==>> \(object.name)")
//
////IS A relation
//let objHuman : human = object



struct car {
    var name : String?
    
    mutating func changeName(newName:String){
        name = newName
    }
}

print("hello world")


