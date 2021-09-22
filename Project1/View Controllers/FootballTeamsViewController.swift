
// Created by Maneet on 05/09/21.

//MARK:- Start
import UIKit
import Alamofire

class FootballTeamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK:- Outlet
    @IBOutlet weak var teamTableView: UITableView!
    @IBOutlet weak var teamTableView1: UITableView!
    
    //MARK:- Variables Declaration
    var teams: [String?] = [""]
    var teams1: [String?] = []
    var matchesPlayed: [Int?] = []
    var matchesPlayed1: [Int?] = []
    var matchesWon: [Int?] = []
    var matchesWon1: [Int?] = []
    var matchesDrawn: [Int?] = []
    var matchesDrawn1: [Int?] = []
    var matchesLost: [Int?] = []
    var matchesLost1: [Int?] = []
    var goalsFor: [Int?] = []
    var goalsFor1: [Int?] = []
    var goalsAgainst: [Int?] = []
    var goalsAgainst1: [Int?] = []
    var goalDifference: [Int?] = []
    var goalDifference1: [Int?] = []
    var points: [Int?] = []
    var points1: [Int?] = []
    
    var uefaChampionsLeagueTeams: [String?] = []
    var uefaChampionsLeaguePlayed: [Int?] = []
    var uefaChampionsLeagueWon: [Int?] = []
    var uefaChampionsLeagueDrawn: [Int?] = []
    var uefaChampionsLeagueLost: [Int?] = []
    var uefaChampionsLeagueGoalsFor: [Int?] = []
    var uefaChampionsLeagueGoalsAgainst: [Int?] = []
    var uefaChampionsLeagueGoalDifference: [Int?] = []
    var uefaChampionsLeaguePoints: [Int?] = []

    var uefaChampionsLeagueTeamsGroupA: [String?] = []
    var uefaChampionsLeagueTeamsGroupB: [String?] = []
    var uefaChampionsLeagueTeamsGroupC: [String?] = []
    var uefaChampionsLeagueTeamsGroupD: [String?] = []
    var uefaChampionsLeagueTeamsGroupE: [String?] = []
    var uefaChampionsLeagueTeamsGroupF: [String?] = []
    var uefaChampionsLeagueTeamsGroupG: [String?] = []
    var uefaChampionsLeagueTeamsGroupH: [String?] = []
    
    var uefaChampionsLeaguePlayedGroupA: [Int?] = []
    var uefaChampionsLeaguePlayedGroupB: [Int?] = []
    var uefaChampionsLeaguePlayedGroupC: [Int?] = []
    var uefaChampionsLeaguePlayedGroupD: [Int?] = []
    var uefaChampionsLeaguePlayedGroupE: [Int?] = []
    var uefaChampionsLeaguePlayedGroupF: [Int?] = []
    var uefaChampionsLeaguePlayedGroupG: [Int?] = []
    var uefaChampionsLeaguePlayedGroupH: [Int?] = []

    var uefaChampionsLeagueWonGroupA: [Int?] = []
    var uefaChampionsLeagueWonGroupB: [Int?] = []
    var uefaChampionsLeagueWonGroupC: [Int?] = []
    var uefaChampionsLeagueWonGroupD: [Int?] = []
    var uefaChampionsLeagueWonGroupE: [Int?] = []
    var uefaChampionsLeagueWonGroupF: [Int?] = []
    var uefaChampionsLeagueWonGroupG: [Int?] = []
    var uefaChampionsLeagueWonGroupH: [Int?] = []
    
    var uefaChampionsLeagueDrawnGroupA: [Int?] = []
    var uefaChampionsLeagueDrawnGroupB: [Int?] = []
    var uefaChampionsLeagueDrawnGroupC: [Int?] = []
    var uefaChampionsLeagueDrawnGroupD: [Int?] = []
    var uefaChampionsLeagueDrawnGroupE: [Int?] = []
    var uefaChampionsLeagueDrawnGroupF: [Int?] = []
    var uefaChampionsLeagueDrawnGroupG: [Int?] = []
    var uefaChampionsLeagueDrawnGroupH: [Int?] = []
    
    var uefaChampionsLeagueLostGroupA: [Int?] = []
    var uefaChampionsLeagueLostGroupB: [Int?] = []
    var uefaChampionsLeagueLostGroupC: [Int?] = []
    var uefaChampionsLeagueLostGroupD: [Int?] = []
    var uefaChampionsLeagueLostGroupE: [Int?] = []
    var uefaChampionsLeagueLostGroupF: [Int?] = []
    var uefaChampionsLeagueLostGroupG: [Int?] = []
    var uefaChampionsLeagueLostGroupH: [Int?] = []
    
    var uefaChampionsLeagueGoalsForGroupA: [Int?] = []
    var uefaChampionsLeagueGoalsForGroupB: [Int?] = []
    var uefaChampionsLeagueGoalsForGroupC: [Int?] = []
    var uefaChampionsLeagueGoalsForGroupD: [Int?] = []
    var uefaChampionsLeagueGoalsForGroupE: [Int?] = []
    var uefaChampionsLeagueGoalsForGroupF: [Int?] = []
    var uefaChampionsLeagueGoalsForGroupG: [Int?] = []
    var uefaChampionsLeagueGoalsForGroupH: [Int?] = []
    
    var uefaChampionsLeagueGoalsAgainstGroupA: [Int?] = []
    var uefaChampionsLeagueGoalsAgainstGroupB: [Int?] = []
    var uefaChampionsLeagueGoalsAgainstGroupC: [Int?] = []
    var uefaChampionsLeagueGoalsAgainstGroupD: [Int?] = []
    var uefaChampionsLeagueGoalsAgainstGroupE: [Int?] = []
    var uefaChampionsLeagueGoalsAgainstGroupF: [Int?] = []
    var uefaChampionsLeagueGoalsAgainstGroupG: [Int?] = []
    var uefaChampionsLeagueGoalsAgainstGroupH: [Int?] = []
    
    var uefaChampionsLeagueGoalDifferenceGroupA: [Int?] = []
    var uefaChampionsLeagueGoalDifferenceGroupB: [Int?] = []
    var uefaChampionsLeagueGoalDifferenceGroupC: [Int?] = []
    var uefaChampionsLeagueGoalDifferenceGroupD: [Int?] = []
    var uefaChampionsLeagueGoalDifferenceGroupE: [Int?] = []
    var uefaChampionsLeagueGoalDifferenceGroupF: [Int?] = []
    var uefaChampionsLeagueGoalDifferenceGroupG: [Int?] = []
    var uefaChampionsLeagueGoalDifferenceGroupH: [Int?] = []
    
    var uefaChampionsLeaguePointsGroupA: [Int?] = []
    var uefaChampionsLeaguePointsGroupB: [Int?] = []
    var uefaChampionsLeaguePointsGroupC: [Int?] = []
    var uefaChampionsLeaguePointsGroupD: [Int?] = []
    var uefaChampionsLeaguePointsGroupE: [Int?] = []
    var uefaChampionsLeaguePointsGroupF: [Int?] = []
    var uefaChampionsLeaguePointsGroupG: [Int?] = []
    var uefaChampionsLeaguePointsGroupH: [Int?] = []
    
    var teamFounded: [Int?] = []
    var response1: Int = 0
    var leagueId: Int = 0
    var numberOfTeams = 0

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "FootballTeamsTableViewCell", bundle: nil)
        self.teamTableView.register(nib, forCellReuseIdentifier: "teamCell")
        self.teamTableView1.register(nib, forCellReuseIdentifier: "teamCell")
        
        teamTableView.delegate = self
        teamTableView.dataSource = self
        
        teamTableView1.delegate = self
        teamTableView1.dataSource = self
        
        fetchTeams()
        fetchUefaChampionsLeagueTeams()
    }
    
    //MARK:- Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == teamTableView1 {
            return 8
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == teamTableView1 {
            return 30
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if tableView == teamTableView1 {
            view.tintColor = UIColor.blue
            let header = view as! UITableViewHeaderFooterView
            header.textLabel?.textColor = UIColor.white
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView == teamTableView1 && section == 0 {
            return "Group A"
        }
        
        if tableView == teamTableView1 && section == 1 {
            return "Group B"
        }
        
        if tableView == teamTableView1 && section == 2 {
            return "Group C"
        }
        
        if tableView == teamTableView1 && section == 3 {
            return "Group D"
        }
        
        if tableView == teamTableView1 && section == 4 {
            return "Group E"
        }
        
        if tableView == teamTableView1 && section == 5 {
            return "Group F"
        }
        
        if tableView == teamTableView1 && section == 6 {
            return "Group G"
        }
        
        if tableView == teamTableView1 && section == 7 {
            return "Group H"
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch tableView {
        case teamTableView:
            return teams1.count
            
        case teamTableView1:
            switch section {
            case 0:
                return uefaChampionsLeagueTeamsGroupA.count
                
            case 1:
                return uefaChampionsLeagueTeamsGroupB.count
                
            case 2:
                return uefaChampionsLeagueTeamsGroupC.count
                
            case 3:
                return uefaChampionsLeagueTeamsGroupD.count
                
            case 4:
                return uefaChampionsLeagueTeamsGroupE.count
                
            case 5:
                return uefaChampionsLeagueTeamsGroupF.count
                
            case 6:
                return uefaChampionsLeagueTeamsGroupG.count
                
            case 7:
                return uefaChampionsLeagueTeamsGroupH.count
           
            default:
                return 0
            }
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as! FootballTeamsTableViewCell
        
        if tableView == teamTableView {
            cell.teamLabel.text = teams1[indexPath.row]
            cell.matchedPlayed.text = String(matchesPlayed1[indexPath.row]!)
            cell.matchesWon.text = String(matchesWon1[indexPath.row]!)
            cell.matchesDrawn.text = String(matchesDrawn1[indexPath.row]!)
            cell.matchesLost.text = String(matchesLost1[indexPath.row]!)
            cell.goalsFor.text = String(goalsFor1[indexPath.row]!)
            cell.goalsAgainst.text = String(goalsAgainst1[indexPath.row]!)
            cell.goalDifference.text = String(goalDifference1[indexPath.row]!)
            cell.points.text = String(points1[indexPath.row]!)
        }
        
        if tableView == teamTableView1 {
            switch (indexPath.section) {
            case 0:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupA[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupA[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupA[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupA[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupA[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupA[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupA[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupA[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupA[indexPath.row] ?? 0)"
                
            case 1:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupB[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupB[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupB[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupB[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupB[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupB[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupB[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupB[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupB[indexPath.row] ?? 0)"
                
            case 2:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupC[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupC[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupC[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupC[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupC[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupC[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupC[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupC[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupC[indexPath.row] ?? 0)"

            case 3:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupD[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupD[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupD[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupD[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupD[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupD[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupD[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupD[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupD[indexPath.row] ?? 0)"

            case 4:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupE[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupE[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupE[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupE[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupE[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupE[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupE[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupE[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupE[indexPath.row] ?? 0)"

            case 5:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupF[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupF[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupF[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupF[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupF[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupF[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupF[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupF[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupF[indexPath.row] ?? 0)"

            case 6:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupG[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupG[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupG[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupG[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupG[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupG[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupG[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupG[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupG[indexPath.row] ?? 0)"

            case 7:
                cell.teamLabel.text = uefaChampionsLeagueTeamsGroupH[indexPath.row]
                cell.matchedPlayed.text = "\(uefaChampionsLeaguePlayedGroupH[indexPath.row] ?? 0)"
                cell.matchesWon.text = "\(uefaChampionsLeagueWonGroupH[indexPath.row] ?? 0)"
                cell.matchesDrawn.text = "\(uefaChampionsLeagueDrawnGroupH[indexPath.row] ?? 0)"
                cell.matchesLost.text = "\(uefaChampionsLeagueLostGroupH[indexPath.row] ?? 0)"
                cell.goalsFor.text = "\(uefaChampionsLeagueGoalsForGroupH[indexPath.row] ?? 0)"
                cell.goalsAgainst.text = "\(uefaChampionsLeagueGoalsAgainstGroupH[indexPath.row] ?? 0)"
                cell.goalDifference.text = "\(uefaChampionsLeagueGoalDifferenceGroupH[indexPath.row] ?? 0)"
                cell.points.text = "\(uefaChampionsLeaguePointsGroupH[indexPath.row] ?? 0)"
                
            default:
                return cell
            }
        }
        return cell
    }
    
    //MARK:- User-Defined Function
    func fetchTeams() {
        let headers: HTTPHeaders = [
            "x-apisports-key": "bcd14be8bfd1380618379c6299f3fa4f"
        ]
        
        AF.request("https://v3.football.api-sports.io/standings?league=\(leagueId)&season=2020", headers: headers).responseDecodable(of: MainFootballTeamModel.self) { (response) in
          
            guard let result = response.value?.response else {
                return
            }
            
            self.response1 = result.count
            
            for i in 0...self.numberOfTeams {
                let i1 = i
                
                self.teams = result.map { $0.league?.standings![0][i1].team?.name }
                self.matchesPlayed = result.map { $0.league?.standings![0][i1].all?.played }
                self.matchesWon = result.map { $0.league?.standings![0][i1].all?.win }
                self.matchesDrawn = result.map { $0.league?.standings![0][i1].all?.draw }
                self.matchesLost = result.map { $0.league?.standings![0][i1].all?.lose }
                self.goalsFor = result.map { $0.league?.standings![0][i1].all?.goals?.for1 }
                self.goalsAgainst = result.map { $0.league?.standings![0][i1].all?.goals?.against }
                self.goalDifference = result.map { $0.league?.standings![0][i1].goalsDiff  }
                self.points = result.map { $0.league?.standings![0][i1].points }
                
                self.teams1.append(contentsOf: self.teams)
                self.matchesPlayed1.append(contentsOf: self.matchesPlayed)
                self.matchesWon1.append(contentsOf: self.matchesWon)
                self.matchesDrawn1.append(contentsOf: self.matchesDrawn)
                self.matchesLost1.append(contentsOf: self.matchesLost)
                self.goalsFor1.append(contentsOf: self.goalsFor)
                self.goalsAgainst1.append(contentsOf: self.goalsAgainst)
                self.goalDifference1.append(contentsOf: self.goalDifference)
                self.points1.append(contentsOf: self.points)
            }
            self.teamTableView.reloadData()
        }
    }
    
    func fetchUefaChampionsLeagueTeams() {
        
        let headers: HTTPHeaders = [
            "x-apisports-key": "bcd14be8bfd1380618379c6299f3fa4f"
        ]
        
        AF.request("https://v3.football.api-sports.io/standings?league=2&season=2020", headers: headers).responseDecodable(of: MainFootballTeamModel.self) { (response) in
            
            guard let result = response.value?.response else {
                return
            }
            
            for i in 0...7 {
                let i1 = i
            
                for j in 0...3 {
                    let j1 = j
                    
                    self.uefaChampionsLeagueTeams = result.map { $0.league?.standings![i1][j1].team?.name }
                    self.uefaChampionsLeaguePlayed = result.map { $0.league?.standings![i1][j1].all?.played }
                    self.uefaChampionsLeagueWon = result.map { $0.league?.standings![i1][j1].all?.win }
                    self.uefaChampionsLeagueDrawn = result.map { $0.league?.standings![i1][j1].all?.draw }
                    self.uefaChampionsLeagueLost = result.map { $0.league?.standings![i1][j1].all?.lose }
                    self.uefaChampionsLeagueGoalsFor = result.map { $0.league?.standings![i1][j1].all?.goals?.for1 }
                    self.uefaChampionsLeagueGoalsAgainst = result.map { $0.league?.standings![i1][j1].all?.goals?.against }
                    self.uefaChampionsLeagueGoalDifference = result.map { $0.league?.standings![i1][j1].goalsDiff }
                    self.uefaChampionsLeaguePoints = result.map { $0.league?.standings![i1][j1].points }
  
                    if i1 == 0 {
                        self.uefaChampionsLeagueTeamsGroupA.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupA.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupA.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupA.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupA.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupA.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupA.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupA.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupA.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                    
                    if i1 == 1 {
                        self.uefaChampionsLeagueTeamsGroupB.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupB.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupB.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupB.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupB.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupB.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupB.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupB.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupB.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                    
                    if i1 == 2 {
                        self.uefaChampionsLeagueTeamsGroupC.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupC.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupC.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupC.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupC.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupC.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupC.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupC.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupC.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                    
                    if i1 == 3 {
                        self.uefaChampionsLeagueTeamsGroupD.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupD.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupD.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupD.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupD.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupD.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupD.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupD.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupD.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                    
                    if i1 == 4 {
                        self.uefaChampionsLeagueTeamsGroupE.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupE.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupE.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupE.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupE.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupE.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupE.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupE.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupE.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                    
                    if i1 == 5 {
                        self.uefaChampionsLeagueTeamsGroupF.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupF.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupF.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupF.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupF.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupF.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupF.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupF.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupF.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                    
                    if i1 == 6 {
                        self.uefaChampionsLeagueTeamsGroupG.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupG.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupG.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupG.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupG.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupG.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupG.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupG.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupG.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                    
                    if i1 == 7 {
                        self.uefaChampionsLeagueTeamsGroupH.append(contentsOf: self.uefaChampionsLeagueTeams)
                        self.uefaChampionsLeaguePlayedGroupH.append(contentsOf: self.uefaChampionsLeaguePlayed)
                        self.uefaChampionsLeagueWonGroupH.append(contentsOf: self.uefaChampionsLeagueWon)
                        self.uefaChampionsLeagueDrawnGroupH.append(contentsOf: self.uefaChampionsLeagueDrawn)
                        self.uefaChampionsLeagueLostGroupH.append(contentsOf: self.uefaChampionsLeagueLost)
                        self.uefaChampionsLeagueGoalsForGroupH.append(contentsOf: self.uefaChampionsLeagueGoalsFor)
                        self.uefaChampionsLeagueGoalsAgainstGroupH.append(contentsOf: self.uefaChampionsLeagueGoalsAgainst)
                        self.uefaChampionsLeagueGoalDifferenceGroupH.append(contentsOf: self.uefaChampionsLeagueGoalDifference)
                        self.uefaChampionsLeaguePointsGroupH.append(contentsOf: self.uefaChampionsLeaguePoints)
                    }
                }
            }
            self.teamTableView1.reloadData()
        }
    }
}


