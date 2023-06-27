// MARK: - Mindful Movement

import Foundation

struct MindfulMovement {
    let name: String
    let complexity: Int
    let type: String
    let description: String
    let steps: [String]
}

class MindfulMovementManager {
    var movements = [MindfulMovement]()
    
    func addMovement(_ movement: MindfulMovement) {
        movements.append(movement)
    }
    
    func removeMovement(_ movement: MindfulMovement) {
        if let index = movements.firstIndex(of: movement) {
            movements.remove(at: index)
        }
    }
    
    func listMovements() -> [MindfulMovement] {
        // return a list of all the current movements
        return movements
    }
}

protocol MindfulMovementView {
    func showMovementDetails(_ movement: MindfulMovement)
}

class MindfulMovementDetailsViewController: UIViewController, MindfulMovementView {
    var movement: MindfulMovement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showMovementDetails(movement!)
    }
    
    func showMovementDetails(_ movement: MindfulMovement) {
        // update UI to show the movement details
    }
}

class CreateMindfulMovementViewController: UIViewController {
    let manager = MindfulMovementManager()
    var nameTextField: UITextField!
    var complexityTextField: UITextField!
    var typeTextField: UITextField!
    var descriptionTextField: UITextField!
    var stepsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
    }
    
    func configureTextFields() {
        nameTextField = UITextField()
        complexityTextField = UITextField()
        typeTextField = UITextField()
        descriptionTextField = UITextField()
        stepsTextField = UITextField()
    }
    
    func createMovement() {
        let name = nameTextField.text!
        let complexity = complexityTextField.text!
        let type = typeTextField.text!
        let description = descriptionTextField.text!
        let steps = stepsTextField.text!
        
        let movement = MindfulMovement(name: name, complexity: Int(complexity) ?? 0, type: type, description: description, steps: steps.components(separatedBy: ","))
        manager.addMovement(movement)
    }
}

class MindfulMovementTableViewCell: UITableViewCell {
    var movement: MindfulMovement? {
        didSet {
            nameLabel.text = movement?.name
            complexityLabel.text = "\(movement?.complexity ?? 0)"
            typeLabel.text = movement?.type
            descriptionLabel.text = movement?.description
            stepsLabel.text = movement?.steps.joined(separator: ", ")
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    let complexityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let typeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    let stepsLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView(arrangedSubviews: [nameLabel, complexityLabel, typeLabel, StepsLabel, descriptionLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12).isActive = true
        stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MindfulMovementTableViewController: UITableViewController {
    let manager = MindfulMovementManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.listMovements().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MindfulMovementTableViewCell", for: indexPath) as! MindfulMovementTableViewCell
        let movement = manager.listMovements()[indexPath.row]
        cell.movement = movement
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movement = manager.listMovements()[indexPath.row]
        let vc = MindfulMovementDetailsViewController()
        vc.movement = movement
        navigationController?.pushViewController(vc, animated: true)
    }
}