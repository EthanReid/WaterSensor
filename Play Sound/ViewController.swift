//
//  Play_SoundTests.swift
//  Play SoundTests
//
//  Created by Budi Irawan on 1/10/16.
//  Copyright (c) 2016 Ethan Reid. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playSound(sender: UIButton) {
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("music", ofType: "mp3")
        
        if audioFilePath != nil {
        
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
        
            audioPlayer = try? AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()

        } else {
            print("audio file is not found")
        }
    }
}

