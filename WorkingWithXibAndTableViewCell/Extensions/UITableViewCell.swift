import UIKit

extension UITableViewCell {

  class var identifier: String {
    return String(describing: self)
  }

  @objc
  class func height() -> CGFloat {
    return 44.0
  }

}
