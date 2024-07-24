import UIKit

final class MyAlbumsViewCell: UICollectionViewCell {
    // MARK: Properties
    
    static let identifier = "MyAlbumsViewCell"
    
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
        return stack
    }()
    
    func configureCell(imageName: String, title: String, filesCount: String) {
        albumsImage.image = UIImage(named: imageName)
        albumsTitle.text = title
        filesCountInAlbum.text = filesCount
    }
}

