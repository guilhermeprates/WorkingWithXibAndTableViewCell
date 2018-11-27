import UIKit

class CustomTableViewCell: UITableViewCell {
  
  @IBOutlet weak var nameLabel: UILabel! {
    didSet {
       nameLabel.textColor = UIColor.gray
    }
  }
    
  override class func height() -> CGFloat {
    return 60.0
  }

  override func setHighlighted(_ highlighted: Bool, animated: Bool) {
    if highlighted {
      alpha = 0.4
    } else {
      alpha = 1.0
    }
  }
  
}
