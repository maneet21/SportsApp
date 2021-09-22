
// Created by Maneet on 24/08/21.

//MARK:- Start
import UIKit

class RacingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK:- Outlet
    @IBOutlet weak var collectionView2: UICollectionView!
    
    //MARK:- Variable Declaration
    var competitionNames = ["Formula 1", "Formula E", "Nascar", "MotoGP"]
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib2 = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView2.register(nib2, forCellWithReuseIdentifier: "cell")
        
        collectionView2.backgroundColor = UIColor.clear.withAlphaComponent(0)
        collectionView2.dataSource = self
        collectionView2.delegate = self
    }
    
    //MARK:- UICollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return competitionNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.collectionViewCellLabel.text = competitionNames[indexPath.item]
        
        if DeviceTraitStatus.current == .wRhR {
            cell.collectionViewCellLabel.font = cell.collectionViewCellLabel.font.withSize(25)
        }
        
        cell.layer.borderWidth = 1.5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "RacingTeamsViewControllerID") as! RacingTeamsViewController
        
            nextViewController.competitionName = "formula1"
            nextViewController.stage = "547803"
            nextViewController.apiKey = "c8bfruxx9wxu8j29zc7dt32t"
        
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamsTableView1.isHidden = true
        }
        
        if indexPath.item == 1 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "RacingTeamsViewControllerID") as! RacingTeamsViewController
            
            nextViewController.competitionName = "formulae"
            nextViewController.stage = "621117"
            nextViewController.apiKey = "42djvwc5v8gbvwassbnw3e3j"
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamsTableView1.isHidden = true
        }
        
        if indexPath.item == 2 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "RacingTeamsViewControllerID") as! RacingTeamsViewController
            
            nextViewController.apiKey = "hnc4ynuckugpaywbhz4ntv2r"
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamsTableView.isHidden = true
        }
        
        if indexPath.item == 3 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "RacingTeamsViewControllerID") as! RacingTeamsViewController
            
            nextViewController.competitionName = "motogp"
            nextViewController.stage = "555063"
            nextViewController.apiKey = "rs5quqjvhxurc5mewf54svp6"
        
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamsTableView1.isHidden = true
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if DeviceTraitStatus.current == .wRhR {
            let itemWidth: CGFloat = 300.0
            let itemHeight: CGFloat = 300.0
            return CGSize(width: itemWidth, height: itemHeight)
        }
        
        if DeviceTraitStatus.current == .wChC {
            let itemWidth: CGFloat = 135.0
            let itemHeight: CGFloat = 135.0
            return CGSize(width: itemWidth, height: itemHeight)
        }
        
        if DeviceTraitStatus.current == .wRhC {
            let itemWidth: CGFloat = 135.0
            let itemHeight: CGFloat = 135.0
            return CGSize(width: itemWidth, height: itemHeight)
        }
        
        if DeviceTraitStatus.current == .wChR {
            let itemWidth: CGFloat = 150.0
            let itemHeight: CGFloat = 150.0
            return CGSize(width: itemWidth, height: itemHeight)
        }
        return CGSize()
    }
    
    // change background color when user touches cell
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.blue
    }
    
    // change background color back when user releases touch
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.clear.withAlphaComponent(0)
    }
}
