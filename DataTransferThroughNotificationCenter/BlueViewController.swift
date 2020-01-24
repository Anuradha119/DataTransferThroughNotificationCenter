//
//  BlueViewController.swift
//  DataTransferThroughNotificationCenter
//
//  Created by Marni Anuradha on 11/22/19.
//  Copyright © 2019 Marni Anuradha. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var blueMsgLabel: UILabel!
    
    @IBOutlet weak var blueMsgTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBlueSubmitButtonTap(_ sender: UIButton) {
        var dataDictionary = ["blueMsg":blueMsgTF.text!]
        NotificationCenter.default.post(name:NSNotification.Name("OnBlueSubmit"), object:self, userInfo: dataDictionary)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
