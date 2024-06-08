//
//  SleepVC.swift
//  Deep Breathe
//
//  Created by Afnan Ahmed on 15/12/2023.
//

import UIKit

class SleepVC: UIViewController {

    @IBOutlet weak var sleepTVHeight: NSLayoutConstraint!
    @IBOutlet weak var sleepTV: UITableView!
    
    var titles = ["","","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        configerTV()
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

extension SleepVC: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func configerTV()
    {
        sleepTV.delegate = self
        sleepTV.dataSource = self
        sleepTV.register(UINib(nibName: "SleepTVC", bundle: .main), forCellReuseIdentifier: "SleepTVC")
        
        
        sleepTVHeight.constant = CGFloat(135*titles.count)
                
        UIView.animate(withDuration: 0.0) {
            self.view.layoutIfNeeded()
        }
    }
    
    
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return titles.count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SleepTVC = tableView.dequeueReusableCell(withIdentifier: "SleepTVC", for: indexPath) as! SleepTVC
            return cell
        }
        
   
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 128
        }
//        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//           return 50
//       }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  
        }
    }
