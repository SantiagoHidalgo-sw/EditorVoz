

import UIKit

class ViewController: UIViewController {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dejarGrabar.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("se llamo a la funcion")
    }

    @IBOutlet weak var etiquetaGrabado: UILabel!
    @IBOutlet weak var dejarGrabar: UIButton!
    @IBOutlet weak var grabarAudio: UIButton!
    
    
    
    @IBAction func grabarAudio(_ sender: Any) {
        etiquetaGrabado.text = "Grabando.."
        dejarGrabar.isEnabled = true
        grabarAudio.isEnabled = false
    }
    
    @IBAction func dejarGrabar(_ sender: Any) {
        etiquetaGrabado.text = "Presione para grabar"
        dejarGrabar.isEnabled = false
        grabarAudio.isEnabled = true
        
    }
    
}

