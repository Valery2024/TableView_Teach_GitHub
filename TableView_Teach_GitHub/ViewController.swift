//
//  ViewController.swift
//  TableView_Teach_GitHub
//
//  Created by Valery on 06.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let restauratnNames = ["Балкан Гриль", "Бочка",
                            "Вкусные истории", "Дастархан",
                            "Индокитай", "Классик", "Шок",
                            "Bonsai","Burger Heroes", "Kitchen","Love&Life","Morris Pub","Sherlock Holmes","Speak Easy","X.O"
     ]
       var tableView: UITableView!
        var data: [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }
    func setTableView(){
        // Configure the table view
                tableView = UITableView(frame: view.bounds, style: .plain)
                tableView.dataSource = self
                tableView.delegate = self

                // Register the cell type
                tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

                // Add the table view to the view hierarchy
                view.addSubview(tableView)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restauratnNames.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

                // Configure the cell
                cell.textLabel?.text = restauratnNames[indexPath.row]
        cell.selectionStyle = .none
        cell.backgroundColor = .cyan
          cell.textLabel?.textColor = .red
       
       

        
        
                return cell

    }
    // MARK: - UITableViewDelegate (optional)

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // Handle row selection (optional)
            print("Selected row: \(data[indexPath.row])")
            tableView.deselectRow(at: indexPath, animated: true)
        }

    
    
}
