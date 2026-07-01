import UIKit

protocol BaseWireframeProtocol: AnyObject {
}

class BaseWireframe<ViewController: UIViewController> {
    /// The view controller this wireframe manages.
    ///
    /// Returns `nil` if the view controller has been deallocated.
    /// Use optional chaining for navigation calls
    /// that should gracefully no-op when the module has been torn down.
    weak let viewController: ViewController?
    
    /// Keeps the view controller alive until `firstAccessViewController`
    /// is first accessed, which clears this reference.
    private var _temporaryStoredViewController: ViewController?
    
    /// Non-optional access to the view controller, intended for first access
    /// during module creation - e.g. when passing to a parent such as
    /// `UINavigationController(rootViewController:)` or presenting it.
    ///
    /// Releases the temporary strong reference that keeps the view controller
    /// alive until it's stored by a parent.
    var firstAccessViewController: View {
        defer { _temporaryStoredViewController = nil }
        return viewController!
    }
    
    var navigationController: UINavigationController? {
        return viewController?.navigationController
    }
    
    init(viewController: ViewController) {
        self.viewController = viewController
        self._temporaryStoredViewController = viewController
    }
}

extension BaseWireframe: BaseWireframeProtocol {
}
