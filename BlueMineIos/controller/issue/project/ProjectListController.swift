//
//  ProjectListController.swift
//  BlueMineIos
//
//  Created by 袁俊耀 on 2019/2/2.
//  Copyright © 2019 袁俊耀. All rights reserved.
//

import UIKit

class ProjectListController:
    UIViewController,
    UITableViewDelegate,
    UITableViewDataSource
{

    @IBOutlet weak var projects: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        projects.delegate = self
        projects.dataSource = self
        projects.register(UINib(nibName: "ProjectCell", bundle: nil), forCellReuseIdentifier: "projectCell")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "projectCell", for: indexPath)
        return cell
    }

}
