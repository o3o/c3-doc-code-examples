//Methods
//
//Methods look exactly like functions, but are prefixed with the type name and is (usually) invoked using dot syntax:

import std::io;

struct Point {
    int x;
    int y;
}

fn void Point.add(Point* p, int x) {
    p.x += x;
}

//Because the type of the first argument is known, it may be left out. 
//To indicate a pointer & is used.
fn int Point.dist(&self) {
   return self.x + self.y;
}


fn void plus1(Point* p) {
    p.x += 1;
}
fn void plus2(Point p) {
    p.x += 2;
}


fn void main() {
    Point p = { 1, 2 };

    // with struct-functions
    p.add(10);
    assert(p.x == 11);

    // Also callable as:
    Point.add(&p, 10);
    assert(p.x == 21);

    assert(p.dist() == 23);

    plus1(&p);
    assert(p.x == 22);

    plus2(p);
    assert(p.x == 22);
}
