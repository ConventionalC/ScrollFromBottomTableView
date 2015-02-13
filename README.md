#ScrollFromBottomTableView

This library is a cocoapod and framework that allows a table view to scroll from the bottom as familiar in messaging apps.

##How it Works

This library vertically flips a table view using a transformation, and then vertically flips each cell, header, and footer to present them right-side-up.

##Installation

###CocoaPods

Add the following to your Podfile:

```
pod ScrollFromBottomTableView, '~> 0.1'
```

###Manual Installation

 * Add this repository as a submodule.
 * Add this project as a subproject.
 * In Build Settings, add ScrollFromBottomTableView in 'Target dependency'.
 * Add the resulting framework in 'Link Binary With Libraries'.

##Usage

###1. Table View Controller

Extend ScrollFromBottomTableViewController or set it under 'Custom Class' in a storyboard UITableViewController. It will even work with static cell.

###2. Table View

Extend ScrollFromBottomTableView or set it under 'Custom Class' in a storyboard UITableView.

###3. Delegate

The two methods above simply proxy their delegate and data source through ScrollFromBottomTableViewDelegate and ScrollFromBottomTableViewDataSource. Each of these classes accepts another data source or delegate.

```
ScrollFromBottomTableViewDataSource *forwardingDataSource = ScrollFromBottomTableViewDataSource.new;
forwardingDataSource.dataSource = dataSource;
myTableView.dataSource = forwardingDataSource;

ScrollFromBottomTableViewDelegate *forwardingDelegate = ScrollFromBottomTableViewDelegate.new;
forwardingDelegate.delegate = delegate;
myTableView.delegate = forwardingDelegate;
```
 
