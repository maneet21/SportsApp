
//MARK:- Start
import Foundation

struct MainCricketTeamModel : Codable {
	let generated_at : String?
	let schema : String?
	let tournament : CricketTournament?
	let standings : [CricketStandings]?

	enum CodingKeys: String, CodingKey {
		case generated_at = "generated_at"
		case schema = "schema"
		case tournament = "tournament"
		case standings = "standings"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		generated_at = try values.decodeIfPresent(String.self, forKey: .generated_at)
		schema = try values.decodeIfPresent(String.self, forKey: .schema)
		tournament = try values.decodeIfPresent(CricketTournament.self, forKey: .tournament)
		standings = try values.decodeIfPresent([CricketStandings].self, forKey: .standings)
	}
}
