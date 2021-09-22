
//MARK:- Start
import Foundation

struct CricketGroups : Codable {
	let team_standings : [CricketTeam_standings]?

	enum CodingKeys: String, CodingKey {
		case team_standings = "team_standings"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		team_standings = try values.decodeIfPresent([CricketTeam_standings].self, forKey: .team_standings)
	}
}
