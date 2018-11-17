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
    var timer = Timer()
    var isAnimating = false
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var animateLabel: UILabel!
    @IBOutlet weak var nextBtnText: UIButton!
    
    @objc func animate(){
        imgView.image = UIImage(named:"giphy-\(counter)")
        
        counter += 1
        
        if counter == 10{
            
            counter = 0
            
        }
    }
   
    @IBAction func nextBtn(_ sender: UIButton) {
        
        if isAnimating {
            timer.invalidate()
            // [] = empty array
            nextBtnText.setTitle("Start his masterpiece ", for: [])
            isAnimating = false
        } else {
            
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
           
            nextBtnText.setTitle("Stop his masterpiece", for: [])
            
            isAnimating = true
        }
    
    }
   
    @IBAction func FadeIn(_ sender: Any) {
        animateLabel.text = "Fading In"
       
        imgView.alpha = 0
       
        UIView.animate(withDuration: 1, animations: {
            self.imgView.alpha = 1
        })
    }
    
    
    @IBAction func SlideIn(_ sender: Any) {
        animateLabel.text = "Sliding In"
       
        imgView.center = CGPoint(x:imgView.center.x - 500 , y: imgView.center.y)
       
        UIView.animate(withDuration:2) {
           self.imgView.center = CGPoint(x: self.imgView.center.x + 500, y: self.imgView.center.y)
        }
    }
    
    @IBAction func Grow(_ sender: Any) {
        animateLabel.text = "Grow"
       
        imgView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
      
        UIView.animate(withDuration: 1){
            self.imgView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
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

