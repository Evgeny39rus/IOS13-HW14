//import UIKit
//
//class HeaderSupplementaryView: UICollectionReusableView {
//    // MARK: Properties
//    
//    static let identifier = "HeaderSupplementaryView"
//    
//    // MARK: UI
//    
//    let headerLable: UILabel = {
//        let label = UILabel()
//        label.textColor = .black
//        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
//        return label
//    }()
//    
//    // MARK: Lifecycle
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        clipsToBounds = true
//        setupViews()
//        setupLayout()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        headerLable.text = nil
//    }
//}
import UIKit

class HeaderSupplementaryView: UICollectionReusableView {
    // MARK: Properties
    
    static let identifier = "HeaderSupplementaryView"
    
    // MARK: UI
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    // MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        headerLabel.text = nil
    }
    
    // MARK: Setup Methods
    
    private func setupViews() {
        addSubview(headerLabel)
    }
    
    private func setupLayout() {
        // Assuming you're using Auto Layout, you would set up your constraints here
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}
