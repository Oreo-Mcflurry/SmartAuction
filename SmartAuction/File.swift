//
//  File.swift
//  SmartAuction
//
//  Created by A_Mcflurry on 2/25/24.
//

import Foundation
import RealmSwift

class Categorys: Object {
	@Persisted(primaryKey: true) var id: UUID
	@Persisted var categoryName: String
	@Persisted var ordered: Int
	@Persisted var stared: List<StaredProperty>
}

class StaredProperty: Object {
	@Persisted(primaryKey: true) var id: UUID
	@Persisted var addDate: Date

	@Persisted var saleDate: Date
	@Persisted var mainImage: String
	@Persisted var startedPrice: Int
	@Persisted var memo: Memo?
}

class Memo: Object {
	@Persisted(primaryKey: true) var id: UUID
	@Persisted var addDate: Date

	// 1.0은 여기까지 하고, 추후에 이미지나 다른 요소 추가

	@Persisted var memo: String?
}
