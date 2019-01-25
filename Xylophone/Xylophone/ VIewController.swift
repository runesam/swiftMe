import UIKit
import AVFoundation

var objPlayer: AVAudioPlayer?

func playAudioFile(_ soundName: String) {
    guard let url = Bundle.main.url(
        forResource: soundName,
        withExtension: "wav"
    ) else {
        return print("file dones't exist");
    }
    
    do {
        try objPlayer = AVAudioPlayer(contentsOf: url)
    } catch let error {
        print(error.localizedDescription)
    }

    objPlayer?.play()
}

class ViewController: UIViewController {
    @IBAction func notePressed(_ sender: UIButton) {
        playAudioFile("note\(sender.tag)");
    }
}

