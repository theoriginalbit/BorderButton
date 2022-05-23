import ShapeButton
import UIKit

open class BorderButton: ShapeButton {
    public static let borderWidthUseStandard: CGFloat = 2
    public static let contentEdgeInsetsUseStandard = UIEdgeInsets(top: 8, left: 10, bottom: 8, right: 10)

    open override var isEnabled: Bool {
        didSet {
            layer.borderColor = (isEnabled ? tintColor : disabledTintColor).cgColor
        }
    }

    /// By default background color for this type of button should always be `.clear` so it shows the background it sits on.
    open override var backgroundColor: UIColor? {
        get { .clear }
        set {}
    }

    @objc open dynamic override var tintColor: UIColor! {
        didSet {
            setBackgroundColor(tintColor, for: .highlighted)
            setTitleColor(tintColor, for: .normal)
            layer.borderColor = tintColor.cgColor
        }
    }

    @objc open dynamic var titleHighlightedTintColor: UIColor = .white {
        didSet {
            setTitleColor(titleHighlightedTintColor, for: .highlighted)
        }
    }

    @objc open dynamic var disabledTintColor: UIColor = .gray {
        didSet {
            setTitleColor(disabledTintColor, for: .disabled)
            if !isEnabled {
                layer.borderColor = disabledTintColor.cgColor
            }
        }
    }

    public override init(frame: CGRect = .zero, cornerRadius: CGFloat) {
        super.init(frame: frame, cornerRadius: cornerRadius)

        commonInit()
    }

    public override init(frame: CGRect = .zero, continuousCornerRadius cornerRadius: CGFloat) {
        super.init(frame: frame, continuousCornerRadius: cornerRadius)

        commonInit()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)

        commonInit()
    }

    private func commonInit() {
        debugPrint(super.tintColor, tintColor)
        backgroundColor = .clear

        setBackgroundColor(tintColor, for: .highlighted)
        setTitleColor(tintColor, for: .normal)
        setTitleColor(disabledTintColor, for: .disabled)
        setTitleColor(titleHighlightedTintColor, for: .highlighted)

        layer.borderColor = (isEnabled ? tintColor : disabledTintColor).cgColor
        layer.borderWidth = Self.borderWidthUseStandard

        contentEdgeInsets = Self.contentEdgeInsetsUseStandard
    }
}
