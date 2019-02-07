// before Pike 8.1, this is a no-op
// After Pike 8.1, this causes a compilation error, although the changelog
// says that "Anonymous class definitions are now always expressions."
// class {};

int main (int argc, array(string) argv) {
    // Initialize a program with an anonymous class
    program p = class {int i; object o = this;};
    // Initialize an object with an anonymous class instance
    object o =  class {int i; object o = this;}();

    write("typeof(p):\t%O\n", typeof(p));
    write("indices(p()):\t%O\n", indices(p()));
    write("typeof(p()):\t%O\n", typeof(p()));
    write("indices(o):\t%O\n", indices(o));
    write("typeof(o):\t%O\n", typeof(o));

    return 0;
}
