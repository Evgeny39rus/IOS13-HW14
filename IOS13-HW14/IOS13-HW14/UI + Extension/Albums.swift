import UIKit
import SnapKit

final class AlbumsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // MARK: UI
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .none
        collectionView.bounces = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MyAlbumsViewCell.self,
                                forCellWithReuseIdentifier: MyAlbumsViewCell.identifier)
        collectionView.register(PeopleAndPlacesViewCell.self,
                                forCellWithReuseIdentifier: PeopleAndPlacesViewCell.identifier)
        collectionView.register(MediaTypesViewCell.self,
                                forCellWithReuseIdentifier: MediaTypesViewCell.identifier)
        collectionView.register(UtilitiesViewCell.self,
                                forCellWithReuseIdentifier: UtilitiesViewCell.identifier)
        collectionView.register(HeaderSupplementaryView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: HeaderSupplementaryView.identifier)
        collectionView.collectionViewLayout = createLayout()
        return collectionView
    }()
    
   let sections = MockData.shared.sections
    
    
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
      //  viewDidLoad()
        setupAlbumsBar()
        setupViews()
        setupLayout()
    }
    
    // MARK: Setup
    
    func setupAlbumsBar() {
        _ = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.setLeftBarButton(UIBarButtonItem(
            title: nil,
            image: UIImage(systemName: "plus"),
            primaryAction: UIAction(handler: {_ in self.dismiss(animated: true)}),
            menu: nil), animated: true)
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        collectionView.snp.makeConstraints {
            $0.top.equalTo(additionalSafeAreaInsets)
            $0.edges.equalTo(view)
        }
    }

}
