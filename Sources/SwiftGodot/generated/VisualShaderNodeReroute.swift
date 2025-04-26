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


/// A node that allows rerouting a connection within the visual shader graph.
/// 
/// Automatically adapts its port type to the type of the incoming connection and ensures valid connections.
open class VisualShaderNodeReroute: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeReroute")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /* Methods */
    fileprivate static let method_get_port_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_port_type")
        return withUnsafePointer(to: &VisualShaderNodeReroute.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1287173294)!
            }
            
        }
        
    }()
    
    /// Returns the port type of the reroute node.
    public final func getPortType() -> VisualShaderNode.PortType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeReroute.method_get_port_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNode.PortType (rawValue: _result)!
    }
    
}

