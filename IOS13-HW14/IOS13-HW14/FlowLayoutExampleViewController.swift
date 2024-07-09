import UIKit
import SnapKit

class FlowLayoutExampleViewController: UIViewController {
    // MARK: - Outlets
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(FlowLayoutCell.self, forCellWithReuseIdentifier: FlowLayoutCell.identifier)
        view.backgroundColor = .systemBlue
        title = "Simple Example"
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }

    private func setupLayout() {
        collectionView.snp.makeConstraints { make in
            make.left.top.right.bottom.equalTo(view)
        }
    }
}



extension FlowLayoutExampleViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40 // Предполагаем, что у нас будет 20 элементов
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FlowLayoutCell.identifier, for: indexPath) as! FlowLayoutCell
        return cell
    }
    
}
