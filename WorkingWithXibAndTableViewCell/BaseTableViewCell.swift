import UIKit

class BaseTableViewCell: UITableViewCell {
    
    class var identifier: String {
        return String(describing: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool)
    {
        if highlighted {
            alpha = 0.4
        } else {
            alpha = 1.0
        }
    }
    
    func setup() {
        // cell config
    }
    
    func setData(_ data: Any) {
        // cell data
    }
    
    class func height() -> CGFloat {
        return 44.0
    }
    
}

