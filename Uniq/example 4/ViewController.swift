//
//  ViewController.swift
//  example 4
//
//  Created by TrackEnsure on 2020-02-13.
//  Copyright © 2020 Eugene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var listLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func check(_ sender: UIButton) {
        let mass : [Int] = [1,2,3,4,5,6,7,8,9,0,1,4,8,3,2,1,7,9,7,5,3,2,7,9,0,4,44,66,87,90,546,345,56,7,78]
        let newmass = uniq(source: mass)
        for num in newmass{
            listLabel.text=listLabel.text! + "\(num) ,"
        }
        listLabel.text?.removeLast()
    }
    private func uniq<S: Sequence, T: Hashable> (source: S) -> [T] where S.Iterator.Element == T {
        var buffer = [T]() // возвращаемый массив
        for elem in source {
            if !buffer.contains(elem) {
                buffer.append(elem)
            }
        }
        return buffer
    }
    
}

