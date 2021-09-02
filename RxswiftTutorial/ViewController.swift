//
//  ViewController.swift
//  RxswiftTutorial
//
//  Created by Sivaranjani Venkatesh on 24/8/21.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    let arrayList = Observable.just(["Siva","Ranjani", "Kavi", "Haniskar","Sekar", "Venkat"])
    // we need to create a disposable bag for memory management
    let disposableBag = DisposeBag()
    
   
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        arrayList.bind(to: tableview.rx.items(cellIdentifier: "cellId")) {(tv,arrayList,cell) in
            cell.textLabel?.text = arrayList
            
            
        }
        .disposed(by: disposableBag)
    }
    
    


}

