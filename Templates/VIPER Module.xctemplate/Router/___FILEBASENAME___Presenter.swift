//  ___FILEHEADER___

import Foundation

final class ___VARIABLE_moduleName:identifier___Presenter {
    // MARK: - Properties
    private unowned let view: ___VARIABLE_moduleName:identifier___ViewProtocol
    private let interactor: ___VARIABLE_moduleName:identifier___InteractorProtocol
    private let router: ___VARIABLE_moduleName:identifier___RouterProtocol

    // MARK: - Init
    init(view: ___VARIABLE_moduleName:identifier___ViewProtocol,
         interactor: ___VARIABLE_moduleName:identifier___InteractorProtocol,
         router: ___VARIABLE_moduleName:identifier___RouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - ___VARIABLE_moduleName:identifier___PresenterProtocol
extension ___VARIABLE_moduleName:identifier___Presenter: ___VARIABLE_moduleName:identifier___PresenterProtocol {

}