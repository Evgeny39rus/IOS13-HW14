import UIKit

enum ListSection {
    case myAlbums([ListItem]) // -> 0
    case peopleAndPlaces([ListItem]) // -> 1
    case mediaTypes([ListItem]) // -> 2
    case utilities([ListItem])
    case places([Places])
    
    var items: [ListItem] {
        switch self {
        case .myAlbums(let items),
             .peopleAndPlaces(let items),
             .mediaTypes(let items),
             .utilities(let items):
            return items
        }
    }
    
    var count: Int {
        items.count
    }
    
    var title: String {
        switch self {
        case .myAlbums(_):
            return "Мои альбомы"
        case .peopleAndPlaces(_):
            return "Люди и места"
        case .mediaTypes(_):
            return "Типы медиа"
        case .utilities(_):
            return "Другое"
        }
    }
}

