import UIKit
class MediaTypesViewCell: UICollectionViewCell {
    static let identifier = "MediaTypesViewCell"
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(iconImageView)
        contentView.addSubview(typeNameLabel)
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        typeNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            iconImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 30),
            iconImageView.heightAnchor.constraint(equalToConstant: 30),
            
            typeNameLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8),
            typeNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            typeNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configureCell(imageName: String, title: String, filesCount: String) {
        iconImageView.image = UIImage(named: imageName)
        typeNameLabel.text = "\(title) (\(filesCount))"
    }
}
