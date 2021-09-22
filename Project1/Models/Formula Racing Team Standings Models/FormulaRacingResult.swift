
//MARK:- Start
import Foundation

struct FormulaRacingResult : Codable {
	let points : Int?
	let position : Int?
	let victories : Int?
	let races : Int?
	let races_with_points : Int?
	let pole_positions : Int?
	let podiums : Int?
	let fastest_laps : Int?
	let victory_pole_and_fastest_lap : Int?

	enum CodingKeys: String, CodingKey {
		case points = "points"
		case position = "position"
		case victories = "victories"
		case races = "races"
		case races_with_points = "races_with_points"
		case pole_positions = "pole_positions"
		case podiums = "podiums"
		case fastest_laps = "fastest_laps"
		case victory_pole_and_fastest_lap = "victory_pole_and_fastest_lap"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		points = try values.decodeIfPresent(Int.self, forKey: .points)
		position = try values.decodeIfPresent(Int.self, forKey: .position)
		victories = try values.decodeIfPresent(Int.self, forKey: .victories)
		races = try values.decodeIfPresent(Int.self, forKey: .races)
		races_with_points = try values.decodeIfPresent(Int.self, forKey: .races_with_points)
		pole_positions = try values.decodeIfPresent(Int.self, forKey: .pole_positions)
		podiums = try values.decodeIfPresent(Int.self, forKey: .podiums)
		fastest_laps = try values.decodeIfPresent(Int.self, forKey: .fastest_laps)
		victory_pole_and_fastest_lap = try values.decodeIfPresent(Int.self, forKey: .victory_pole_and_fastest_lap)
	}
}
