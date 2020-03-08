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
    let starAnimationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get reference to the json
        guard let myFile = Bundle.main.path(forResource: "Mail", ofType: "json")
        else {
            print("error getting json")
            return
        }
        
        starAnimationView.animation = Animation.filepath(myFile)
        
        //if this is true, there will be autolayout conflicts
        starAnimationView.translatesAutoresizingMaskIntoConstraints = false
        
        //set the animation to loop
        starAnimationView.loopMode = .loop
        
        //add to animation into container
        animationContainer.addSubview(starAnimationView)
        
        //Pin Animation(childView) to edges of container(parentView)
        NSLayoutConstraint.activate([
            starAnimationView.leadingAnchor.constraint(equalTo: animationContainer.leadingAnchor),
            starAnimationView.trailingAnchor.constraint(equalTo: animationContainer.trailingAnchor),
            starAnimationView.topAnchor.constraint(equalTo: animationContainer.topAnchor),
            starAnimationView.bottomAnchor.constraint(equalTo: animationContainer.bottomAnchor)
        ])

        
        starAnimationView.play()
    }


}

