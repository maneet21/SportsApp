
// Created by Maneet on 05/09/21.

//MARK:- Start
import UIKit
import Foundation
import Alamofire

class RacingTeamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK:- Outlets
    @IBOutlet weak var teamsTableView: UITableView!
    @IBOutlet weak var teamsTableView1: UITableView!
    
    //MARK:- Variables Declaration
    var formulaRacingPosition: [Int?] = []
    var formulaRacingTeams: [String?] = []
    var formulaRacingPoints: [Int?] = []
    
    var nascarRacingDriverRank: [Int?] = []
    var nascarRacingDrivers: [String?] = []
    var nascarRacingDriverPoints: [Int?] = []
  
    var apiKey = ""
    var competitionName = ""
    var stage = ""
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "FormulaRacingTeamsTableViewCell", bundle: nil)
        self.teamsTableView.register(nib, forCellReuseIdentifier: "formulaRacingTeamCell")
        self.teamsTableView1.register(nib, forCellReuseIdentifier: "formulaRacingTeamCell")
        
        teamsTableView.delegate = self
        teamsTableView.dataSource = self
        
        teamsTableView1.delegate = self
        teamsTableView1.dataSource = self
     
        fetchTeams()
        fetchNascarTeams()
    }
    
    //MARK:- Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch tableView {
        case teamsTableView:
            return formulaRacingTeams.count
            
        case teamsTableView1:
            return nascarRacingDrivers.count
            
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "formulaRacingTeamCell", for: indexPath) as! FormulaRacingTeamsTableViewCell
        
        if tableView == teamsTableView {
            cell.positionLabel.text = "\(formulaRacingPosition[indexPath.row] ?? 0)"
            cell.formulaRacingTeamLabel.text = formulaRacingTeams[indexPath.row]
            cell.pointsLabel.text = "\(formulaRacingPoints[indexPath.row] ?? 0)"
        }
        
        if tableView == teamsTableView1 {
            cell.positionLabel.text = "\(nascarRacingDriverRank[indexPath.row] ?? 0)"
            cell.formulaRacingTeamLabel.text = nascarRacingDrivers[indexPath.row]
            cell.pointsLabel.text = "\(nascarRacingDriverPoints[indexPath.row] ?? 0)"
        }
        
        return cell
    }
    
    //MARK:- User-Defined Function
    func fetchTeams() {
        AF.request("http://api.sportradar.us/\(competitionName)/trial/v2/en/sport_events/sr:stage:\(stage)/summary.json?api_key=\(apiKey)").responseDecodable(of: MainFormulaRacingTeamModel.self) { (response) in
           
            guard let result = response.value?.stage?.teams else {
                return
            }
            
            self.formulaRacingPosition = result.map { $0.result?.position }
            self.formulaRacingTeams = result.map { $0.name }
            self.formulaRacingPoints = result.map { $0.result?.points }
            
            self.teamsTableView.reloadData()
        }
    }
    
    func fetchNascarTeams() {
        AF.request("http://api.sportradar.us/nascar-t3/mc/2020/standings/drivers.json?api_key=\(apiKey)").responseDecodable(of: MainNascarDriverStandingsModel.self) { (response) in
       
            guard let result = response.value?.drivers else {
                return
            }
        
            self.nascarRacingDriverRank = result.map { $0.rank }
            self.nascarRacingDrivers = result.map { $0.full_name }
            self.nascarRacingDriverPoints = result.map { $0.points }
        
            self.teamsTableView1.reloadData()
        }
    }
}
