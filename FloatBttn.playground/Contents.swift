import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .lightGray
        self.view = view
        
        let floatingButton = UIButton()
        floatingButton.setTitle("Add", for: .normal)
        floatingButton.backgroundColor = .black
        floatingButton.layer.cornerRadius = 25
        
        view.addSubview(floatingButton)
        floatingButton.translatesAutoresizingMaskIntoConstraints = false

        floatingButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        floatingButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        floatingButton.bottomAnchor.constraint(equalTo: self.view.layoutMarginsGuide.bottomAnchor, constant: -10).isActive = true

        floatingButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
       //floatingButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
