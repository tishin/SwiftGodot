// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A visual shader node for shader parameter (uniform) of type integer.
/// 
/// A ``VisualShaderNodeParameter`` of type integer. Offers additional customization for range of accepted values.
open class VisualShaderNodeIntParameter: VisualShaderNodeParameter {
    override open class var godotClassName: StringName { "VisualShaderNodeIntParameter" }
    public enum Hint: Int64, CaseIterable, CustomDebugStringConvertible {
        /// The parameter will not constrain its value.
        case none = 0 // HINT_NONE
        /// The parameter's value must be within the specified ``min``/``max`` range.
        case range = 1 // HINT_RANGE
        /// The parameter's value must be within the specified range, with the given ``step`` between values.
        case rangeStep = 2 // HINT_RANGE_STEP
        /// Represents the size of the ``VisualShaderNodeIntParameter/Hint`` enum.
        case max = 3 // HINT_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .none: return ".none"
                case .range: return ".range"
                case .rangeStep: return ".rangeStep"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// Range hint of this node. Use it to customize valid parameter range.
    final public var hint: VisualShaderNodeIntParameter.Hint {
        get {
            return get_hint ()
        }
        
        set {
            set_hint (newValue)
        }
        
    }
    
    /// The minimum value this parameter can take. ``hint`` must be either .range or .rangeStep for this to take effect.
    final public var min: Int32 {
        get {
            return get_min ()
        }
        
        set {
            set_min (newValue)
        }
        
    }
    
    /// The maximum value this parameter can take. ``hint`` must be either .range or .rangeStep for this to take effect.
    final public var max: Int32 {
        get {
            return get_max ()
        }
        
        set {
            set_max (newValue)
        }
        
    }
    
    /// The step between parameter's values. Forces the parameter to be a multiple of the given value. ``hint`` must be .rangeStep for this to take effect.
    final public var step: Int32 {
        get {
            return get_step ()
        }
        
        set {
            set_step (newValue)
        }
        
    }
    
    /// If `true`, the node will have a custom default value.
    final public var defaultValueEnabled: Bool {
        get {
            return is_default_value_enabled ()
        }
        
        set {
            set_default_value_enabled (newValue)
        }
        
    }
    
    /// Default value of this parameter, which will be used if not set externally. ``defaultValueEnabled`` must be enabled; defaults to `0` otherwise.
    final public var defaultValue: Int32 {
        get {
            return get_default_value ()
        }
        
        set {
            set_default_value (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_hint: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_hint")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2540512075)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_hint(_ hint: VisualShaderNodeIntParameter.Hint) {
        withUnsafePointer(to: hint.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_set_hint, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_hint: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_hint")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4250814924)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_hint() -> VisualShaderNodeIntParameter.Hint {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_get_hint, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VisualShaderNodeIntParameter.Hint (rawValue: _result)!
    }
    
    fileprivate static var method_set_min: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_min")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_min(_ value: Int32) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_set_min, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_min: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_min")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_min() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_get_min, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_max: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_max")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max(_ value: Int32) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_set_max, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_max: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_max")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_get_max, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_step: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_step")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_step(_ value: Int32) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_set_step, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_step: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_step")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_step() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_get_step, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_default_value_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_default_value_enabled")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_set_default_value_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_default_value_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_default_value_enabled")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_default_value_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_is_default_value_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_default_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_default_value")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_default_value(_ value: Int32) {
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_set_default_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_default_value: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_default_value")
        return withUnsafePointer(to: &VisualShaderNodeIntParameter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_default_value() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(VisualShaderNodeIntParameter.method_get_default_value, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

