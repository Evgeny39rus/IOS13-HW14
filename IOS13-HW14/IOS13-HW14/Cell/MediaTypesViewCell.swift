












import UIKit

// Определение класса ячейки для отображения типов медиа
class MediaTypesViewCell: UITableViewCell {
    
    // UI элементы
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let typeNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16)
        return label
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
        addSubview(iconImageView)
        addSubview(typeNameLabel)
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        typeNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 30),
            iconImageView.heightAnchor.constraint(equalToConstant: 30),
            
            typeNameLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8),
            typeNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            typeNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
    // Конфигурация ячейки
    func configure(with mediaType: MediaType) {
        iconImageView.image = UIImage(named: mediaType.iconName)
        typeNameLabel.text = mediaType.name
    }
}

// Модель для типа медиа
struct MediaType {
    let name: String
    let iconName: String
}

