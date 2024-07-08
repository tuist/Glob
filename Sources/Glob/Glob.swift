import RustXcframework
public func glob<GenericIntoRustString: IntoRustString>(_ glob: GenericIntoRustString) -> RustVec<RustString> {
    RustVec(ptr: __swift_bridge__$glob({ let rustString = glob.intoRustString(); rustString.isOwned = false; return rustString.ptr }()))
}


