import UIKit

enum Assembly {
    static func build() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor(presenter: presenter)
        let routingInteractor = Router()
        let vc = CSViewController(interactor: interactor, routingInteractor: routingInteractor)
        
        presenter.vc = vc
        
        return vc
    }
}
