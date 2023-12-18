//
//  DiscoveryRouter.swift
//  Discovery
//
//  Created by  Stepanok Ivan on 16.11.2022.
//

import Foundation
import Core

public protocol DiscoveryRouter: BaseRouter {
    func showCourseDetais(courseID: String, title: String)
    func showWebDiscoveryDetails(pathID: String, discoveryType: DiscoveryWebviewType, sourceScreen: LogistrationSourceScreen)
    func showUpdateRequiredView(showAccountLink: Bool)
    func showUpdateRecomendedView()
    func showDiscoverySearch(searchQuery: String?)
}

// Mark - For testing and SwiftUI preview
#if DEBUG
public class DiscoveryRouterMock: BaseRouterMock, DiscoveryRouter {
    
    public override init() {}
    
    public func showCourseDetais(courseID: String, title: String) {}
    public func showWebDiscoveryDetails(pathID: String, discoveryType: DiscoveryWebviewType, sourceScreen: LogistrationSourceScreen) {}
    public func showUpdateRequiredView(showAccountLink: Bool) {}
    public func showUpdateRecomendedView() {}
    public func showDiscoverySearch(searchQuery: String? = nil) {}
}
#endif
