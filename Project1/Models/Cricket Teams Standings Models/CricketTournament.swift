
//MARK:- Start
import Foundation

struct CricketTournament : Codable {
	let id : String?
	let name : String?
	let sport : CricketSport?
	let category : CricketCategory?
	let current_season : CricketCurrent_season?
	let type : String?
	let gender : String?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case name = "name"
		case sport = "sport"
		case category = "category"
		case current_season = "current_season"
		case type = "type"
		case gender = "gender"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		sport = try values.decodeIfPresent(CricketSport.self, forKey: .sport)
		category = try values.decodeIfPresent(CricketCategory.self, forKey: .category)
		current_season = try values.decodeIfPresent(CricketCurrent_season.self, forKey: .current_season)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		gender = try values.decodeIfPresent(String.self, forKey: .gender)
	}
}
