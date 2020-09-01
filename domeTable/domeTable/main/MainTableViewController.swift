//
//  MainTableViewController.swift
//  domeTable
//
//  Created by 寇凤伟 on 2020/8/17.
//  Copyright © 2020 RX. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .tertiarySystemGroupedBackground
        //取消注释以下行以保留演示文稿之间的选择
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        //取消注释以下行以在该视图控制器的导航栏中显示“编辑”按钮
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    // MARK: - Table view data source    数据源
    // 数据的配置 有多少段，每段有多少行
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("选中我了\(indexPath.row + 1)")
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell.init(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "hhh")
        //var cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "hhh", for: indexPath)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "hhh")
    
        }
        cell.textLabel?.text = "狗儿"
        cell.detailTextLabel?.text = "人儿"
        cell.imageView?.image = UIImage(named: "下一步")
        cell.backgroundColor = .secondarySystemBackground

        // Configure the cell...

        return cell
    }
    

    /*
     //重写以支持表视图的条件编辑。
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
     //重写以支持编辑表格视图。
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
     //重写以支持重新排列表格视图。
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
     //重写以支持表格视图的有条件重新排列。
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
