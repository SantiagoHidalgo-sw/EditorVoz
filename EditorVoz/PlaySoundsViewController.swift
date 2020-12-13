

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    enum ButtonType: Int { case fast = 0, slow }
    
    @IBOutlet weak var botonRapido: UIButton!
    @IBOutlet weak var botonLento: UIButton!
    @IBOutlet weak var botonParar: UIButton!

    
    @IBAction func reproducirSonido (_sender: UIButton){
        switch(ButtonType(rawValue: _sender.tag)!) {
           case .fast:
               playSound(rate: 1.5)
           case .slow:
               playSound(rate: 0.5)
           
           }

           configureUI(.playing)
    }
    @IBAction func pararSonido (_sender: UIButton){
        print("manteca")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configureUI(.notPlaying)
    }




}
