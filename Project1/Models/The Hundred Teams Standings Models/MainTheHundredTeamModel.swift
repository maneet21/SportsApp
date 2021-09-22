
//MARK:- Start
import Foundation

struct MainTheHundredTeamModel : Codable {
	let generated_at : String?
	let schema : String?
	let tournament : TheHundredTournament?
	let groups : [TheHundredGroups]?

	enum CodingKeys: String, CodingKey {
		case generated_at = "generated_at"
		case schema = "schema"
		case tournament = "tournament"
		case groups = "groups"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		generated_at = try values.decodeIfPresent(String.self, forKey: .generated_at)
		schema = try values.decodeIfPresent(String.self, forKey: .schema)
		tournament = try values.decodeIfPresent(TheHundredTournament.self, forKey: .tournament)
		groups = try values.decodeIfPresent([TheHundredGroups].self, forKey: .groups)
	}
}
