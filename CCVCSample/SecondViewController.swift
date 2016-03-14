import UIKit

class SecondViewController: UIViewController {
    override func willMoveToParentViewController(parent: UIViewController?) {
        print("2ndVC willMove")
    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        print("2ndVC didMove")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("2ndVC willAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        print("2ndVC didAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("2ndVC willDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("2ndVC didDisappear")
    }
}