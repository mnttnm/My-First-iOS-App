//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Mohit Tater on 28/03/15.
//  Copyright (c) 2015 Mohit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordingInProgress: UILabel!

    @IBOutlet weak var recordingStop: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func RecordAudio(sender: UIButton) {
        //TODO: show some text for recording progress
        //TODO: Actually strat recording
        recordingInProgress.hidden = false;
    }
    
    
    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true;
    }
    
    
    
    
    
    
}

