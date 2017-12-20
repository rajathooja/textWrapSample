//
//  ViewController.swift
//  textWrapSample
//
//  Created by Rajat Hooja on 12/20/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.layer.cornerRadius = 45
        myLabel.layer.cornerRadius = 45
        myLabel.clipsToBounds = true
        
        let imagePath = UIBezierPath(rect: imageView.frame.offsetBy(dx: 25, dy: -35))
        let labelPath = UIBezierPath(rect: myLabel.layer.frame.offsetBy(dx: -10, dy: 35))
        
        myTextView.textContainer.exclusionPaths = [imagePath, labelPath]

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // even having an empty viewWillAppear(animated) method makes the UI elements animate (e.g. fade in);
        // without viewWillAppear(), the view just plops open.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

