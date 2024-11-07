//
//  NearbyNetworkInterface.swift
//  DataSource
//
//  Created by 최정인 on 11/7/24.
//

import Foundation

public protocol NearbyNetworkInterface {
    func searchConnections() -> [NetworkConnection]
    func joinConnection(connection: NetworkConnection) throws
    func send(data: Data)
}

public protocol NearbyNetworkDelegate: AnyObject {
    func receive(data: Data)
}
