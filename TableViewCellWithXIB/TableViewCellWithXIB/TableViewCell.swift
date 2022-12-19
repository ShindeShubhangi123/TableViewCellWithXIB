import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var stuRollNO: UILabel!
    @IBOutlet weak var stuName: UILabel!
    @IBOutlet weak var stuDepartment: UILabel!
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
