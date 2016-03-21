//
//  ViewController.swift
//  AlphaCamp_homework_TangPoetry
//
//  Created by Ka Ho on 18/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

let details_url = "https://kahopoon.net/poetry.php?show=content&id="

class PoemDetails_ViewController: UIViewController {

    var poem_id:String!
    var poem_title:String!
    var rawData = ["content":""]
    
    @IBOutlet weak var detailsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = self.poem_title
        
        let request_url = NSURL(string: (details_url + poem_id))
        let data = NSData(contentsOfURL: request_url!)
        
        do {
            let object = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
            if let dictionary = object as? [String: AnyObject] {
                readJSONObject(dictionary)
            self.detailsView.text = rawData["content"]
            }
        } catch {
            // Handle Error
        }
    }

    func readJSONObject(object: [String: AnyObject]) {
        guard let results = object["results"] as? [[String: AnyObject]] else { return }
        
        for result in results {
            guard let content = result["content"] as? String else { break }
            rawData["content"] = content
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
