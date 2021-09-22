
//MARK:- Start
import Foundation

struct MainFootballTeamModel : Codable {
	let parameters : FootballParameters?
	let results : Int?
	let paging : FootballPaging?
	let response : [FootballResponse]?

	enum CodingKeys: String, CodingKey {
		case parameters = "parameters"
		case results = "results"
		case paging = "paging"
		case response = "response"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		parameters = try values.decodeIfPresent(FootballParameters.self, forKey: .parameters)
		results = try values.decodeIfPresent(Int.self, forKey: .results)
		paging = try values.decodeIfPresent(FootballPaging.self, forKey: .paging)
		response = try values.decodeIfPresent([FootballResponse].self, forKey: .response)
	}
}
