
// Created by Maneet on 05/09/21.

//MARK:- Start
import UIKit

class FootballTeamsTableViewCell: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var matchedPlayed: UILabel!
    @IBOutlet weak var matchesWon: UILabel!
    @IBOutlet weak var matchesDrawn: UILabel!
    @IBOutlet weak var matchesLost: UILabel!
    @IBOutlet weak var goalsFor: UILabel!
    @IBOutlet weak var goalsAgainst: UILabel!
    @IBOutlet weak var goalDifference: UILabel!
    @IBOutlet weak var points: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
