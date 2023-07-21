//  ___FILEHEADER___

import UIKit

final class ___VARIABLE_moduleName:identifier___Wireframe: BaseWireframe<___VARIABLE_moduleName:identifier___ViewController> {
    init() {
        let moduleViewController = ___VARIABLE_moduleName:identifier___ViewController()
        super.init(viewController: moduleViewController)

        let interactor = ___VARIABLE_moduleName:identifier___Interactor()
        let presenter = ___VARIABLE_moduleName:identifier___Presenter(
            view: moduleViewController,
            interactor: interactor,
            wireframe: self
        )
        moduleViewController.presenter = presenter
    }
}

// MARK: - ___VARIABLE_moduleName:identifier___WireframeProtocol
extension ___VARIABLE_moduleName:identifier___Wireframe: ___VARIABLE_moduleName:identifier___WireframeProtocol {
    
}
