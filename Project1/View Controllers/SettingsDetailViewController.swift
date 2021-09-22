
// Created by Maneet on 31/08/21.

//MARK:- Start
import UIKit
import JHSpinner

class SettingsDetailViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var backButton1: UIButton!
    @IBOutlet weak var settingsDetailViewControllerTextView: UITextView!
    @IBOutlet weak var updateButton: UIButton!
    @IBOutlet weak var updateProgressView: UIProgressView!
    @IBOutlet weak var updatePercentageLabel: UILabel!
    @IBOutlet weak var installUpdateButton: UIButton!
    @IBOutlet weak var greenThemeLabel: UILabel!
    @IBOutlet weak var blueThemeLabel: UILabel!
    @IBOutlet weak var blackAndWhiteThemeLabel: UILabel!
    @IBOutlet weak var greenThemeSwitch: UISwitch!
    @IBOutlet weak var blueThemeSwitch: UISwitch!
    @IBOutlet weak var blackAndWhiteThemeSwitch: UISwitch!
    
    //MARK:- Actions
    @IBAction func backButton1Tapped(_ button: UIButton) {
        
        // Transition Animation
        let transition: CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromLeft
        
        self.view.window?.layer.add(transition, forKey: nil)
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func updateButtonTapped(_ button: UIButton) {
        settingsDetailViewControllerTextView.text = "Update Requested"
        updateButton.isHidden = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.settingsDetailViewControllerTextView.text = ""
            self.updateProgressView.isHidden = false
            self.updatePercentageLabel.isHidden = false
            self.updateProgressView.progress = 0
            
            for x in 0...100 {
                DispatchQueue.main.asyncAfter(deadline: .now()+(Double(x)*0.25), execute: {
                    self.updateProgressView.setProgress(Float(x)/100, animated: true)
                    self.updatePercentageLabel.text = String(Int(self.updateProgressView.progress * 100)) + "%"
                    
                    if x == 100 {
                        self.settingsDetailViewControllerTextView.text = "Update Downloaded"
                        self.installUpdateButton.isHidden = false
                    }
                })
            }
        }
    }
    
    @IBAction func greenThemeSwitchValueChanged(_ sender: UISwitch) {
    }
    
    @IBAction func blueThemeSwitchValueChanged(_ sender: UISwitch) {
    }
    
    @IBAction func blackAndWhiteThemeSwitchValueChanged(_ sender: UISwitch) {
    }
    
    @IBAction func installUpdateButtonTapped(_ button: UIButton) {
    }
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
