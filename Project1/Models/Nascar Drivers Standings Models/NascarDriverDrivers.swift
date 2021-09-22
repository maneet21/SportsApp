/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct NascarDriverDrivers : Codable {
	let id : String?
	let first_name : String?
	let last_name : String?
	let full_name : String?
	let status : String?
	let rank : Int?
	let points : Int?
	let starts : Int?
	let wins : Int?
	let poles : Int?
	let stage_wins : Int?
	let chase_bonus : Int?
	let chase_wins : Int?
	let chase_stage_wins : Int?
	let top_5 : Int?
	let top_10 : Int?
	let top_15 : Int?
	let top_20 : Int?
	let dnf : Int?
	let laps_led : Int?
	let laps_completed : Int?
	let money : Double?
	let avg_start_position : Double?
	let avg_finish_position : Double?
	let avg_laps_completed : Double?
	let laps_led_pct : Double?
	let in_chase : Bool?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case first_name = "first_name"
		case last_name = "last_name"
		case full_name = "full_name"
		case status = "status"
		case rank = "rank"
		case points = "points"
		case starts = "starts"
		case wins = "wins"
		case poles = "poles"
		case stage_wins = "stage_wins"
		case chase_bonus = "chase_bonus"
		case chase_wins = "chase_wins"
		case chase_stage_wins = "chase_stage_wins"
		case top_5 = "top_5"
		case top_10 = "top_10"
		case top_15 = "top_15"
		case top_20 = "top_20"
		case dnf = "dnf"
		case laps_led = "laps_led"
		case laps_completed = "laps_completed"
		case money = "money"
		case avg_start_position = "avg_start_position"
		case avg_finish_position = "avg_finish_position"
		case avg_laps_completed = "avg_laps_completed"
		case laps_led_pct = "laps_led_pct"
		case in_chase = "in_chase"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
		last_name = try values.decodeIfPresent(String.self, forKey: .last_name)
		full_name = try values.decodeIfPresent(String.self, forKey: .full_name)
		status = try values.decodeIfPresent(String.self, forKey: .status)
		rank = try values.decodeIfPresent(Int.self, forKey: .rank)
		points = try values.decodeIfPresent(Int.self, forKey: .points)
		starts = try values.decodeIfPresent(Int.self, forKey: .starts)
		wins = try values.decodeIfPresent(Int.self, forKey: .wins)
		poles = try values.decodeIfPresent(Int.self, forKey: .poles)
		stage_wins = try values.decodeIfPresent(Int.self, forKey: .stage_wins)
		chase_bonus = try values.decodeIfPresent(Int.self, forKey: .chase_bonus)
		chase_wins = try values.decodeIfPresent(Int.self, forKey: .chase_wins)
		chase_stage_wins = try values.decodeIfPresent(Int.self, forKey: .chase_stage_wins)
		top_5 = try values.decodeIfPresent(Int.self, forKey: .top_5)
		top_10 = try values.decodeIfPresent(Int.self, forKey: .top_10)
		top_15 = try values.decodeIfPresent(Int.self, forKey: .top_15)
		top_20 = try values.decodeIfPresent(Int.self, forKey: .top_20)
		dnf = try values.decodeIfPresent(Int.self, forKey: .dnf)
		laps_led = try values.decodeIfPresent(Int.self, forKey: .laps_led)
		laps_completed = try values.decodeIfPresent(Int.self, forKey: .laps_completed)
		money = try values.decodeIfPresent(Double.self, forKey: .money)
		avg_start_position = try values.decodeIfPresent(Double.self, forKey: .avg_start_position)
		avg_finish_position = try values.decodeIfPresent(Double.self, forKey: .avg_finish_position)
		avg_laps_completed = try values.decodeIfPresent(Double.self, forKey: .avg_laps_completed)
		laps_led_pct = try values.decodeIfPresent(Double.self, forKey: .laps_led_pct)
		in_chase = try values.decodeIfPresent(Bool.self, forKey: .in_chase)
	}

}
