//
//  ViewController.swift
//  Gravity
//
//  Created by Terry on 1/21/16.
//  Copyright © 2016 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var dynamicAnimator = UIDynamicAnimator()
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        let gravityBehavior = UIGravityBehavior(items: [self.imageView])
        dynamicAnimator.addBehavior(gravityBehavior)
        
        let collisionBehavior = UICollisionBehavior(items: [self.imageView])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        
        dynamicAnimator.addBehavior(collisionBehavior)
        
        
    }
    
    
    

}

