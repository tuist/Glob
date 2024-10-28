import RustXcframework
public func glob<GenericToRustStr: ToRustStr>(_ glob: GenericToRustStr) -> RustVec<RustString> {
    return glob.toRustStr({ globAsRustStr in
        RustVec(ptr: __swift_bridge__$glob(globAsRustStr))
    })
}


