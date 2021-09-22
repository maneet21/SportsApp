
// Created by Maneet on 31/08/21.

//MARK:- Start
import UIKit
import JHSpinner

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    //MARK:- Outlets
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var setingsTableView: UITableView!
    
    //MARK:- Variables Declaration
    var settingsOptions = ["About", "Check For Update", "Privacy Policy", "Support"]
    var textForDetails = ["This application tells information about sports events",
                          "Checking for update...",
                          "All content in this app is copyright protected",
                          "Contact us at xyz@gmail.com"]

    //MARK:- Action
    @IBAction func backButtonTapped(_ button: UIButton) {
        
        // Transition Animation
        let transition: CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromLeft
        
        self.view.window?.layer.add(transition, forKey: nil)
        self.dismiss(animated: false, completion: nil)
    }

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setingsTableView.delegate = self
        setingsTableView.dataSource = self
        
        let nib = UINib(nibName: "SettingsTableViewCell", bundle: nil)
        self.setingsTableView.register(nib, forCellReuseIdentifier: "tableCell")
    }

    //MARK:- Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! SettingsTableViewCell
        cell.settingsTableViewCellLabel.text = settingsOptions[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard1 = UIStoryboard(name: "SettingsViewController", bundle: nil)
        
        let viewController = storyboard1.instantiateViewController(withIdentifier: "SettingsDetailViewController1") as! SettingsDetailViewController
    
        viewController.modalPresentationStyle = .fullScreen
        
        // Transition Animation
        let transition: CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromRight
        
        self.view.window?.layer.add(transition, forKey: nil)
        self.present(viewController, animated: false, completion: nil)
        
        viewController.settingsDetailViewControllerTextView!.text = textForDetails[indexPath.item]

        if indexPath.row == 1 {
            let spinner = JHSpinnerView.showOnView(view, spinnerColor: UIColor.red, overlay: .roundedSquare, overlayColor: UIColor.black.withAlphaComponent(0.6))
        
            viewController.view.addSubview(spinner)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                spinner.dismiss()
                
                viewController.settingsDetailViewControllerTextView.text = "Update found"
                
                viewController.updateButton.isHidden = false
            }
        }
        
        if indexPath.row == 3 {
            viewController.greenThemeLabel.isHidden = false
            viewController.blueThemeLabel.isHidden = false
            viewController.blackAndWhiteThemeLabel.isHidden = false
            
            viewController.greenThemeSwitch.isHidden = false
            viewController.greenThemeSwitch.isOn = false
            
            viewController.blueThemeSwitch.isHidden = false
            viewController.blueThemeSwitch.isOn = true
            
            viewController.blackAndWhiteThemeSwitch.isHidden = false
            viewController.blackAndWhiteThemeSwitch.isOn = false
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor = UIColor.systemBlue
    }

    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor = UIColor.clear.withAlphaComponent(0)
    }
}
