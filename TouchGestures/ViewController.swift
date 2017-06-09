//
//  ViewController.swift
//  TouchGestures
//
//  Created by David Winnicki on 2017-06-09.
//  Copyright © 2017 Winnicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelGestureName: UILabel!
    
    @IBOutlet var singleTapRecognizer: UITapGestureRecognizer!
    
    @IBOutlet var doubleTapRecognizer: UITapGestureRecognizer!

    @IBAction func userSingleTap(_ sender: UITapGestureRecognizer) {
        showGestureName(name: "Single Tap")
    }
    
    @IBAction func userDoubleTap(_ sender: UITapGestureRecognizer) {
        showGestureName(name: "Double Tap")
    }
    
    @IBAction func userPinched(_ sender: UIPinchGestureRecognizer) {
        showGestureName(name: "Pinch")
    }
    
    @IBAction func userSwiped(_ sender: UISwipeGestureRecognizer) {
        showGestureName(name: "Swipe")
    }
    
    @IBAction func userRotated(_ sender: UIRotationGestureRecognizer) {
        showGestureName(name: "Rotation")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singleTapRecognizer.require(toFail: doubleTapRecognizer)
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func showGestureName(name: String) {
        labelGestureName.text = name
        
        UIView.animate(withDuration: 1.0,
                       animations: { self.labelGestureName.alpha = 1.0 },
                       completion: { _ in UIView.animate(withDuration: 1.0, animations: { self.labelGestureName.alpha = 0 })
        })
    }
}

