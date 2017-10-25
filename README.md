# AudioKitEx
AudioKit Tutorial &amp; Examples for Swift intermediate Study



## 0. Install
Download [AudioKit-iOS-4.0.2.zip](http://github.com/audiokit/AudioKit/releases/download/v4.0.2/AudioKit-iOS-4.0.2.zip) from http://audiokit.io/downloads , unzip file

## 1. Simple Example Tutorial
### 1.1 Generate Project 
<img width="400" alt="2017-10-25 12 27 01" src="https://user-images.githubusercontent.com/11023497/31980812-1fc08496-b98a-11e7-9a16-f67db15f94bc.png">

### 1.2 Add AudioKit FrameWork
- Project - General - Embedded Binaries - Add "AudioKit.frameWork" File
<img width="600" alt="2017-10-25 1 43 07" src="https://user-images.githubusercontent.com/11023497/31980876-77041754-b98a-11e7-9b34-b70313c529ea.png">


<img width="600" alt="2017-10-25 12 28 59" src="https://user-images.githubusercontent.com/11023497/31980953-f9413684-b98a-11e7-8a77-7fa522b13c63.png">


### 1.3 Example Codes

<pre><code>
import UIKit
import AudioKit

class ViewController: UIViewController {
    
    let oscillator = AKOscillator() //가장 초보적인 형태의 음향 신디사이저라고 할 수 있는 오실레이터(진동자)
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        oscillator.amplitude = 0.5 //진폭
        AudioKit.output = oscillator
      
        
        
    }
    @IBAction func changeFrequency(_ sender: UISlider) {
        
        oscillator.frequency = Double(sender.value * 880.0)
    }
    
    @IBAction func btnStart(_ sender: Any) {
        
        AudioKit.start()
        oscillator.start()
        
    }

    @IBAction func btnStop(_ sender: Any) {
        
        AudioKit.stop()
        oscillator.stop()
    }
    

}

</code></pre>
