
// Created by Maneet on 22/08/21.

//MARK:- Start
import UIKit
import WebKit

class HomeViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet var projectName: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    @IBOutlet weak var containerView3: UIView!
    
    @IBOutlet weak var mainHomeView: UIView!
    
    //MARK:- Actions
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            containerView1.isHidden = false
            containerView2.isHidden = true
            containerView3.isHidden = true
        case 1:
            containerView1.isHidden = true
            containerView2.isHidden = false
            containerView3.isHidden = true
        case 2:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = false
        default:
            break
        }
    }

    @IBAction func settingsButtonTapped(_ button: UIButton) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "SettingsViewController1") as! SettingsViewController
        
        viewController.modalPresentationStyle = .fullScreen
        let transition: CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromRight
        
        self.view.window?.layer.add(transition, forKey: nil)
        self.present(viewController, animated: false, completion: nil)
    }
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        containerView1.isHidden = false
        containerView2.isHidden = true
        containerView3.isHidden = true
    }
}



