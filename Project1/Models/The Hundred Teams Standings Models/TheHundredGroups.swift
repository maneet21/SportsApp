
//MARK:- Start
import Foundation

struct TheHundredGroups : Codable {
	let teams : [TheHundredTeams]?

	enum CodingKeys: String, CodingKey {
		case teams = "teams"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		teams = try values.decodeIfPresent([TheHundredTeams].self, forKey: .teams)
	}
}
