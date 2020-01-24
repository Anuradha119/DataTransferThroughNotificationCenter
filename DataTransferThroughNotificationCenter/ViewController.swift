//
//  ViewController.swift
//  DataTransferThroughNotificationCenter
//
//  Created by Marni Anuradha on 11/22/19.
//  Copyright © 2019 Marni Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var violetTF: UITextField!

    
    @IBOutlet weak var violetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(onBlueSubmitButtonTap(recData:)), name: NSNotification.Name("OnBlueSubmit"), object: nil)

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onSubmitButtonTap(_ sender: UIButton)
    {

    var bvc = storyboard?.instantiateViewController(withIdentifier: "BlueVC") as! BlueViewController
    present(bvc, animated: true)
    bvc.blueMsgLabel.text = self.violetTF.text!

    }
    @objc func onBlueSubmitButtonTap(recData:Notification)
    {
        print("Observing the data")
        print(recData.userInfo)
        
        violetLabel.text = recData.userInfo!["blueMsg"] as! String
    }
}

