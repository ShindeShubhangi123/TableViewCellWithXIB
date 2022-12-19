import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    @IBOutlet weak var StudentDetailCell: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        StudentDetailCell.delegate = self
        StudentDetailCell.dataSource = self
        
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        self.StudentDetailCell.register(nibName, forCellReuseIdentifier: "TableViewCell")
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TableViewCell = self.StudentDetailCell.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        
        TableViewCell?.stuRollNO.text = "11"
        TableViewCell!.stuName.text = "Shinde Shubhangi"
        TableViewCell!.stuDepartment.text = "MCA"
        
        return TableViewCell ?? UITableViewCell()
        
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
        
    }
}
    



