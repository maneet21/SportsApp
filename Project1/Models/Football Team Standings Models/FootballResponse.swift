
//MARK:- Start
import Foundation

struct FootballResponse : Codable {
	let league : FootballLeague?

	enum CodingKeys: String, CodingKey {
		case league = "league"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		league = try values.decodeIfPresent(FootballLeague.self, forKey: .league)
	}
}
