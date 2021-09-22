
// Created by Maneet on 31/08/21.

//MARK:- Start
import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    //MARK:- Outlet
    @IBOutlet weak var settingsTableViewCellLabel: UILabel!
    
    //MARK:- Variables Declaration
    @IBInspectable var coloredBoxHeight: CGFloat = 40
    var lightColor = UIColor(red: 105/255.0, green: 179/255.0, blue: 216/255.0, alpha: 1)
    var darkColor = UIColor(red: 21/255.0, green: 92/255.0, blue: 136/255.0, alpha: 1)
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

//    override func draw(_ rect: CGRect) {
//      
//      var coloredBoxRect = bounds
//      coloredBoxRect.size.height = coloredBoxHeight
//      
//      var paperRect = bounds
//      paperRect.origin.y += coloredBoxHeight
//      paperRect.size.height = bounds.height - coloredBoxHeight
//      
//      let context = UIGraphicsGetCurrentContext()!
//      
//      let shadowColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.5)
//      
//      context.saveGState()
//      
//      context.setShadow(offset: CGSize(width: 0, height: 2), blur: 3.0, color: shadowColor.cgColor)
//      
//      context.setFillColor(lightColor.cgColor)
//      context.fill(coloredBoxRect)
//      
//      context.restoreGState()
//      
//      context.drawGlossAndGradient(rect: coloredBoxRect, startColor: lightColor, endColor: darkColor)
//      
//      context.setStrokeColor(darkColor.cgColor)
//      context.setLineWidth(1)
//      context.stroke(coloredBoxRect.rectFor1PxStroke())
//    }
}
