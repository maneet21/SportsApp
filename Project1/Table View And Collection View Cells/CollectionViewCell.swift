
// Created by Maneet on 23/08/21.

//MARK:- Start
import UIKit

class CollectionViewCell: UICollectionViewCell {

    //MARK:- Outlets
    @IBOutlet weak var collectionViewCellView: UIView!
    @IBOutlet weak var collectionViewCellLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionViewCellView.backgroundColor = UIColor.clear.withAlphaComponent(0.5)
    }
}
