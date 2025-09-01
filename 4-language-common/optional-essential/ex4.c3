// Optionals affect types and control flow
// Optionals in expressions produce Optionals

import std::io;

// Use an Optional anywhere in an expression the resulting expression will be an Optional too.
fn void main(String[] args) {
    // Returns Optional with result of type `int` or an Excuse
    int? first_optional = 7;

    // This is Optional too:
    int? second_optional = first_optional + 1;
    // error
    //io::printn(second_optional);
    io::printn(second_optional!!);
}
