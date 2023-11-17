import Foundation

protocol BusinessLogic {
    func loadStart()
}

final class Interactor: BusinessLogic {
    var presenter: PresentationLogic
    
    init(presenter: PresentationLogic) {
        self.presenter = presenter
    }
    
    func loadStart() {
        presenter.presentStart()
    }
}
