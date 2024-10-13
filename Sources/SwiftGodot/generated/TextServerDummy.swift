// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A dummy text server that can't render text or manage fonts.
/// 
/// A dummy ``TextServer`` interface that doesn't do anything. Useful for freeing up memory when rendering text is not needed, as text servers are resource-intensive. It can also be used for performance comparisons in complex GUIs to check the impact of text rendering.
/// 
/// A dummy text server is always available at the start of a project. Here's how to access it:
/// 
/// The command line argument `--text-driver Dummy` (case-sensitive) can be used to force the "Dummy" ``TextServer`` on any project.
/// 
open class TextServerDummy: TextServerExtension {
    override open class var godotClassName: StringName { "TextServerDummy" }
}
