> [!TIP]
> Did you know Apple introduced [`UIButton.Configuration`](https://developer.apple.com/documentation/uikit/uibutton/configuration) in iOS 15?
>
> Using the new Configuration API you can create a button like this library achieves. Simply do the following:
> ```swift
> var initialConfig: UIButton.Configuration = .borderless()
> initialConfig.title = "Click me!"
> initialConfig.buttonSize = .medium
> initialConfig.background.strokeWidth = 2
> initialConfig.background.strokeColor = .systemBlue
> 
> let button = UIButton(configuration: initialConfig)
> button.translatesAutoresizingMaskIntoConstraints = false
> 
> button.configurationUpdateHandler = { button in
>     var currentConfig = button.configuration
>     
>     if button.isHighlighted {
>         currentConfig?.background.backgroundColor = .systemBlue
>         currentConfig?.baseForegroundColor = .white
>     } else {
>         currentConfig?.background.backgroundColor = .clear
>         currentConfig?.baseForegroundColor = nil
>     }
>     
>     button.configuration = currentConfig
> }
> ```
> 
# BorderButton

A very simple library that provides a `UIButton` implementation that at rest has a tint colored border and when pressed a solid background.

![](.github/Example.png)
