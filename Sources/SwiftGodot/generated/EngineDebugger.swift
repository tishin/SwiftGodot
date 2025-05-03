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


/// Exposes the internal debugger.
/// 
/// ``EngineDebugger`` handles the communication between the editor and the running game. It is active in the running game. Messages can be sent/received through it. It also manages the profilers.
open class EngineDebugger: Object {
    /// The shared instance of this class
    public static var shared: EngineDebugger {
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("EngineDebugger")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_active")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the debugger is active otherwise `false`.
    public static func isActive() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(method_is_active, shared.handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_register_profiler: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("register_profiler")
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
                        gi.object_method_bind_ptrcall(method_register_profiler, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_unregister_profiler: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unregister_profiler")
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
                    gi.object_method_bind_ptrcall(method_unregister_profiler, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_profiling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_profiling")
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
                    gi.object_method_bind_ptrcall(method_is_profiling, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_has_profiler: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_profiler")
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
                    gi.object_method_bind_ptrcall(method_has_profiler, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_profiler_add_frame_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("profiler_add_frame_data")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1895267858)!
            }
            
        }
        
    }()
    
    /// Calls the `add` callable of the profiler with given `name` and `data`.
    public static func profilerAddFrameData(name: StringName, data: VariantArray) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_profiler_add_frame_data, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_profiler_enable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("profiler_enable")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3192561009)!
            }
            
        }
        
    }()
    
    /// Calls the `toggle` callable of the profiler with given `name` and `arguments`. Enables/Disables the same profiler depending on `enable` argument.
    public static func profilerEnable(name: StringName, enable: Bool, arguments: VariantArray = VariantArray ()) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: arguments.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_profiler_enable, shared.handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_register_message_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("register_message_capture")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1874754934)!
            }
            
        }
        
    }()
    
    /// Registers a message capture with given `name`. If `name` is "my_message" then messages starting with "my_message:" will be called with the given callable.
    /// 
    /// The callable must accept a message string and a data array as argument. The callable should return `true` if the message is recognized.
    /// 
    /// > Note: The callable will receive the message with the prefix stripped, unlike ``EditorDebuggerPlugin/_capture(message:data:sessionId:)``. See the ``EditorDebuggerPlugin`` description for an example.
    /// 
    public static func registerMessageCapture(name: StringName, callable: Callable) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: callable.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_register_message_capture, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_unregister_message_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unregister_message_capture")
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
                    gi.object_method_bind_ptrcall(method_unregister_message_capture, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_capture")
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
                    gi.object_method_bind_ptrcall(method_has_capture, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_line_poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("line_poll")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces a processing loop of debugger events. The purpose of this method is just processing events every now and then when the script might get too busy, so that bugs like infinite loops can be caught.
    public static func linePoll() {
        gi.object_method_bind_ptrcall(method_line_poll, shared.handle, nil, nil)
        
    }
    
    fileprivate static let method_send_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("send_message")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1209351045)!
            }
            
        }
        
    }()
    
    /// Sends a message with given `message` and `data` array.
    public static func sendMessage(_ message: String, data: VariantArray) {
        let message = GString(message)
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_send_message, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_debug: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("debug")
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
                        gi.object_method_bind_ptrcall(method_debug, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_script_debug: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("script_debug")
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
                            gi.object_method_bind_ptrcall(method_script_debug, shared.handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_lines_left: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_lines_left")
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
                    gi.object_method_bind_ptrcall(method_set_lines_left, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_lines_left: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_lines_left")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of lines that remain.
    public static func getLinesLeft() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(method_get_lines_left, shared.handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_depth")
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
                    gi.object_method_bind_ptrcall(method_set_depth, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current debug depth.
    public static func getDepth() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(method_get_depth, shared.handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_breakpoint: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_breakpoint")
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
                        gi.object_method_bind_ptrcall(method_is_breakpoint, shared.handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_skipping_breakpoints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_skipping_breakpoints")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the debugger is skipping breakpoints otherwise `false`.
    public static func isSkippingBreakpoints() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(method_is_skipping_breakpoints, shared.handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_insert_breakpoint: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("insert_breakpoint")
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
                        gi.object_method_bind_ptrcall(method_insert_breakpoint, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_breakpoint: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_breakpoint")
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
                        gi.object_method_bind_ptrcall(method_remove_breakpoint, shared.handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_breakpoints: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_breakpoints")
        return withUnsafePointer(to: &EngineDebugger.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all breakpoints.
    public static func clearBreakpoints() {
        gi.object_method_bind_ptrcall(method_clear_breakpoints, shared.handle, nil, nil)
        
    }
    
}

