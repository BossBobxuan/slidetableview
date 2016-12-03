//
//  ViewController.swift
//  slidetableview
//
//  Created by Bossxuan on 16/11/29.
//  Copyright © 2016年 Bossxuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var slidetableview : slidetableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slidetableview = slidetableView(size:CGSize(width: 100,height : self.view.frame.height), delegate: self)
        self.view.addSubview(slidetableview!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "aaa")
        if cell == nil
        {
            cell = UITableViewCell(style: .default, reuseIdentifier: "aaa")
        }
        return cell!
    }


}

