//
//  ViewController.swift
//  Animation
//
//  Created by Denny Feng on 11/14/18.
//  Copyright © 2018 Denny Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1;
  
    @IBOutlet weak var imgView: UIImageView!
    
    
    @IBAction func nextBtn(_ sender: UIButton) {
        imgView.image = UIImage(named:"giphy-\(counter)")
       
        counter += 1
        
        if counter == 10{
            
            counter = 0
        
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

