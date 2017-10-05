import UIKit

struct Item {
  var id: Int
  var name: String
}

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var items: [Item] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.allowsSelection = false
    tableView.register(CustomTableViewCell.loadNib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    
    for i in 0..<100 {
      items.append(Item(id: i, name: "Item \(i)"))
    }
    
  }
  
}

extension ViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return CustomTableViewCell.height()
  }
  
}

extension ViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {
      return UITableViewCell()
    }
    
    let item = items[indexPath.row]
    cell.setData(item)
    
    return cell
  }
  
}

