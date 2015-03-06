//
//  ViewController.swift
//  SoundShaker
//
//  Created by Rommel Rico on 3/5/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    var files = ["The+Clash+Spanish+Bombs", "Little+Dragon+-+Shuffle+A+Dream+[Album+Version]", "The+Hives", "Mind+Your+Manners+(Official+Audio)+-+Pearl+Jam", "Unknown+Mortal+Orchestra-+Bicycle", "Lorde+-+Royals+(US+Version)"]
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.subtype == UIEventSubtype.MotionShake {
            let randomNumber = Int(arc4random_uniform(UInt32(files.count)))
            let fileLocation = NSString(string: NSBundle.mainBundle().pathForResource(files[randomNumber], ofType: "mp3")!)
            var error:NSError? = nil
            player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLocation), error: &error)
            player.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

