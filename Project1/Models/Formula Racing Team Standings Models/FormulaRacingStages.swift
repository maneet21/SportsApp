
//MARK:- Start
import Foundation

struct FormulaRacingStages : Codable {
	let id : String?
	let description : String?
	let scheduled : String?
	let scheduled_end : String?
	let type : String?
	let status : String?
	let single_event : Bool?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case description = "description"
		case scheduled = "scheduled"
		case scheduled_end = "scheduled_end"
		case type = "type"
		case status = "status"
		case single_event = "single_event"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		scheduled = try values.decodeIfPresent(String.self, forKey: .scheduled)
		scheduled_end = try values.decodeIfPresent(String.self, forKey: .scheduled_end)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		single_event = try values.decodeIfPresent(Bool.self, forKey: .single_event)
	}
}
