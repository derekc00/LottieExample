//
//  ViewController.swift
//  LottiePracticev3
//
//  Created by Derek Chang on 3/8/20.
//  Copyright © 2020 Derek Chang. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var animationContainer: UIView!
    let mailAnimationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get reference to the json
        guard let myFile = Bundle.main.path(forResource: "Mail", ofType: "json")
        else {
            print("error getting json")
            return
        }
        
        mailAnimationView.animation = Animation.filepath(myFile)
        
        //if this is true, there will be autolayout conflicts
        mailAnimationView.translatesAutoresizingMaskIntoConstraints = false
        
        //set the animation to loop
        mailAnimationView.loopMode = .loop
        
        //add to animation into container
        animationContainer.addSubview(mailAnimationView)
        
        //Pin Animation(childView) to edges of container(parentView)
        NSLayoutConstraint.activate([
            mailAnimationView.leadingAnchor.constraint(equalTo: animationContainer.leadingAnchor),
            mailAnimationView.trailingAnchor.constraint(equalTo: animationContainer.trailingAnchor),
            mailAnimationView.topAnchor.constraint(equalTo: animationContainer.topAnchor),
            mailAnimationView.bottomAnchor.constraint(equalTo: animationContainer.bottomAnchor)
        ])

        
        mailAnimationView.play()
    }


}

