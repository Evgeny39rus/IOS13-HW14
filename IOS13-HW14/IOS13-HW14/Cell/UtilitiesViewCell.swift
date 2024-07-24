import UIKit

final class UtilitiesViewCell: UICollectionViewCell {
    static let identifier = "UtilitiesViewCell"
    
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private let filesCountLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(filesCountLabel)
        
        imageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(8)
        }
        
        filesCountLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(8)
            make.bottom.equalToSuperview().offset(-8)
        }
    }
    
    func configureCell(imageName: String, title: String, filesCount: Int) {
        imageView.image = UIImage(named: imageName)
        titleLabel.text = title
        filesCountLabel.text = "Files: \(filesCount)"
    }
}

