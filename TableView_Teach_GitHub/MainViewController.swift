//
//  MainViewController.swift
//  TableView_Teach_GitHub
//
//  Created by Valery on 06.09.2024.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restauratnNames = ["Балкан Гриль", "Бочка",
                           "Вкусные истории", "Дастархан",
                           "Индокитай", "Классик", "Шок",
                           "Bonsai","Burger Heroes", "Kitchen","Love&Life","Morris Pub","Sherlock Holmes","Speak Easy","X.O"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restauratnNames.count
    }
    
    //определение ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restauratnNames[indexPath.row]
       
        
        return cell
    }
}

  /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


