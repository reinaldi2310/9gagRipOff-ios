//
//  ViewController.swift
//  9gagRipOff
//
//  Created by User on 12/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var models = [Post]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        models.append(Post(title: "First Post",
                           userImage: "userImage",
                           userName: "Kekeyi",
                           postImage: "post_1",
                           numOfLikes: 100,
                           numOfComments: 30))
        models.append(Post(title: "Second Post",
                                  userImage: "userImage",
                                  userName: "Kekeyi",
                                  postImage: "post_1",
                                  numOfLikes: 50,
                                  numOfComments: 10))
        models.append(Post(title: "Third Post",
                                  userImage: "userImage",
                                  userName: "Kekeyi",
                                  postImage: "post_3",
                                  numOfLikes: 1000,
                                  numOfComments: 324))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.configure(object: models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cant touch this")
    }
}

struct Post {
    let title: String
    let userImage: String
    let userName: String
    let postImage: String
    let numOfLikes: Int
    let numOfComments: Int
}

