import UIKit

extension UIView {
  
  class func loadFromNibNamed(_ nibNamed: String, _ bundle: Bundle? = nil) -> UINib {
    return UINib(nibName: nibNamed, bundle: bundle)
  }
  
  class func loadNib() -> UINib {
    let className = String(describing: self)
    return loadFromNibNamed(className)
  }
  
}
