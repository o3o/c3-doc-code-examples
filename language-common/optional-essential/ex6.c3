// Functions conditionally run when called with Optional arguments

// When calling a function with an Optionals as arguments, the result will be the first Excuse found looking left-to-right.
// The function is only executed if all Optional arguments have a result.

import std::io;

fn int test(int input, int input2) {
    io::printn("test(): inside function body");
    return input;
}

fn void main(String[] args) {
    int? first_optional = io::FILE_NOT_FOUND?;
    int? second_optional = 7;

    // Return first excuse we find
    int? third_optional = test(first_optional, second_optional);
    if (catch excuse = third_optional) {
        // excuse == io::FILE_NOT_FOUND
        io::printfn("third_optional's Excuse: %s", excuse);
    }
}
