
//MARK:- Start
import Foundation

struct FormulaRacingTeams : Codable {
	let id : String?
	let name : String?
	let gender : String?
	let nationality : String?
	let country_code : String?
	let result : FormulaRacingResult?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case name = "name"
		case gender = "gender"
		case nationality = "nationality"
		case country_code = "country_code"
		case result = "result"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		gender = try values.decodeIfPresent(String.self, forKey: .gender)
		nationality = try values.decodeIfPresent(String.self, forKey: .nationality)
		country_code = try values.decodeIfPresent(String.self, forKey: .country_code)
		result = try values.decodeIfPresent(FormulaRacingResult.self, forKey: .result)
	}
}
