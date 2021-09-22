
//MARK:- Start
import Foundation

struct CricketCurrent_season : Codable {
	let id : String?
	let name : String?
	let start_date : String?
	let end_date : String?
	let year : String?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case name = "name"
		case start_date = "start_date"
		case end_date = "end_date"
		case year = "year"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		start_date = try values.decodeIfPresent(String.self, forKey: .start_date)
		end_date = try values.decodeIfPresent(String.self, forKey: .end_date)
		year = try values.decodeIfPresent(String.self, forKey: .year)
	}
}
