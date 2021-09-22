
//MARK:- Start
import Foundation

struct TheHundredCategory : Codable {
	let id : String?
	let name : String?
	let country_code : String?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case name = "name"
		case country_code = "country_code"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		country_code = try values.decodeIfPresent(String.self, forKey: .country_code)
	}
}
