//
//  ViewController.swift
//  GoogleSignIN
//
//  Created by Manindra on 20/08/15.
//  Copyright (c) 2015 10C Internet Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,GIDSignInUIDelegate {

	@IBOutlet weak var signInButton: GIDSignInButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		GIDSignIn.sharedInstance().uiDelegate = self
		
				
		
		
		// Do any additional setup after loading the view, typically from a nib.
	}

	func signInDone(){
	
	
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	/*func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
  withError error: NSError!) {
	if (error == nil) {
		// Perform any operations on signed in user here.
		let userId = user.userID                  // For client-side use only!
		let idToken = user.authentication.idToken // Safe to send to the server
		let name = user.profile.name
		let email = user.profile.email
		// ...
	} else {
		println("\(error.localizedDescription)")
	}
	}*/
	
	
	func signInWillDispatch(signIn: GIDSignIn!, error: NSError!) {
 
	}
	
	// Present a view that prompts the user to sign in with Google
	func signIn(signIn: GIDSignIn!,
		presentViewController viewController: UIViewController!) {
			self.presentViewController(viewController, animated: true, completion:nil)
	}
	
	// Dismiss the "Sign in with Google" view
	func signIn(signIn: GIDSignIn!,
		dismissViewController viewController: UIViewController!) {
			self.dismissViewControllerAnimated(true, completion: nil)
	}
	
}

