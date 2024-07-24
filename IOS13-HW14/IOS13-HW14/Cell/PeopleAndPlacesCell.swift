import UIKit
import SnapKit

class PeopleAndPlacesViewCell: UICollectionViewCell {
    
    // MARK: Properties
    
    static let identifier = "PeopleAndPlacesViewCell"
    
    // MARK: UI
    
    private let albumsImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let albumsTitle: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let filesCountInAlbum: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        return label
    }()
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        return stack
    }()
    
    // MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Setup

    private func setupViews() {
        backgroundColor = .white
        contentView.addSubview(stack)
        stack.addArrangedSubview(albumsImage)
        stack.addArrangedSubview(albumsTitle)
        stack.addArrangedSubview(filesCountInAlbum)
    }
    
    func configureCell(imageName: String, title: String, filesCount: String) {
        albumsImage.image = UIImage(named: imageName)
        albumsTitle.text = title
        filesCountInAlbum.text = filesCount
    }

    private func setupLayout() {
        stack.snp.makeConstraints {
            $0.top.left.bottom.right.equalTo(contentView)
            $0.width.equalTo(170)
            $0.height.equalTo(300)
        }
    }

}
//
//import UIKit
//
//class PeopleAndPlacesViewCell: UICollectionViewCell {
//    static let identifier = "PeopleAndPlacesViewCell"
//    
//    private let imageView = UIImageView()
//    private let titleLabel = UILabel()
//    private let filesCountLabel = UILabel()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func setupViews() {
//        addSubview(imageView)
//        addSubview(titleLabel)
//        addSubview(filesCountLabel)
//        
//        imageView.snp.makeConstraints { make in
//            make.top.leading.trailing.equalToSuperview()
//            make.height.equalTo(imageView.snp.width)
//        }
//        
//        titleLabel.snp.makeConstraints { make in
//            make.top.equalTo(imageView.snp.bottom).offset(8)
//            make.leading.trailing.equalToSuperview().inset(8)
//        }
//        
//        filesCountLabel.snp.makeConstraints { make in
//            make.top.equalTo(titleLabel.snp.bottom).offset(4)
//            make.leading.trailing.equalToSuperview().inset(8)
//            make.bottom.equalToSuperview().offset(-8)
//        }
//    }
//    
//    func configureCell(imageName: String, title: String, filesCount: Int) {
//        imageView.image = UIImage(named: imageName)
//        titleLabel.text = title
//        filesCountLabel.text = "Files: \(filesCount)"
//    }
//}
