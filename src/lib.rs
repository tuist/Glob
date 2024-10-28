#[swift_bridge::bridge]
mod ffi {
    extern "Rust" {
        fn glob(glob: &str) -> Vec<String>;
    }
}

fn glob(glob: &str) -> Vec<String> {
    glob::glob(&glob)
        .unwrap()
        .filter_map(Result::ok)
        .filter_map(|f| f.as_path().to_str().map(String::from))
        .collect()
}
