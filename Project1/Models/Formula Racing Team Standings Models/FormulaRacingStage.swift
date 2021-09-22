
//MARK:- Start
import Foundation

struct FormulaRacingStage : Codable {
	let id : String?
	let description : String?
	let scheduled : String?
	let scheduled_end : String?
	let type : String?
	let single_event : Bool?
	let parents : [FormulaRacingParents]?
	let stages : [FormulaRacingStages]?
	let competitors : [FormulaRacingCompetitors]?
	let teams : [FormulaRacingTeams]?

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case description = "description"
		case scheduled = "scheduled"
		case scheduled_end = "scheduled_end"
		case type = "type"
		case single_event = "single_event"
		case parents = "parents"
		case stages = "stages"
		case competitors = "competitors"
		case teams = "teams"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		scheduled = try values.decodeIfPresent(String.self, forKey: .scheduled)
		scheduled_end = try values.decodeIfPresent(String.self, forKey: .scheduled_end)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		single_event = try values.decodeIfPresent(Bool.self, forKey: .single_event)
		parents = try values.decodeIfPresent([FormulaRacingParents].self, forKey: .parents)
		stages = try values.decodeIfPresent([FormulaRacingStages].self, forKey: .stages)
		competitors = try values.decodeIfPresent([FormulaRacingCompetitors].self, forKey: .competitors)
		teams = try values.decodeIfPresent([FormulaRacingTeams].self, forKey: .teams)
	}
}
