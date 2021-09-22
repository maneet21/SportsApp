
//MARK:- Start
import Foundation

struct CricketStandings : Codable {
	let type : String?
	let groups : [CricketGroups]?

	enum CodingKeys: String, CodingKey {
		case type = "type"
		case groups = "groups"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		groups = try values.decodeIfPresent([CricketGroups].self, forKey: .groups)
	}
}
