//  ___FILEHEADER___

import UIKit

final class ___VARIABLE_moduleName:identifier___Router: BaseRouter<___VARIABLE_moduleName:identifier___ViewController> {
    init() {
        let moduleViewController = ___VARIABLE_moduleName:identifier___ViewController()
        super.init(viewController: moduleViewController)

        let interactor = ___VARIABLE_moduleName:identifier___Interactor()
        let presenter = ___VARIABLE_moduleName:identifier___Presenter(
            view: moduleViewController,
            interactor: interactor,
            router: self
        )
        moduleViewController.presenter = presenter
    }
}

// MARK: - ___VARIABLE_moduleName:identifier___RouterProtocol
extension ___VARIABLE_moduleName:identifier___Router: ___VARIABLE_moduleName:identifier___RouterProtocol {
    
}