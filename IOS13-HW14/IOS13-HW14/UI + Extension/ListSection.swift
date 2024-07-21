import UIKit

enum ListSection {
    case myAlbums([Listitem]) // -> 0
    case peopleAndPlaces([Listitem]) // -> 1
    case mediaTypes([Listitem]) // -> 2
    case utilities([Listitem])
    case places([places])
    
    var items: [Listitem] {
        switch self {
        case .myAlbums(let items),
             .peopleAndPlaces(let items),
             .mediaTypes(let items),
             .utilities(let items):
            return items
        case .places(_):
            <#code#>
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

