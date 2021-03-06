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
        let credentials = Credentials(clientId: clientId, userReference: "user_reference", environment: .production)
        
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
        
        /*
            Optional - Built-in themes = .light, .dark, .custom(themePath: String). Default theme is .light
        */
        let connectTheme: ConnectTheme = .light

        /*
            Optional - Set a flag whether to display only the back button on the screen with the list of banks. Default is true
        */
        let showOnlyBackButtonIcon: Bool = true


        /*
            Optional - The label to show on the back button on the view with the list of banks to direct users back to your app. Default label is "Back".
        */
        let backButtonLabel: String = "Back"

        FriendlyScore.show(with: credentials, theme: connectTheme, showOnlyBackButtonIcon: showOnlyBackButtonIcon, backButtonLabel: backButtonLabel)
    }
    
}


