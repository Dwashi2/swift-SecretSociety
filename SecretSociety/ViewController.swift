//
//  ViewController.swift
//  SecretSociety
//
//  Created by Daniel Washington Ignacio on 31/05/21.
//

/*
 A group of friends have decided to start a secret society. The name will be the first letter of each of their names, sorted in alphabetical order.

 Create a function that takes in an array of names and return's the name of the secret society.

 Examples

 societyName(["Adam", "Sarah", "Malcolm"]) ➞ "AMS"

 societyName(["Harry", "Newt", "Luna", "Cho"]) ➞ "CHLN"

 societyName(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"]) ➞ "CJMPRR"
 Notes

 The secret society's name should be entirely uppercased.
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.societyName(["Adam", "Sarah", "Malcolm"]))
        print(self.societyName(["Harry", "Newt", "Luna", "Cho"]))
        print(self.societyName(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"]))
    }

    func societyName(_ friends: [String]) -> String {
        var result: [Character] = []
        for n in friends{
            for m in n{
                if m.isUppercase{
                    result.append(m)
                }
               
            }
        }
        return String(result.sorted())
    }

}

