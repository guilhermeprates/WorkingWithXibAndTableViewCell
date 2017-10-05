import UIKit

class CustomTableViewCell: BaseTableViewCell {
  
  @IBOutlet weak var itemNameLabel: UILabel!
  
  override func setup() {
    super.setup()
    itemNameLabel.textColor = .blue
  }
  
  override func setData(_ data: Any) {
    if let item = data as? Item {
      itemNameLabel.text = item.name
    }
  }
  
  override class func height() -> CGFloat {
    return 60.0
  }
  
}
