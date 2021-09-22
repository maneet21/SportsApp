
//MARK:- Start
import Foundation

struct FootballAll : Codable {
	let played : Int?
	let win : Int?
	let draw : Int?
	let lose : Int?
	let goals : FootballGoals?

	enum CodingKeys: String, CodingKey {
		case played = "played"
		case win = "win"
		case draw = "draw"
		case lose = "lose"
		case goals = "goals"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		played = try values.decodeIfPresent(Int.self, forKey: .played)
		win = try values.decodeIfPresent(Int.self, forKey: .win)
		draw = try values.decodeIfPresent(Int.self, forKey: .draw)
		lose = try values.decodeIfPresent(Int.self, forKey: .lose)
		goals = try values.decodeIfPresent(FootballGoals.self, forKey: .goals)
	}
}
