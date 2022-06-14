//
//  Item.swift
//  SwiftUIMongoDB
//
//  Created by Alex Nagy on 11.06.2022.
//

import RealmSwift

final class Item: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name = LoremIpsum.randomName()
    @Persisted(originProperty: "items") var group: LinkingObjects<Group>
}
