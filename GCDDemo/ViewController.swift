//
//  ViewController.swift
//  GCDDemo
//
//  Created by Ahmed Fayeq on 28/11/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        queueType()
    }

    func queueType(){
        //by default it's serial queue without attribute
        let queue = DispatchQueue(label: "com.fayeq.main", attributes: .concurrent)
        queue.async {
            for i in 100..<110{
                print("👀", i)
            }
        }
        
        queue.async {
            for i in 200..<210{
                print("😝", i)
            }
        }
    }

}

