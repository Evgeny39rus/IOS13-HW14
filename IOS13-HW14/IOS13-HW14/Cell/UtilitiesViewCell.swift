











import UIKit

// Определение класса ячейки для утилит
class UtilitiesViewCell: UITableViewCell {
    
    // UI элемент
    private let utilityButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    // Инициализация
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Настройка вьюх
    private func setupViews() {
        addSubview(utilityButton)
        
        utilityButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            utilityButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            utilityButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            utilityButton.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            utilityButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
    
    // Конфигурация ячейки
    func configure(with utility: Utility) {
        utilityButton.setTitle(utility.name, for: .normal)
    }
}

// Модель для утилиты
struct Utility {
    let name: String
}
