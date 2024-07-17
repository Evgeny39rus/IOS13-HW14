import UIKit

class HeaderSupplementaryView: UICollectionReusableView {
    // MARK: Properties
    
    static let identifier = "HeaderSupplementaryView"
    
    // MARK: UI
    
    let headerLable: UILabel = {
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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        headerLable.text = nil
    }
}
