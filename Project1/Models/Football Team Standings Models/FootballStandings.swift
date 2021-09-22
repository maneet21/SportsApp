
//MARK:- Start
import Foundation

struct FootballStandings : Codable {
	let rank : Int?
	let team : FootballTeam?
	let points : Int?
	let goalsDiff : Int?
	let group : String?
	let form : String?
	let status : String?
	let description : String?
	let all : FootballAll?
	let home : FootballHome?
	let away : FootballAway?
	let update : String?

	enum CodingKeys: String, CodingKey {
		case rank = "rank"
		case team = "team"
		case points = "points"
		case goalsDiff = "goalsDiff"
		case group = "group"
		case form = "form"
		case status = "status"
		case description = "description"
		case all = "all"
		case home = "home"
		case away = "away"
		case update = "update"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		rank = try values.decodeIfPresent(Int.self, forKey: .rank)
		team = try values.decodeIfPresent(FootballTeam.self, forKey: .team)
		points = try values.decodeIfPresent(Int.self, forKey: .points)
		goalsDiff = try values.decodeIfPresent(Int.self, forKey: .goalsDiff)
		group = try values.decodeIfPresent(String.self, forKey: .group)
		form = try values.decodeIfPresent(String.self, forKey: .form)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		all = try values.decodeIfPresent(FootballAll.self, forKey: .all)
		home = try values.decodeIfPresent(FootballHome.self, forKey: .home)
		away = try values.decodeIfPresent(FootballAway.self, forKey: .away)
		update = try values.decodeIfPresent(String.self, forKey: .update)
	}
}
