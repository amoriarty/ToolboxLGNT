# ToolboxLGNT

[![CI Status](http://img.shields.io/travis/amoriarty/ToolboxLGNT.svg?style=flat)](https://travis-ci.org/amoriarty/ToolboxLGNT)
[![Version](https://img.shields.io/cocoapods/v/ToolboxLGNT.svg?style=flat)](http://cocoapods.org/pods/ToolboxLGNT)
[![License](https://img.shields.io/cocoapods/l/ToolboxLGNT.svg?style=flat)](http://cocoapods.org/pods/ToolboxLGNT)
[![Platform](https://img.shields.io/cocoapods/p/ToolboxLGNT.svg?style=flat)](http://cocoapods.org/pods/ToolboxLGNT)

## What's inside the (tool) box ?

This project a simple pod that collects some solutions I discover, and functions that I regularly use.

### Constraint

I've create an UIView extension to be able to setup readeable constraint onto view. It also contains function to fill a superview, or center it.

```
let firstView = UIView()
let secondView = UIView()
let constraint: NSLayoutConstraint = firstView.constraint(.leading, to: secondView)
```

In the example above, we simply constraint the leading of the first view to the leading of the second. But we can also constraint a part of the view to another part of the second.

```
let firstView = UIView()
let secondView = UIView()
let constraint = secondView.constraint(.top, to: firstView, .bottom)
```

You're also can pass a layout guide instead of a view.

```
override func viewDidLoad() {
	super.viewDidLoad()
	
	let firstView = UIView()
	_ = firstView.constraint(.leading, to: view.safeAreaLayoutGuide)
}
```

And much more ...

### Generics

I usually setup my subclassed views by creating to functions: setupViews() and setupLayout(). So not have to override init everytime and call this functions again, I decided to make a GenericView, where I can override setupViews() and setupLayouts() without having to call it. Not overriding init provide also more clarity into my classes because I didn't have to defined a required init(aDecoder: NSCoder) everytimes.

```
class SubView: GenericView {
	override setupViews() {
		super.setupViews()
		...
	}

	override setupLayouts() {
		super.setupLayouts()
		...
	}
}
```

Second part of generics concern Collection View and Table View. I've create some generics controller, that just allows you defined a two dimensional arrays of items and not care about defined the number of sections / row, as well a defined item inside the cell or even register it.

```
class ExampleCell: GenericTableViewCell<T> {
	override var item: T? {
		didSet { /* use you value here */ }
	}
}

class ExampleController: GenericTableViewController<ExampleCell, T> {
	override var items: [[T]]? {
		return [[/* you items in section 0 */], [/* etc */]]
	}

}
```

This is kind of pseudo code here, because T as to be defined type, but you don't need more to run a table view with your custom cell, and have your data directly pass in. Since it also extend for origin UIKit component, you can't still override the default function of UIKit to manage your component.

### Some other tools

Like a String extension to quick have a match from a regex. A constant for UITextView().textContainerInset and delete white space between the text and the text view.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

ToolboxLGNT is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ToolboxLGNT'
```

## License

ToolboxLGNT is available under the MIT license. See the LICENSE file for more info.
