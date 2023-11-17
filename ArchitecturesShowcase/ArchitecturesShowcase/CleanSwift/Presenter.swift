protocol PresentationLogic {
    func presentStart()
}

final class Presenter: PresentationLogic {
    var vc: DisplayLogic?
    
    func presentStart() {
        vc?.displayStart()
    }
}
