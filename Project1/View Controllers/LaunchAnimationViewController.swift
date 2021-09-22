
// Created by Maneet on 27/08/21.

//MARK:- Start
import UIKit

class LaunchAnimationViewController: UIViewController {
    
    //MARK:- ImageView Object
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "LaunchImage")
        return imageView
    }()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
            self.animate()
        })
    }
    
    //MARK:- User-Defined Function
    private func animate() {
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.height - size
            
            self.imageView.frame = CGRect(x: -(diffX/2),
                                          y: diffY/2,
                                          width: size,
                                          height: size)
        })
        
        UIView.animate(withDuration: 1.5, animations: {
            self.imageView.alpha = 0
        }, completion: { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.3, execute: {
                    let viewController1 = self.storyboard?.instantiateViewController(withIdentifier: "homeViewController1") as! HomeViewController
                    
                    viewController1.modalTransitionStyle = .crossDissolve
                    viewController1.modalPresentationStyle = .fullScreen
                    
                    self.present(viewController1, animated: true)
                })
            }
        })
    }
}
