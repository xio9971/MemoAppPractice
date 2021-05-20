//
//  ModalController.swift
//  crudTableview
//
//  Created by 민트팟 on 2021/05/18.
//

import Foundation
import UIKit

class ModalController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    var editTarget: Memo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let memo = editTarget {
            navigationItem.title = "메모 편집"
            textView.text = memo.content
        }else {
            navigationItem.title = "새 메모"
            textView.text = ""
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fSave(_ sender: UIButton) {
        
        guard let text = textView.text, text.count > 0 else {
            alert(message: "메모를 입력하세요")
            return
        }

        if let target = editTarget {
            target.content = text
            DataManager.shared.saveContext()
            NotificationCenter.default.post(name: ModalController.memoDidChange, object: nil)
        }else {
            DataManager.shared.addNewMemo(text)
            NotificationCenter.default.post(name: ModalController.newMemoDidInsert, object: nil)
        }
        
//        let newMemo = Memo(text)
//        Memo.dummyMemoList.append(newMemo)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func fCancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func alert(title: String = "알림", message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
}

extension ModalController {
    
    static let newMemoDidInsert = Notification.Name(rawValue: "newMemoDidInsert")
    static let memoDidChange = Notification.Name(rawValue: "memoDidChange")
}
