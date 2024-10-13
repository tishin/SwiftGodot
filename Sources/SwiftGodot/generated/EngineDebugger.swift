// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Exposes the internal debugger.
/// 
/// ``EngineDebugger`` handles the communication between the editor and the running game. It is active in the running game. Messages can be sent/received through it. It also manages the profilers.
open class EngineDebugger: Object {
    /// The shared instance of this class
    public static var shared: EngineDebugger = {
        return withUnsafePointer (to: &EngineDebugger.godotClassName.content) { ptr in
            EngineDebugger (nativeHandle: gi.global_get_singleton (ptr)!)
        }
        
    }()
    
    override open class var godotClassName: StringName { "EngineDebugger" }
    /* Methods */
    fileprivate static var method_is_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_active")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the debugger is active otherwise `false`.
    public static func isActive() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(method_is_active, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_register_profiler: GDExtensionMethodBindPtr = {
        let methodName = StringName("register_profiler")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3651669560)!
            }
            
        }
        
    }()
    
    /// Registers a profiler with the given `name`. See ``EngineProfiler`` for more information.
    public static func registerProfiler(name: StringName, profiler: EngineProfiler?) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: profiler?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_register_profiler, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_unregister_profiler: GDExtensionMethodBindPtr = {
        let methodName = StringName("unregister_profiler")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Unregisters a profiler with given `name`.
    public static func unregisterProfiler(name: StringName) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_unregister_profiler, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_profiling: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_profiling")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2041966384)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a profiler with the given name is present and active otherwise `false`.
    public static func isProfiling(name: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_is_profiling, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_has_profiler: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_profiler")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2041966384)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a profiler with the given name is present otherwise `false`.
    public static func hasProfiler(name: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_has_profiler, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_profiler_add_frame_data: GDExtensionMethodBindPtr = {
        let methodName = StringName("profiler_add_frame_data")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1895267858)!
            }
            
        }
        
    }()
    
    /// Calls the `add` callable of the profiler with given `name` and `data`.
    public static func profilerAddFrameData(name: StringName, data: GArray) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_profiler_add_frame_data, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_profiler_enable: GDExtensionMethodBindPtr = {
        let methodName = StringName("profiler_enable")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3192561009)!
            }
            
        }
        
    }()
    
    /// Calls the `toggle` callable of the profiler with given `name` and `arguments`. Enables/Disables the same profiler depending on `enable` argument.
    public static func profilerEnable(name: StringName, enable: Bool, arguments: GArray = GArray ()) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: arguments.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_profiler_enable, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_register_message_capture: GDExtensionMethodBindPtr = {
        let methodName = StringName("register_message_capture")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1874754934)!
            }
            
        }
        
    }()
    
    /// Registers a message capture with given `name`. If `name` is "my_message" then messages starting with "my_message:" will be called with the given callable.
    /// 
    /// Callable must accept a message string and a data array as argument. If the message and data are valid then callable must return `true` otherwise `false`.
    /// 
    public static func registerMessageCapture(name: StringName, callable: Callable) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: callable.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_register_message_capture, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_unregister_message_capture: GDExtensionMethodBindPtr = {
        let methodName = StringName("unregister_message_capture")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Unregisters the message capture with given `name`.
    public static func unregisterMessageCapture(name: StringName) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_unregister_message_capture, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_has_capture: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_capture")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2041966384)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a capture with the given name is present otherwise `false`.
    public static func hasCapture(name: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_has_capture, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_line_poll: GDExtensionMethodBindPtr = {
        let methodName = StringName("line_poll")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces a processing loop of debugger events. The purpose of this method is just processing events every now and then when the script might get too busy, so that bugs like infinite loops can be caught
    public static func linePoll() {
        gi.object_method_bind_ptrcall(method_line_poll, UnsafeMutableRawPointer(mutating: shared.handle), nil, nil)
        
    }
    
    fileprivate static var method_send_message: GDExtensionMethodBindPtr = {
        let methodName = StringName("send_message")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1209351045)!
            }
            
        }
        
    }()
    
    /// Sends a message with given `message` and `data` array.
    public static func sendMessage(_ message: String, data: GArray) {
        let message = GString(message)
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_send_message, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_debug: GDExtensionMethodBindPtr = {
        let methodName = StringName("debug")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2751962654)!
            }
            
        }
        
    }()
    
    /// Starts a debug break in script execution, optionally specifying whether the program can continue based on `canContinue` and whether the break was due to a breakpoint.
    public static func debug(canContinue: Bool = true, isErrorBreakpoint: Bool = false) {
        withUnsafePointer(to: canContinue) { pArg0 in
            withUnsafePointer(to: isErrorBreakpoint) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_debug, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_script_debug: GDExtensionMethodBindPtr = {
        let methodName = StringName("script_debug")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2442343672)!
            }
            
        }
        
    }()
    
    /// Starts a debug break in script execution, optionally specifying whether the program can continue based on `canContinue` and whether the break was due to a breakpoint.
    public static func scriptDebug(language: ScriptLanguage?, canContinue: Bool = true, isErrorBreakpoint: Bool = false) {
        withUnsafePointer(to: language?.handle) { pArg0 in
            withUnsafePointer(to: canContinue) { pArg1 in
                withUnsafePointer(to: isErrorBreakpoint) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_script_debug, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_lines_left: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_lines_left")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the current debugging lines that remain.
    public static func setLinesLeft(lines: Int32) {
        withUnsafePointer(to: lines) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_set_lines_left, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_lines_left: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_lines_left")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of lines that remain.
    public static func getLinesLeft() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(method_get_lines_left, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_depth")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the current debugging depth.
    public static func setDepth(_ depth: Int32) {
        withUnsafePointer(to: depth) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_set_depth, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_depth: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_depth")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current debug depth.
    public static func getDepth() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(method_get_depth, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_breakpoint: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_breakpoint")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 921227809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `source` and `line` represent an existing breakpoint.
    public static func isBreakpoint(line: Int32, source: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: source.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_is_breakpoint, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_is_skipping_breakpoints: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_skipping_breakpoints")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the debugger is skipping breakpoints otherwise `false`.
    public static func isSkippingBreakpoints() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(method_is_skipping_breakpoints, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_insert_breakpoint: GDExtensionMethodBindPtr = {
        let methodName = StringName("insert_breakpoint")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Inserts a new breakpoint with the given `source` and `line`.
    public static func insertBreakpoint(line: Int32, source: StringName) {
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: source.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_insert_breakpoint, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_breakpoint: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_breakpoint")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3780747571)!
            }
            
        }
        
    }()
    
    /// Removes a breakpoint with the given `source` and `line`.
    public static func removeBreakpoint(line: Int32, source: StringName) {
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: source.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_remove_breakpoint, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_clear_breakpoints: GDExtensionMethodBindPtr = {
        let methodName = StringName("clear_breakpoints")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all breakpoints.
    public static func clearBreakpoints() {
        gi.object_method_bind_ptrcall(method_clear_breakpoints, UnsafeMutableRawPointer(mutating: shared.handle), nil, nil)
        
    }
    
}
