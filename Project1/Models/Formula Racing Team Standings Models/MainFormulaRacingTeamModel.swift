
//MARK:- Start
import Foundation

struct MainFormulaRacingTeamModel : Codable {
	let generated_at : String?
	let schema : String?
	let stage : FormulaRacingStage?

	enum CodingKeys: String, CodingKey {
		case generated_at = "generated_at"
		case schema = "schema"
		case stage = "stage"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		generated_at = try values.decodeIfPresent(String.self, forKey: .generated_at)
		schema = try values.decodeIfPresent(String.self, forKey: .schema)
		stage = try values.decodeIfPresent(FormulaRacingStage.self, forKey: .stage)
	}
}
