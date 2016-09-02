//
//  ViewController.swift
//  DynamicSnap
//
//  Created by 杜杜兴 on 15/10/13.
//  Copyright © 2015年 杜杜兴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var dynamicAnimator:UIDynamicAnimator?
    var snap:UISnapBehavior?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.dynamicAnimator=UIDynamicAnimator(referenceView: self.view)
    }
    
    @IBAction func tapped(sender: UITapGestureRecognizer) {
        //获取点击位置
        let tap=sender as UITapGestureRecognizer
        let point=tap.locationInView(self.view)
        
        //删除之前的吸附，并添加一个新的
        //self.dynamicAnimator?.removeBehavior(self.snap!)
        self.snap=UISnapBehavior(item:self.imageView,snapToPoint:point)
        self.dynamicAnimator?.addBehavior(self.snap!)
    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

