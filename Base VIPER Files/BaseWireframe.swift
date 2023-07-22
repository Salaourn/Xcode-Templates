import UIKit

protocol BaseWireframeProtocol: AnyObject {
}

class BaseWireframe<ViewController: UIViewController> {
    private unowned var _viewController: ViewController
    private var _temporaryStoredViewController: ViewController?
    
    var viewController: ViewController {
        defer { _temporaryStoredViewController = nil }
        return _viewController
    }
    
    var navigationController: UINavigationController? {
        return viewController.navigationController
    }
    
    init(viewController: ViewController) {
        _temporaryStoredViewController = viewController
        _viewController = viewController
    }
}

extension BaseWireframe: WireframeProtocol {
}
