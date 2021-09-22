
//MARK:- Start
import Foundation

struct FormulaRacingParents : Codable {
	let id : String?
	let description : String?
	let type : String?
	let single_event : Bool?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case description = "description"
		case type = "type"
		case single_event = "single_event"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		single_event = try values.decodeIfPresent(Bool.self, forKey: .single_event)
	}
}
