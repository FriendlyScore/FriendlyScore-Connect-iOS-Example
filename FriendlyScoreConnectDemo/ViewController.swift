//
//  ViewController.swift
//  FriendlyScoreConnectDemo
//
//  Created by Lukasz Czechowicz on 21/01/2020.
//  Copyright © 2020 Lukasz Czechowicz. All rights reserved.
//

import UIKit
import FriendlyScoreCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func launchTapHandler(_ sender: Any) {
        //You need to Sign-up for the free API keys through our Developer Console.
        let clientId = ClientId(stringLiteral: "[YOUR_CLIENT_ID]")
        let credentials = Credentials(clientId: clientId, userReference: "[YOUR_IDENTIFIER]", environment: .sandbox)
        
        FriendlyScore.eventsHandler = { event in
            switch event {
            case .userClosedView:
                print("user closed SDK view.")
            default: return
            }
        }
        
        FriendlyScore.errorsHandler = { e in
            print(e)
        }
        
        FriendlyScore.show(with: credentials)
    }
    
}


