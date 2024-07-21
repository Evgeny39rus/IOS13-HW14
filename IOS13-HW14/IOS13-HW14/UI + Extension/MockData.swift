//import UIKit
//
//struct MockData {
//    static let shared = MockData()
//
//    private let myAlbums: ListSection = {
//        .myAlbums([
//            .init(image: "Recent", title: "Недавние", countFiles: "765"),
//            .init(image: "Instagram", title: "Instagram", countFiles: "54"),
//            .init(image: "WhatsApp", title: "WhatsApp", countFiles: "43"),
//            .init(image: "Favorites", title: "Избранные", countFiles: "32"),
//            .init(image: "NOMO", title: "NOMO", countFiles: "34"),
//            .init(image: "VN", title: "VN", countFiles: "78"),
//            .init(image: "Lightroom", title: "Lightroom", countFiles: "76"),
//            .init(image: "Pinterest", title: "Pinterest", countFiles: "55")
//        ])
//    }()
//
//    private let peopleAndPlaces: ListSection = {
//        .peopleAndPlaces([
//            .init(image: "people", title: "Люди", countFiles: "12"),
//            .init(image: "place", title: "Места", countFiles: "315")
//        ])
//    }()
//
//    private let mediaTypes: ListSection = {
//        .mediaTypes([
//            .init(image: "video", title: "Видео", countFiles: "118"),
//            .init(image: "person.crop.square", title: "Селфи", countFiles: "45"),
//            .init(image: "livephoto", title: "Фото live Photos", countFiles: "115"),
//            .init(image: "cube", title: "Портреты", countFiles: "15")
//        ])
//    }()
//}
import UIKit

struct MockData {
    static let shared = MockData()

    let myAlbums: ListSection = .myAlbums([
        ListItem(image: "recent", title: "Недавние", countFiles: "765"),
        ListItem(image: "Instagram", title: "Instagram", countFiles: "54"),
        // Добавьте другие элементы по необходимости
    ])

    let peopleAndPlaces: ListSection = .peopleAndPlaces([
        ListItem(image: "people", title: "Люди", countFiles: "12"),
        ListItem(image: "place", title: "Места", countFiles: "315")
    ])

    let mediaTypes: ListSection = .mediaTypes([
        ListItem(image: "video", title: "Видео", countFiles: "118"),
        ListItem(image: "person.crop.square", title: "Селфи", countFiles: "45")
    ])

    let utilities: ListSection = .utilities([
        ListItem(image: "settings", title: "Настройки", countFiles: "34")
    ])

    let places: ListSection = .places([
        Places(location: "Париж", description: "Город света", image: "paris"),
        Places(location: "Лондон", description: "Город тумана", image: "london")
    ])

    var sections: [ListSection] {
        [myAlbums, peopleAndPlaces, mediaTypes, utilities, places]
    }
}

