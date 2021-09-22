
// Created by Maneet on 15/09/21.

//MARK:- Start
import UIKit
import Alamofire

class CricketTeamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK:- Outlets
    @IBOutlet weak var teamsTableView: UITableView!
    @IBOutlet weak var teamsTableView1: UITableView!
    @IBOutlet weak var teamsTableView2: UITableView!
    
    //MARK:- Variables Declaration
    var cricketTeams: [String?] = []
    var cricketTeams1: [String?] = []
    
    var cricketPoints: [Int?] = []
    var cricketPoints1: [Int?] = []
    
    var cricketPosition: [Int?] = []
    var cricketPosition1: [Int?] = []
    
    var t20BlastCricketTeams: [String?] = []
    var t20BlastCricketTeams1: [String?] = []
    var t20BlastCricketTeams2: [String?] = []
    
    var t20BlastCricketPoints: [Int?] = []
    var t20BlastCricketPoints1: [Int?] = []
    var t20BlastCricketPoints2: [Int?] = []
    
    var t20BlastCricketPosition: [Int?] = []
    var t20BlastCricketPosition1: [Int?] = []
    var t20BlastCricketPosition2: [Int?] = []
    
    var theHundredTeams: [String?] = []
    var theHundredTeams1: [String?] = []
    
    var theHundredPoints: [String?] = []
    var theHundredPoints1: [String?] = []
    
    var theHundredPosition: [String?] = []
    var theHundredPosition1: [String?] = []
    
    var tournamentId: Int = 0
    var numberOfTeams: Int = 0
    var numberOfGroups: Int = 0
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CricketTeamsTableViewCell", bundle: nil)
        self.teamsTableView.register(nib, forCellReuseIdentifier: "cricketTeamCell")
        self.teamsTableView1.register(nib, forCellReuseIdentifier: "cricketTeamCell")
        self.teamsTableView2.register(nib, forCellReuseIdentifier: "cricketTeamCell")
        
        teamsTableView.delegate = self
        teamsTableView.dataSource = self
        
        teamsTableView1.delegate = self
        teamsTableView1.dataSource = self
        
        teamsTableView2.delegate = self
        teamsTableView2.dataSource = self
        
        fetchTeams()
        fetchTheHundredTeams()
        fetchT20BlastTeams()
    }
    
    //MARK:- Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == teamsTableView2 {
            return 2
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == teamsTableView2 {
            return 30
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if tableView == teamsTableView2 {
            view.tintColor = UIColor.blue
            let header = view as! UITableViewHeaderFooterView
            header.textLabel?.textColor = UIColor.white
        }
    }
   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView == teamsTableView2 && section == 0 {
            return "North Group"
        }
        
        if tableView == teamsTableView2 && section == 1 {
            return "South Group"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case teamsTableView:
            return cricketTeams1.count
            
        case teamsTableView1:
            return theHundredTeams1.count
            
        case teamsTableView2:
            switch section {
            case 0:
                return t20BlastCricketTeams1.count
                
            case 1:
                return t20BlastCricketTeams2.count
            default:
                return 0
            }
            
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cricketTeamCell", for: indexPath) as! CricketTeamsTableViewCell
        
        if tableView == teamsTableView {
            cell.cricketTeamNameLabel.text = cricketTeams1[indexPath.row]
            cell.pointsLabel.text = "\(cricketPoints1[indexPath.row] ?? 0)"
            cell.positionLabel.text = "\(cricketPosition1[indexPath.row] ?? 0)"
        }
        
        if tableView == teamsTableView1 {
            cell.cricketTeamNameLabel.text = theHundredTeams1[indexPath.row]
            cell.pointsLabel.text = theHundredPoints1[indexPath.row]
            cell.positionLabel.text = theHundredPosition1[indexPath.row]
        }
        
        if tableView == teamsTableView2 {
            
            switch (indexPath.section) {
            case 0:
                cell.cricketTeamNameLabel.text = t20BlastCricketTeams1[indexPath.row]
                cell.pointsLabel.text = "\(t20BlastCricketPoints1[indexPath.row] ?? 0)"
                cell.positionLabel.text = "\(t20BlastCricketPosition1[indexPath.row] ?? 0)"
                
            case 1:
                cell.cricketTeamNameLabel.text = t20BlastCricketTeams2[indexPath.row]
                cell.pointsLabel.text = "\(t20BlastCricketPoints2[indexPath.row] ?? 0)"
                cell.positionLabel.text = "\(t20BlastCricketPosition2[indexPath.row] ?? 0)"
                
            default:
                return cell
            }
        }
        return cell
    }
    
    //MARK:- User-Defined Function
    func fetchTeams() {
        
        AF.request("http://api.sportradar.us/cricket-t2/en/tournaments/sr:tournament:\(tournamentId)/standings.json?api_key=y7v2whg2wpp9w6gqv56wx52c").responseDecodable(of: MainCricketTeamModel.self) { (response) in
        
            guard let result = response.value?.standings else {
                return
            }
            
            for i in 0...self.numberOfTeams {
                let i1 = i
                
                for j in 0...self.numberOfGroups {
                    let j1 = j
                    
                    self.cricketTeams = result.map { $0.groups![j1].team_standings![i1].team?.name }
                    self.cricketPoints = result.map { $0.groups![j1].team_standings![i1].points }
                    self.cricketPosition = result.map { $0.groups![j1].team_standings![i1].rank }
                    
                    self.cricketTeams1.append(contentsOf: self.cricketTeams)
                    self.cricketPoints1.append(contentsOf: self.cricketPoints)
                    self.cricketPosition1.append(contentsOf: self.cricketPosition)
                }
            }
            self.teamsTableView.reloadData()
            self.teamsTableView2.reloadData()
        }
    }
    
    func fetchTheHundredTeams() {
        
        AF.request("http://api.sportradar.us/cricket-t2/en/tournaments/sr:tournament:31277/info.json?api_key=y7v2whg2wpp9w6gqv56wx52c").responseDecodable(of: MainTheHundredTeamModel.self) { (response) in
            
            guard let result = response.value?.groups else {
                return
            }
            
            for i in 0...7 {
                let i1 = i
                
                self.theHundredTeams = result.map { $0.teams![i1].name }
                self.theHundredPoints = result.map { $0.teams![i1].abbreviation }
                self.theHundredPosition = result.map { $0.teams![i1].abbreviation }
                
                self.theHundredTeams1.append(contentsOf: self.theHundredTeams)
                self.theHundredPoints1.append(contentsOf: self.theHundredPoints)
                self.theHundredPosition1.append(contentsOf: self.theHundredPosition)
            }
            self.teamsTableView1.reloadData()
        }
    }
    
    func fetchT20BlastTeams() {
        
        AF.request("http://api.sportradar.us/cricket-t2/en/tournaments/sr:tournament:15574/standings.json?api_key=y7v2whg2wpp9w6gqv56wx52c").responseDecodable(of: MainCricketTeamModel.self) { (response) in
            
            guard let result = response.value?.standings else {
                return
            }
            
            for i in 0...self.numberOfGroups {
                let i1 = i
                
                for j in 0...self.numberOfTeams {
                    let j1 = j
                    
                    self.t20BlastCricketTeams = result.map { $0.groups![i1].team_standings![j1].team?.name }
                    self.t20BlastCricketPoints = result.map { $0.groups![i1].team_standings![j1].points }
                    self.t20BlastCricketPosition = result.map { $0.groups![i1].team_standings![j1].rank }
                    if i1 == 0 {
                        self.t20BlastCricketTeams1.append(contentsOf: self.t20BlastCricketTeams)
                        self.t20BlastCricketPoints1.append(contentsOf: self.t20BlastCricketPoints)
                        self.t20BlastCricketPosition1.append(contentsOf: self.t20BlastCricketPosition)
                    }
                    
                    if i1 == 1 {
                        self.t20BlastCricketTeams2.append(contentsOf: self.t20BlastCricketTeams)
                        self.t20BlastCricketPoints2.append(contentsOf: self.t20BlastCricketPoints)
                        self.t20BlastCricketPosition2.append(contentsOf: self.t20BlastCricketPosition)
                    }
                }
                self.teamsTableView2.reloadData()
            }
        }
    }
}
