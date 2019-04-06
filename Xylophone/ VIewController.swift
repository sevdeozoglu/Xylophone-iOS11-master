//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//
// eğer try catch yapmazsak herhangi bir hatada bir sıkıntı olduğunu anlamaz ve sıkıntının da ne olduğunu anlamayız.ayrıca bir alttaki kodun //yapısında try ve catch ile kullanma zorunluluğu var.bunu commanda basıp koda tıklayarak görürsün (throw). hata olduğunda hata kodunu /         //siteye yazarak bulabilirsin

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        print(selectedSoundFileName)
        playSound()
        
        
    }
    
    func playSound(){
        
        
        let soundURL = Bundle.main.url(forResource : selectedSoundFileName, withExtension: "wav")
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
        catch{
            
            print(error)
            
        }
        audioPlayer.play()
        
        
    }
    
}

