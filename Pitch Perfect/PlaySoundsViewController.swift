//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Mohit Tater on 29/03/15.
//  Copyright (c) 2015 Mohit. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
//            let fileUrl =  receivedAudio.filePathUrl
//            
//        }
//        else{
//            println("file path not found \n")
//        }
//        
        // Do any additional setup after loading the view.
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func snaleSoundPlayer(sender: UIButton) {
        playSound(0.5)
        }
    
    @IBAction func rabitSpeedPlayer(sender: UIButton) {
        playSound(2.0)
        }
    @IBAction func stopSoundPlay(sender: UIButton) {
        audioPlayer.stop();
    }
    
    func playSound(playSpeed:Float) {
        audioPlayer.stop()
        audioPlayer.rate = playSpeed
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
}
