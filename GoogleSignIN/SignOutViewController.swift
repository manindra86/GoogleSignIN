//
//  SignOutViewController.swift
//  GoogleSignIN
//
//  Created by Manindra on 20/08/15.
//  Copyright (c) 2015 10C Internet Pvt. Ltd. All rights reserved.
//

import UIKit

class SignOutViewController: UIViewController ,GIDSignInUIDelegate{

	@IBOutlet weak var nameField: UILabel!
	@IBOutlet weak var emailField: UILabel!
	
	
	
	@IBAction func signOutTapped(sender: AnyObject) {
		GIDSignIn.sharedInstance().signOut()
		
		
		//let myStoryBoard:UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
		
		let loggedInPage = self.storyboard!.instantiateViewControllerWithIdentifier("viewController") as! ViewController
		
		let loggedInPageNav = UINavigationController(rootViewController: loggedInPage)
		
		let appDelegate :AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate!
		
		
		
		
		appDelegate.window?.rootViewController = loggedInPageNav

		
		
	}
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
	
		var defaults :NSUserDefaults = NSUserDefaults.standardUserDefaults()
		self.nameField.text = defaults.objectForKey("name")! as? String
		self.emailField.text = defaults.objectForKey("email")! as? String

		
		
		
	GIDSignIn.sharedInstance().uiDelegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*
	
	let myStoryBoard:UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
	
	let protectedPage = myStoryBoard.instantiateViewControllerWithIdentifier("signOutViewController") as! ViewController
	
	let protectedPageNav = UINavigationController(rootViewController: protectedPage)
	
	self.window?.rootViewController = protectedPageNav
	
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
