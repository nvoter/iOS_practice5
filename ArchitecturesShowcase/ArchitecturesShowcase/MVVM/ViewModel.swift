final class ViewModel {
    weak var viewController: MVVMViewController?
    
    func login(model: MVVMModel.Login) {
        print(model.username)
        
        viewController?.showUsername(model.username)
    }
}
