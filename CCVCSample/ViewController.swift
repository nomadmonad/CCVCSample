import UIKit

class ViewController: UIViewController {

    @IBOutlet var panel: UIView!
    var current: Int = 0
    var swappers = [UIViewController]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.swappers += [FirstViewController(nibName:nil, bundle: nil)]
        self.swappers += [SecondViewController(nibName:nil, bundle: nil)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = self.swappers[current]
        self.addChildViewController(vc) // "will" called for us
        vc.view.frame = self.panel.bounds
        self.panel.addSubview(vc.view) // insert view into interface between "will" and "did"
        // note: when we call add, we must call "did" afterwards
        vc.didMoveToParentViewController(self)
    }

    @IBAction func doFlip(sender:AnyObject?) {
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        let fromvc = self.swappers[current]
        current = (current == 0) ? 1 : 0
        let tovc = self.swappers[current]
        tovc.view.frame = self.panel.bounds
        
        // must have both as children before we can transition between them
        self.addChildViewController(tovc) // "will" called for us
        // note: when we call remove, we must call "will" (with nil) beforehand
        fromvc.willMoveToParentViewController(nil)
        // then perform the transition
        self.transitionFromViewController(fromvc,
            toViewController:tovc,
            duration:0.4,
            options:.TransitionFlipFromLeft,
            animations:nil,
            completion:{
                _ in
                // finally, finish up
                // note: when we call add, we must call "did" afterwards
                tovc.didMoveToParentViewController(self)
                fromvc.removeFromParentViewController() // "did" called for us
                UIApplication.sharedApplication().endIgnoringInteractionEvents()
        })
        
    }


}

