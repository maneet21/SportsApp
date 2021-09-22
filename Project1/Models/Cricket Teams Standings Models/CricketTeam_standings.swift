
//MARK:- Start
import Foundation

struct CricketTeam_standings : Codable {
	let team : CricketTeam?
	let rank : Int?
	let current_outcome : String?
	let played : Int?
	let win : Int?
	let draw : Int?
	let loss : Int?
	let net_run_rate : Double?
	let no_result : Int?
	let points : Int?
	let change : Int?

	enum CodingKeys: String, CodingKey {
		case team = "team"
		case rank = "rank"
		case current_outcome = "current_outcome"
		case played = "played"
		case win = "win"
		case draw = "draw"
		case loss = "loss"
		case net_run_rate = "net_run_rate"
		case no_result = "no_result"
		case points = "points"
		case change = "change"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		team = try values.decodeIfPresent(CricketTeam.self, forKey: .team)
		rank = try values.decodeIfPresent(Int.self, forKey: .rank)
		current_outcome = try values.decodeIfPresent(String.self, forKey: .current_outcome)
		played = try values.decodeIfPresent(Int.self, forKey: .played)
		win = try values.decodeIfPresent(Int.self, forKey: .win)
		draw = try values.decodeIfPresent(Int.self, forKey: .draw)
		loss = try values.decodeIfPresent(Int.self, forKey: .loss)
		net_run_rate = try values.decodeIfPresent(Double.self, forKey: .net_run_rate)
		no_result = try values.decodeIfPresent(Int.self, forKey: .no_result)
		points = try values.decodeIfPresent(Int.self, forKey: .points)
		change = try values.decodeIfPresent(Int.self, forKey: .change)
	}
}
