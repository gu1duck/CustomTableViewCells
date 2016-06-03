//
//  MyTableViewController.swift
//  BadEmail
//
//  Created by Jeremy Petter on 2016-06-02.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    @IBAction func addEmail(sender: AnyObject) {
        let email = Email(senderImage: UIImage(named: "daenerys")!, senderName: "Daenerys", body: "Today, my dragons ate...")
        emails?.append(email)

        //tableView.reloadData()

        let indexPath = NSIndexPath(forItem: emails!.count - 1, inSection: 0)

        tableView.beginUpdates()

        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Right)

        tableView.endUpdates()
    }
    var emails: [Email]?

    override func viewDidLoad() {
        super.viewDidLoad()

        let email1 = Email(senderImage: UIImage(named: "arya")!, senderName: "Arya", body: "I'm going to kill ...")
        let email2 = Email(senderImage: UIImage(named: "tyrion")!, senderName: "Tyrion", body: "I got screwed around by ...")
        let email3 = Email(senderImage: UIImage(named: "jon")!, senderName: "Jon", body: "I'm morose because ...")

        emails = [email1, email2, email3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let array = emails {
            return array.count
        }
        return 0;
    }

      override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let email = emails![indexPath.row]

        let cell = tableView.dequeueReusableCellWithIdentifier("EmailReuseIdentifier", forIndexPath: indexPath) as? EmailCell

            cell?.bodyLabel.text = email.body
            cell?.senderNameTextField.text = email.senderName
            cell?.senderImageView.image = email.senderImage

        return cell!
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
