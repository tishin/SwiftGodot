// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Android)
import Android
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// Creates an idle interval in a ``Tween`` animation.
/// 
/// ``IntervalTweener`` is used to make delays in a tweening sequence. See ``Tween/tweenInterval(time:)`` for more usage information.
/// 
/// > Note: ``Tween/tweenInterval(time:)`` is the only correct way to create ``IntervalTweener``. Any ``IntervalTweener`` created manually will not function correctly.
/// 
open class IntervalTweener: Tweener {
    fileprivate static var className = StringName("IntervalTweener")
    override open class var godotClassName: StringName { className }
}

