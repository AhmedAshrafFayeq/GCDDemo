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
        //queueType()
        queuesWithQoS()
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

    func queuesWithQoS(){
        let queue1 = DispatchQueue(label: "com.fayeq.userIntiated", qos: .userInitiated)
        let queue2 = DispatchQueue(label: "com.fayeq.utility", qos: .utility)
        
        queue1.async {
            for i in 1..<20{
                print("😝", i)
            }
        }
        queue2.async {
            for i in 20..<40{
                print("👀", i)
            }
        }
    }
}

