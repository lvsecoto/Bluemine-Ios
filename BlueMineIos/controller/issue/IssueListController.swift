//
//  ViewController.swift
//  BlueMineIos
//
//  Created by 袁俊耀 on 2019/1/31.
//  Copyright © 2019 袁俊耀. All rights reserved.
//

import UIKit

class IssueListController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var issues: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        issues.delegate = self
        issues.dataSource = self
        issues.register(UINib(nibName: "IssueCell", bundle: nil), forCellReuseIdentifier: "issueCell")
    }
    
    @IBAction func showProjects(_ sender: Any) {
        navigationController?.pushViewController(ProjectListController(), animated: true)
    }

    @IBAction func showSettings(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "issueCell", for: indexPath)
        
        return cell
    }

}

