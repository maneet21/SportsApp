
//MARK:- Start
import Foundation

struct TheHundredTournament : Codable {
	let id : String?
	let name : String?
	let sport : TheHundredSport?
	let category : TheHundredCategory?
	let current_season : TheHundredCurrent_season?
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
		sport = try values.decodeIfPresent(TheHundredSport.self, forKey: .sport)
		category = try values.decodeIfPresent(TheHundredCategory.self, forKey: .category)
		current_season = try values.decodeIfPresent(TheHundredCurrent_season.self, forKey: .current_season)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		gender = try values.decodeIfPresent(String.self, forKey: .gender)
	}
}
