import UIKit

struct Item {
  var id: Int
  var name: String
}

class ViewController: UIViewController {

  // MARK: - Properties

  private var items: [Item] = []

  // MARK: - IBOutlets

  @IBOutlet weak var tableView: UITableView!
  
  // MARK: - View life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()

    for i in 0..<100 {
      items.append(Item(id: i, name: "Item \(i)"))
    }

    tableView.register(CustomTableViewCell.loadNib(),
                       forCellReuseIdentifier: CustomTableViewCell.identifier)
  }
  
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return CustomTableViewCell.height()
  }
  
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,
                                                   for: indexPath) as? CustomTableViewCell else {
      return UITableViewCell()
    }

    cell.nameLabel.text = items[indexPath.row].name
    
    return cell
  }
  
}

