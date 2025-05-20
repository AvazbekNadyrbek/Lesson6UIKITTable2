//
//  ViewController.swift
//  Lesson6UIKIT
//
//  Created by Авазбек Надырбек уулу on 19.05.25.
//

import UIKit

class ViewController: UIViewController {
    
    let tabelData = ModelCard.allCards
    
    //1 Creating a table View
    private lazy var tableViewList: UITableView = {
        $0.dataSource = self
        $0.register(CardCellView.self, forCellReuseIdentifier: CardCellView.identifier)
       return $0
    }(UITableView(frame: view.frame, style: .plain))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableViewList)
    }
}

extension ViewController: UITableViewDataSource {
    // за то скольк ячеек будет в нащей таблице
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tabelData.count
    }
    // как будет выглядеть одна ячейка
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CardCellView.identifier, for: indexPath) as? CardCellView else { return UITableViewCell() }
            
        let cart = tabelData[indexPath.row]
        cell.setUpCell(modelCard: cart)
        cell.selectionStyle = .none
        return cell
    }
}



#Preview {
    ViewController()
}
