// Checking if an Optional is empty
//
//https://c3-lang.org/language-common/optionals-essential/ 
import std::io;

fn void? test() {
    // Return an Excuse by adding '?' after the fault.
    return io::FILE_NOT_FOUND?;
}

fn void main(String[] args) {
    // If the Optional is empty, assign the
    // Excuse to a variable:
    if (catch excuse = test()) {
        io::printfn("test() gave an Excuse: %s", excuse);
    }
}
