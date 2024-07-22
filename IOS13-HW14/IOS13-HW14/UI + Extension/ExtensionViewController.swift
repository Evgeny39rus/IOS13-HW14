//import UIKit
//
//extension AlbumsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        sections.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        sections[section].count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        switch sections[indexPath.section] {
//        case .myAlbums(let myAlbums):
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsViewCell.identifier, for: indexPath) as? MyAlbumsViewCell
//            else { return UICollectionViewCell() }
//            cell.configureCell(imageName: myAlbums[indexPath.row].image, title: myAlbums[indexPath.row].title, filesCount: myAlbums[indexPath.row].countFiles)
//            return cell
//            
//        case .peopleAndPlaces(let peopleAndPlaces):
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PeopleAndPlacesViewCell.identifier, for: indexPath) as? PeopleAndPlacesViewCell
//            else { return UICollectionViewCell() }
//            cell.configureCell(imageName: peopleAndPlaces[indexPath.row].image,
//                               title: peopleAndPlaces[indexPath.row].title,
//                               filesCount: peopleAndPlaces[indexPath.row].countFiles)
//            return cell
//            
//        case .utilities(let utilities):
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UtilitiesViewCell.identifier, for: indexPath) as? UtilitiesViewCell else {
//                return UICollectionViewCell()
//            }
//            cell.configureCell(imageName: utilities[indexPath.row].image,
//                               title: utilities[indexPath.row].title,
//                               filesCount: utilities[indexPath.row].countFiles)
//            return cell
//            
//            func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//                switch kind {
//                case UICollectionView.elementKindSectionHeader:
//                    let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
//                                                                                 withReuseIdentifier: HeaderSupplementaryView.identifier,
//                                                                                 for: indexPath) as! HeaderSupplementaryView
//                    header.configureHeader(categoryName: sections[indexPath.section].title)
//                    return header
//                default:
//                    return UICollectionReusableView()
//                }
//            }
//            
//            // MARK: Create Layout
//            
//            func createLayout() -> UICollectionViewCompositionalLayout {
//                UICollectionViewCompositionalLayout { [weak self] sectionIndex, _ in
//                    guard let self = self else { return nil }
//                    let section = self.sections[sectionIndex]
//                    switch section {
//                    case .myAlbums(_):
//                        return self.createMyAlbumsSections()
//                    case .peopleAndPlaces(_):
//                        return self.createPeopleAndPlaceSections()
//                    case .mediaTypes(_):
//                        return self.createMediaTypesSections()
//                    case .utilities(_):
//                        return self.createUtilitiesSections()
//                    }
//                }
//            }
//            private func createMyAlbumsSections() -> NSCollectionLayoutSection {
//                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
//                                                      heightDimension: .fractionalHeight(1))
//                
//                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
//                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0)
//                
//                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2),
//                                                       heightDimension: .fractionalWidth(1 / 1.9 * 2))
//                
//                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2)
//                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
//                
//                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
//                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 8, bottom: 10, trailing: 5)
//                sectionLayout.orthogonalScrollingBehavior = .groupPaging
//                
//                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
//                                                                     heightDimension: .estimated(30))
//                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
//                                                                                      elementKind: UICollectionView.elementKindSectionHeader,
//                                                                                      alignment: .top)
//                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
//                
//                return sectionLayout
//            }
//            
//            private func createPeopleAndPlaceSections() -> NSCollectionLayoutSection {
//                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
//                                                      heightDimension: .fractionalHeight(1))
//                
//                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
//                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0)
//                
//                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 1.8),
//                                                       heightDimension: .fractionalWidth(1 / 1.9))
//                
//                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: layoutItem, count: 2)
//                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
//                
//                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
//                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 8, bottom: 10, trailing: 5)
//                sectionLayout.orthogonalScrollingBehavior = .groupPaging
//                
//                let layoutSectionHeaderSize = NSCollectionLayoutSize(
//                    widthDimension: .fractionalWidth(0.93),
//                    heightDimension: .estimated(30)
//                )
//                
//                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
//                    layoutSize: layoutSectionHeaderSize,
//                    elementKind: UICollectionView.elementKindSectionHeader,
//                    alignment: .top
//                )
//                
//                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
//                
//                return sectionLayout
//            }
//            private func createMediaTypesSections() -> NSCollectionLayoutSection {
//                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
//                                                      heightDimension: .fractionalHeight(1))
//                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
//                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
//                
//                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
//                                                       heightDimension: .absolute(40))
//                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
//                
//                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
//                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 17, bottom: 17, trailing: 17)
//                
//                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
//                                                                     heightDimension: .estimated(50))
//                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
//                                                                                      elementKind: UICollectionView.elementKindSectionHeader,
//                                                                                      alignment: .top)
//                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
//                
//                return sectionLayout
//            }
//            private func createUtilitiesSections() -> NSCollectionLayoutSection {
//                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
//                                                      heightDimension: .fractionalHeight(1))
//                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
//                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
//                
//                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
//                                                       heightDimension: .absolute(40))
//                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
//                
//                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
//                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 17, bottom: 17, trailing: 17)
//                
//                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
//                                                                     heightDimension: .estimated(50))
//                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
//                                                                                      elementKind: UICollectionView.elementKindSectionHeader,
//                                                                                      alignment: .top)
//                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
//                
//                return sectionLayout
//            }
//        }
//       
//
//
import UIKit
import SnapKit

extension AlbumsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return MockData.shared.sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockData.shared.sections[section].items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let section = MockData.shared.sections[indexPath.section]
        switch section {
        case .myAlbums(let myAlbums):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsViewCell.identifier, for: indexPath) as? MyAlbumsViewCell else {
                return UICollectionViewCell()
            }
//            cell.configureCell(imageName: myAlbums[indexPath.row].image, title: myAlbums[indexPath.row].title, filesCount: myAlbums[indexPath.row].countFiles)
//            return cell
            
        case .peopleAndPlaces(let peopleAndPlaces):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PeopleAndPlacesViewCell.identifier, for: indexPath) as? PeopleAndPlacesViewCell else {
                return UICollectionViewCell()
            }
            cell.configureCell(imageName: peopleAndPlaces[indexPath.row].image, title: peopleAndPlaces[indexPath.row].title, filesCount: peopleAndPlaces[indexPath.row].countFiles)
            return cell
            
        case .utilities(let utilities):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UtilitiesViewCell.identifier, for: indexPath) as? UtilitiesViewCell else {
                return UICollectionViewCell()
            }
            cell.configureCell(imageName: utilities[indexPath.row].image, title: utilities[indexPath.row].title, filesCount: utilities[indexPath.row].countFiles)
            return cell
            
        case .mediaTypes(let mediaTypes):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MediaTypesViewCell.identifier, for: indexPath) as? MediaTypesViewCell else {
                return UICollectionViewCell()
            }
            cell.configureCell(imageName: mediaTypes[indexPath.row].image, title: mediaTypes[indexPath.row].title, filesCount: mediaTypes[indexPath.row].countFiles)
            return cell
        case .places(_):
            <#code#>
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderSupplementaryView.identifier, for: indexPath) as! HeaderSupplementaryView
            header.configureHeader(categoryName: MockData.shared.sections[indexPath.section].title)
            return header
        default:
            return UICollectionReusableView()
        }
    }
    
    // MARK: Create Layout
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { [weak self] sectionIndex, _ in
            guard let self = self else {
                return self?.createEmptySection() // Используем пустую секцию вместо nil
            }
            let section = MockData.shared.sections[sectionIndex]
            switch section {
            case .myAlbums(_):
                return self.createMyAlbumsSections()
            case .peopleAndPlaces(_):
                return self.createPeopleAndPlaceSections()
            case .mediaTypes(_):
                return self.createMediaTypesSections()
            case .utilities(_):
                return self.createUtilitiesSections()
            }
        }
    }
    
    private func createMyAlbumsSections() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        
        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2),
                                               heightDimension: .fractionalWidth(1 / 1.9 * 2))
        
        let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2)
        layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
        
        let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
        sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 8, bottom: 10, trailing: 5)
        sectionLayout.orthogonalScrollingBehavior = .groupPaging
        
        let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                             heightDimension: .estimated(30))
        let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                              elementKind: UICollectionView.elementKindSectionHeader,
                                                                              alignment: .top)
        sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
        
        return sectionLayout
    }
    
    private func createPeopleAndPlaceSections() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        
        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 1.8),
                                               heightDimension: .fractionalWidth(1 / 1.9))
        
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: layoutItem, count: 2)
        layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
        
        let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
        sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 8, bottom: 10, trailing: 5)
        sectionLayout.orthogonalScrollingBehavior = .groupPaging
        
        let layoutSectionHeaderSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.93),
            heightDimension: .estimated(30)
        )
        
        let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: layoutSectionHeaderSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top
        )
        
        sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
        
        return sectionLayout
    }
    
    private func createMediaTypesSections() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                               heightDimension: .absolute(40))
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
        
        let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
        sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 17, bottom: 17, trailing: 17)
        
        let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                             heightDimension: .estimated(50))
        let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                              elementKind: UICollectionView.elementKindSectionHeader,
                                                                              alignment: .top)
        sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
        
        return sectionLayout
    }
    
    private func createUtilitiesSections() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                              heightDimension: .fractionalHeight(1))
        let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                               heightDimension: .absolute(40))
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
        
        let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
        sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 17, leading: 17, bottom: 17, trailing: 17)
        
        let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                             heightDimension: .estimated(50))
        let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                              elementKind: UICollectionView.elementKindSectionHeader,
                                                                              alignment: .top)
        sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
        
        return sectionLayout
    }

    private func createEmptySection() -> NSCollectionLayoutSection {
        // Создать и вернуть пустую секцию
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(1.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
}
