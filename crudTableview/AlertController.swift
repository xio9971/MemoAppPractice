//
//  AlertController.swift
//  crudTableview
//
//  Created by 정창규 on 2021/05/19.
//

import UIKit

public class AlertController: UIViewController {

    public func alert(title: String = "알림", message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
}
