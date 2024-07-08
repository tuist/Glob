#[swift_bridge::bridge]
mod ffi {
    // #[swift_bridge::bridge(swift_repr = "struct")]
    // struct RipgrepOptions {
    //     parallel: bool,
    // }

    extern "Rust" {
        fn glob(glob: String) -> Vec<String>;
    }
}

fn glob(glob: String) -> Vec<String> {
    vec![]
}