# Xcode-Templates

## Instalation
#### Automatic:
You can install templates & snippets by running:
```bash
$ ./install.sh
```

* To install templates exclusively, use the `-t` option.
* To install snippets exclusively, use the `-s` option.

#### Manual:
Copy the folders on the left into a source directory on the right:

* Templates -> ~/Library/Developer/Xcode/Templates/
* Snippets -> ~/Library/Developer/Xcode/UserData/CodeSnippets/


## Templates

### Swift File License MIT
Adds a new Swift file with MIT license embedded in the file's header.

### VIPER Module
Adds five new files for a single screen built in VIPER architecture, all together called a "module":
* {FILE_NAME}.Module.swift -> Groups protocols from all components in a module. Serves as a central place for module-specific entities, constants, etc.
* {FILE_NAME}Interactor.swift -> Business logic
* {FILE_NAME}Presenter.swift -> Flow control
* {FILE_NAME}Router.swift -> Navigation
* {FILE_NAME}ViewController.swift -> View

Before you start using your VIPER module, you'll need a base navigation component class: BaseRouter or BaseWireframe, depending on the navigation component you selected during module creation. You can find simple versions of these files in the `Base VIPER Files` folder.

## Code Snippets

* cancelbag -> creates `[AnyCancellable]` stored property for use with `Combine`
* givenwhenthen -> adds Given-When-Then comments for use in unit tests
* initcoder-unavailable -> adds a required init with coder & marks it as unavailable
* prepareui -> adds two methods for constructing UI & for styling it
* newuivc -> creates a new `UIViewController` with contents of `prepareui` snippet
* newuiview -> creates a new `UIView` with contents of `prepareui` snippet