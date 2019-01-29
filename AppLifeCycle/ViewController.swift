//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by Mark Meretzky on 1/1/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {

    @IBOutlet weak var stateLabel: UILabel!;

    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Toggle the button's background color when pressed.
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == .red ? .green : .red;
    }
    
    //MARK: UIViewController lifecycle methods

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear(_:)");
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear(_:)");
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisppear(_:)");
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisppear(_:)");
    }
}
