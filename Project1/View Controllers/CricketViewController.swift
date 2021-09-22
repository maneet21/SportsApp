
// Created by Maneet on 24/08/21.

//MARK:- Start
import UIKit

class CricketViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK:- Outlet
    @IBOutlet weak var collectionView3: UICollectionView!
    
    //MARK:- Variable Declaration
    var cricketLeagueNames = ["Indian Premier League", "T20 Blast", "The Hundred", "Caribbean Premier League"]
 
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib3 = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView3.register(nib3, forCellWithReuseIdentifier: "cell")
        
        collectionView3.backgroundColor = UIColor.clear.withAlphaComponent(0)
        collectionView3.delegate = self
        collectionView3.dataSource = self
    }
    
    //MARK:- UICollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cricketLeagueNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.collectionViewCellLabel.text = cricketLeagueNames[indexPath.item]
        
        if DeviceTraitStatus.current == .wRhR {
            cell.collectionViewCellLabel.font = cell.collectionViewCellLabel.font.withSize(25)
        }
        
        cell.layer.borderWidth = 1.5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "CricketTeamsViewControllerID") as! CricketTeamsViewController
    
            nextViewController.tournamentId = 2472
            nextViewController.numberOfGroups = 0
            nextViewController.numberOfTeams = 7
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamsTableView1.isHidden = true
            nextViewController.teamsTableView2.isHidden = true
        }
        
        if indexPath.item == 1 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "CricketTeamsViewControllerID") as! CricketTeamsViewController
    
            nextViewController.tournamentId = 15574
            nextViewController.numberOfGroups = 1
            nextViewController.numberOfTeams = 8
            
            self.present(nextViewController, animated: true, completion: nil)
     
            nextViewController.teamsTableView.isHidden = true
            nextViewController.teamsTableView1.isHidden = true
        }
        
        if indexPath.item == 2 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "CricketTeamsViewControllerID") as! CricketTeamsViewController

          //  nextViewController.numberOfTeams = 7
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamsTableView.isHidden = true
            nextViewController.teamsTableView2.isHidden = true
        }
        
        if indexPath.item == 3 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "CricketTeamsViewControllerID") as! CricketTeamsViewController
    
            nextViewController.tournamentId = 16628
            nextViewController.numberOfGroups = 0
            nextViewController.numberOfTeams = 5
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamsTableView1.isHidden = true
            nextViewController.teamsTableView2.isHidden = true
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
