//The life cycle of a view controller refers to the sequence of events and methods that occur from its initialization to its eventual dismissal or deallocation.

//1. viewDidLoad:  Called after the view has been loaded into memory and the hierarecy is set.
// Call the superclass implementation
// Prepare the view and its data for presentation. Tasks can include:
// Configure UI elements :  Set up and configure the initial state of your UI elements.
// Configuring navigation bar properties.
// Set up data sources and delegates.
// Register custom views or cell
// Add gesture recognizers
// The dimesionsions are not set yet. Avoid time-consuming or resource-intensive operations to maintain smooth transitions.

// 2. viewWillAppear: Called just before the view appears on the screen.
// Call the superclass implementation
// You can use this method to update the UI or perform any necessary preparations before the view becomes visible
// Updating UI elements based on the current data
// Handle keyboard notifications: This enables you to adjust the view's layout or scrolling behavior to ensure that the keyboard does not obscure any important content.
// Fetch or update data: from server.

// 3. viewWillLayoutSubviews: This method is called when the view controller's view is about to undergo layout updates
// You can modify the frames or constraints of subviews
// This method may be called multiple times during the view controller's life cycle, depending on layout changes triggered by the system or your code
//

//4. viewDidLayoutSubviews: This method is called after the view controller's view has undergone layout updates
// this method may be called multiple times during the view controller's life cycle, depending on layout changes

// 5. viewDidAppear:
// Starting network requests or fetching data from a server.
// Initiating location updates or device sensor monitoring.
// Starting animations or interactions that require the view to be visible.

// 6. viewWillDisappear:
// Prepare for the transition or dismissal of the view. Common tasks are:
// Saving user data or application state.
// Pausing ongoing operations or animations.
// Invalidating timers or observers.
// Avoid time-consuming operations, as they may delay the transition or dismissal process.

//7. viewDidDisappear:
// Perform clean-up tasks after the view is no longer visible. Examples include:
// Releasing resources or removing observers.
// Stopping ongoing tasks or animations.
// Resetting the state of UI elements as needed.
// Free up any unnecessary memory or resources associated with the view.
