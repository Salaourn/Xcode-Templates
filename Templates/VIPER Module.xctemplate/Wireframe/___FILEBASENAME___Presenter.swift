//  ___FILEHEADER___

import Foundation

final class ___VARIABLE_moduleName:identifier___Presenter {
    // MARK: - Properties
    private unowned let view: ___VARIABLE_moduleName:identifier___ViewProtocol
    private let interactor: ___VARIABLE_moduleName:identifier___InteractorProtocol
    private let wireframe: ___VARIABLE_moduleName:identifier___WireframeProtocol

    // MARK: - Init
    init(view: ___VARIABLE_moduleName:identifier___ViewProtocol,
         interactor: ___VARIABLE_moduleName:identifier___InteractorProtocol,
         wireframe: ___VARIABLE_moduleName:identifier___WireframeProtocol) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - ___VARIABLE_moduleName:identifier___PresenterProtocol
extension ___VARIABLE_moduleName:identifier___Presenter: ___VARIABLE_moduleName:identifier___PresenterProtocol {

}
