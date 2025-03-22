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


/// A container that arranges its child controls horizontally and wraps them around at the borders.
/// 
/// A variant of ``FlowContainer`` that can only arrange its child controls horizontally, wrapping them around at the borders. This is similar to how text in a book wraps around when no more words can fit on a line.
open class HFlowContainer: FlowContainer {
    fileprivate static var className = StringName("HFlowContainer")
    override open class var godotClassName: StringName { className }
}

