import UIKit

enum ListSection {
    case myAlbums([Listitem])
    case peopleAndPlaces([Listitem])
    case mediaTypes([Listitem])
    case utilities([Listitem])
    case places([Listitem])

    var items: [Listitem] {
        switch self {
        case .myAlbums(let items),
             .peopleAndPlaces(let items),
             .mediaTypes(let items),
             .utilities(let items),
             .places(let items):
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
        case .places(_):
            return "Места"
        }
    }
}


