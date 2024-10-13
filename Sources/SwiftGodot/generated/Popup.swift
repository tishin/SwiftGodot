// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Base class for contextual windows and panels with fixed position.
/// 
/// ``Popup`` is a base class for contextual windows and panels with fixed position. It's a modal by default (see ``Window/popupWindow``) and provides methods for implementing custom popup behavior.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``popupHide``
open class Popup: Window {
    override open class var godotClassName: StringName { "Popup" }
    // Signals 
    /// Emitted when the popup is hidden.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.popupHide.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var popupHide: SimpleSignal { SimpleSignal (target: self, signalName: "popup_hide") }
    
}
