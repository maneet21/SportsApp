
// Created by Maneet on 24/08/21.

//MARK:- Start
import UIKit

class FootballViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK:- Outlets
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var view1: UIView!
    
    //MARK:- Variable Declaration
    var footballLeagueNames = ["Premier League", "La Liga", "UEFA Champions League", "Bundesliga", "Serie A", "Ligue 1"]

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib1 = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView1.register(nib1, forCellWithReuseIdentifier: "cell")
        
        collectionView1.backgroundColor = UIColor.clear.withAlphaComponent(0)
        collectionView1.dataSource = self
        collectionView1.delegate = self
    }
    
    //MARK:- UICollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return footballLeagueNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.collectionViewCellLabel.text = footballLeagueNames[indexPath.item]
        
        if DeviceTraitStatus.current == .wRhR {
            cell.collectionViewCellLabel.font = cell.collectionViewCellLabel.font.withSize(25)
        }
    
        cell.layer.borderWidth = 1.5
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "FootballTeamsViewControllerID") as! FootballTeamsViewController
            nextViewController.modalPresentationStyle = .automatic
            nextViewController.leagueId = 39
            nextViewController.numberOfTeams = 19
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamTableView1.isHidden = true
        }
        
        if indexPath.item == 1 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "FootballTeamsViewControllerID") as! FootballTeamsViewController
            nextViewController.modalPresentationStyle = .automatic
            nextViewController.leagueId = 140
            nextViewController.numberOfTeams = 19
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamTableView1.isHidden = true
        }
        
        if indexPath.item == 2 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "FootballTeamsViewControllerID") as! FootballTeamsViewController
            nextViewController.modalPresentationStyle = .automatic
            nextViewController.leagueId = 2
        
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamTableView.isHidden = true
        }
        
        
        if indexPath.item == 3 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "FootballTeamsViewControllerID") as! FootballTeamsViewController
            nextViewController.modalPresentationStyle = .automatic
            nextViewController.leagueId = 78
            nextViewController.numberOfTeams = 17
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamTableView1.isHidden = true
        }
        
        if indexPath.item == 4 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "FootballTeamsViewControllerID") as! FootballTeamsViewController
            nextViewController.modalPresentationStyle = .automatic
            nextViewController.leagueId = 135
            nextViewController.numberOfTeams = 19
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamTableView1.isHidden = true
        }
        
        if indexPath.item == 5 {
            let storyboard1 = UIStoryboard(name: "SportsTeamsViewControllers", bundle: nil)
            let nextViewController = storyboard1.instantiateViewController(withIdentifier: "FootballTeamsViewControllerID") as! FootballTeamsViewController
            nextViewController.modalPresentationStyle = .automatic
            nextViewController.leagueId = 61
            nextViewController.numberOfTeams = 19
            
            self.present(nextViewController, animated: true, completion: nil)
            
            nextViewController.teamTableView1.isHidden = true
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

enum DeviceTraitStatus {
    ///IPAD and others: Width: Regular, Height: Regular
    case wRhR
    ///Any IPHONE Portrait Width: Compact, Height: Regular
    case wChR
    ///IPHONE Plus/Max Landscape Width: Regular, Height: Compact
    case wRhC
    ///IPHONE landscape Width: Compact, Height: Compact
    case wChC
    
    static var current:DeviceTraitStatus{
        
        switch (UIScreen.main.traitCollection.horizontalSizeClass, UIScreen.main.traitCollection.verticalSizeClass){
        
        case (UIUserInterfaceSizeClass.regular, UIUserInterfaceSizeClass.regular):
            return .wRhR
        case (UIUserInterfaceSizeClass.compact, UIUserInterfaceSizeClass.regular):
            return .wChR
        case (UIUserInterfaceSizeClass.regular, UIUserInterfaceSizeClass.compact):
            return .wRhC
        case (UIUserInterfaceSizeClass.compact, UIUserInterfaceSizeClass.compact):
            return .wChC
        default:
            return .wChR
        }
    }
}
