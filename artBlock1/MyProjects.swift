//
//  MyProjects.swift
//  artBlock1
//
//  Created by Helen Hall on 12/12/21.
//

import Foundation
import SwiftUI


class MyProjects: ObservableObject {
    @Published var projects = [ProjectModel]()
    @Published var posts = [PostModel]()
    @Published var galleryPosts = [GalleryPostModel]()
}

struct ProjectModel: Identifiable{
    var name: String
    var id = UUID()
    var posts: [PostModel] = []
}
struct PostModel: Identifiable {
    var id = UUID()
    var title: String
    var noteText: String = ""
}

var testProjects = [
    ProjectModel(name: "Conehead"),
    ProjectModel(name: "Conehead 2")
]

struct GalleryPostModel: Identifiable {
    var title: String
    var id = UUID()
    var image: UIImage
}

