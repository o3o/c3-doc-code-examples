// Using the Rethrow operator ! to unwrap an Optional value
import std::io;

// Function returning an Optional
fn int? maybe_function() { 
   return 42;
}

fn void? test() {
    // This will be a compile error:
    // int bar = maybe_function();
    //
    // maybe_function() returns an Optional
    // and 'bar' is not declared Optional:

    int bar = maybe_function()!;

    // The above is equivalent to:
    int? temp = maybe_function();
    if (catch excuse = temp) return excuse?;

    // Now temp is unwrapped to a non-Optional
    int foo = temp; // This is OK
}

fn void main(String[] args) {
    (void)test();
}
