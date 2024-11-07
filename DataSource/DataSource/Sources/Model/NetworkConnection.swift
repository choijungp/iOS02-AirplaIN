//
//  NetworkConnection.swift
//  DataSource
//
//  Created by 최정인 on 11/7/24.
//

import Foundation

public struct NetworkConnection {
    public let id: UUID
    public let name: String

    public init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}

extension NetworkConnection: Equatable {
    public static func == (lhs: NetworkConnection, rhs: NetworkConnection) -> Bool {
        return lhs.id == rhs.id
    }
}
