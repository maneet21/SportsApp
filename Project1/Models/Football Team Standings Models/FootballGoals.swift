
//MARK:- Start
import Foundation

struct FootballGoals : Codable {
	let for1 : Int?
	let against : Int?

	enum CodingKeys: String, CodingKey {
		case for1 = "for"
		case against = "against"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		for1 = try values.decodeIfPresent(Int.self, forKey: .for1)
		against = try values.decodeIfPresent(Int.self, forKey: .against)
	}
}
