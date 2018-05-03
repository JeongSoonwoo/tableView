//
//  ViewController.swift
//  tableView
//
//  Created by 정순우 on 2018. 5. 3..
//  Copyright © 2018년 정순우. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    var animals = ["Cat","Tiger","Lion","Monkey","Cow"]
    var country = ["Korea","China","Africa","Japen","Aus"]

    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //delegate와 ViewController 의 연결
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //row의 수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell 의 재사용
        let identifier = "RE"
        //cell 을 하나 메모리 할당하고 재사용을 위해 저장("RE")
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        //배열에 있는 데이터를 cell 에 넣기
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        
        //image push
        let myImage = UIImage(named: animals[indexPath.row])
        cell.imageView?.image = myImage
        
        return cell;
    }
    
    

}

