//
//  RegexController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

fileprivate class Delimitor: UILabel {
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    override init(frame: CGRect) {
        super.init(frame: frame)
        text = "/"
        textAlignment = .center
    }
}

fileprivate class BorderedTextView: UITextView {
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
        isScrollEnabled = false
    }
}

class RegexController: GenericViewController {
    private let delimitors = [Delimitor(), Delimitor()]
    private let userRegex = BorderedTextView()
    private let userText = BorderedTextView()
    private let matchesView: BorderedTextView = {
        let view = BorderedTextView()
        view.isScrollEnabled = true
        view.isEditable = false
        view.isSelectable = false
        return view
    }()
    
    private let matchButton: UIButton = {
        let button = UIButton()
        button.setTitle("MATCH", for: .normal)
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(handleMatch), for: .touchUpInside)
        return button
    }()
    
    @objc func handleMatch() {
        guard let originalText = userText.text else { return }
        guard let regex = userRegex.text else { return }
        let matches = originalText.matches(for: regex)
        matchesView.text = "\(matches)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Regex 101"
    }
    
    override func setupViews() {
        super.setupViews()
        view.backgroundColor = .white
        delimitors.forEach { view.addSubview($0) }
        view.addSubview(userRegex)
        view.addSubview(userText)
        view.addSubview(matchesView)
        view.addSubview(matchButton)
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        
        delimitors.forEach { delimitor in
            _ = delimitor.constraint(.top, to: view.safeAreaLayoutGuide, constant: 10)
            _ = delimitor.constraint(dimension: .width, constant: 20)
            _ = delimitor.constraint(dimension: .height, constant: 50)
        }
        _ = delimitors[0].constraint(.leading, to: view.safeAreaLayoutGuide)
        _ = delimitors[1].constraint(.trailing, to: view.safeAreaLayoutGuide)
        
        _ = userRegex.constraint(.top, to: view.safeAreaLayoutGuide, constant: 10)
        _ = userRegex.constraint(.leading, to: delimitors[0], .trailing)
        _ = userRegex.constraint(.trailing, to: delimitors[1], .leading)
        _ = userRegex.constraint(dimension: .height, constant: 50)
        
        _ = userText.fill(.horizontaly, view.safeAreaLayoutGuide, constant: 10)
        _ = userText.constraint(.top, to: userRegex, .bottom, constant: 5)
        _ = userText.constraint(dimension: .height, constant: 200)
        
        _ = matchesView.fill(.horizontaly, view.safeAreaLayoutGuide, constant: 10)
        _ = matchesView.constraint(.top, to: userText, .bottom, constant: 5)
        _ = matchesView.constraint(.bottom, to: matchButton, .top, constant: 5)
        
        _ = matchButton.fill(.horizontaly, view.safeAreaLayoutGuide, constant: 10)
        _ = matchButton.constraint(.bottom, to: view.safeAreaLayoutGuide, constant: 10)
        _ = matchButton.constraint(dimension: .height, constant: 60)
    }
}
