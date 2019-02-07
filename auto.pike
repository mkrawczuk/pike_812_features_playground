// Compiler now makes three passes.
// It is used to properly resolve types in forward referring expressions,
// and is only run when needed.
//
// auto keyword doesn't work in Hilfe, since it is resolved at compile time

auto foo (int a) {
    if (a > 0) return 1.0;
    if (a == 0) return ({sin, ""});
    if (a < 0) return 1;

    return a;
}

auto bar (auto a) {
    int b = a;
    return b;           // resolved to function(auto:int)
    //return a;         // resolved to function(auto:auto)
    //return 1;         // resolved to function(auto:int(1..1))
    // return a + 1;    // compilation error
}

int main (int argc, array(string) argv) {
    write("typeof(foo): %O\n", typeof(foo));
    write("typeof(foo(1)): %O\n", typeof(foo(1)));
    write("typeof(bar): %O\n", typeof(bar));
    // compilation error, auto not resolving for fuction parameters
    // write("typeof(bar(1)): %O\n", typeof(bar(1)));
    // array(auto) arr = ({1, -1.0}); compilation error
    // array(int|float) arr = ({1, -1.0});
    array arr = ({1, -1.0});

    write("typeof(arr): %O\n", typeof(arr));

    foreach(arr, auto a) {
        write("typeof(a): %O\n", typeof(a));
    }
    return 0;
}
