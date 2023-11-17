import UIKit

protocol DisplayLogic {
    func displayStart()
}

class CSViewController: UIViewController {
    var interactor: BusinessLogic
    var routingInteractor: RoutingLogic
    
    init(interactor: BusinessLogic, routingInteractor: RoutingLogic) {
        self.interactor = interactor
        self.routingInteractor = routingInteractor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.loadStart()
    }
    
}

//MARK: - DisplayLogic
extension CSViewController: DisplayLogic {
    func displayStart() {
        print("hello")
    }
}
