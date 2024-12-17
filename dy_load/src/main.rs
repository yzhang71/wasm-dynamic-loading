use wasmtime::*;
use wasmtime_wasi::{WasiCtxBuilder};

fn main() -> anyhow::Result<()> {
    // Create a new Wasmtime engine and store
    let engine = Engine::default();
    let mut store = Store::new(&engine, WasiCtxBuilder::new().inherit_stdio().build());

    // Load the `lib.wasm` module
    let lib_module = Module::from_file(&engine, "lib.wasm")?;
    let lib_instance = Instance::new(&mut store, &lib_module, &[])?;

    // Load the `main.wasm` module
    let main_module = Module::from_file(&engine, "main.wasm")?;

    // Define the "lib" module for linking
    let mut linker = Linker::new(&engine);
    linker.instance(&mut store, "lib", lib_instance)?;

    // Instantiate `main.wasm` using the linker
    let main_instance = linker.instantiate(&mut store, &main_module)?;

    // Get the `main` function from `main.wasm`
    let main_func = main_instance.get_typed_func::<(), ()>(&mut store, "main")?;

    // Call the `main` function
    main_func.call(&mut store, ())?;

    Ok(())
}
