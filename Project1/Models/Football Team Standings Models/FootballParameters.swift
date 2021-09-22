
//MARK:- Start
import Foundation

struct FootballParameters : Codable {
	let league : String?
	let season : String?

	enum CodingKeys: String, CodingKey {
		case league = "league"
		case season = "season"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		league = try values.decodeIfPresent(String.self, forKey: .league)
		season = try values.decodeIfPresent(String.self, forKey: .season)
	}
}
