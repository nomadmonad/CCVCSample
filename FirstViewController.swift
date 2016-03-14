import UIKit

class FirstViewController: UIViewController {
    override func willMoveToParentViewController(parent: UIViewController?) {
        print("1stVC willMove")
    }

    override func didMoveToParentViewController(parent: UIViewController?) {
        print("1stVC didMove")
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("1stVC willAppear")
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("1stVC didAppear")
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("1stVC willDisappear")
    }

    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("1stVC didDisappear")
    }
}