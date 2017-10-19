//
//  ViewController.swift
//  educational music
//
//  Created by Celine Hamza on 9/25/17.
//  Copyright © 2017 Celine Hamza. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       label.text = "welcome!!!!!!!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        do {
        audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Funky_Sting", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        // Dispose of any resources that can be recreated.
        }
        catch {
            print(error)
        }
    }


  
    @IBAction func pausebutton(_ sender: Any) {
        
        print (" pausebutton has been pressed!!")
    }
  
    

    @IBAction func playbutton(_ sender: Any) {
        print ("playbutton has been pressed!!! :)")
    }
}


