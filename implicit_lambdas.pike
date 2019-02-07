// Support for arguments to implicit lambdas added.
// Support for this feature can be detected with #ifdef __ARGS__.

int main (int argc, array(string) argv) {
#ifdef __ARGS__
    mixed val =
    lambda(array a, int i, mapping m, function f) { return f(@a, i, m); }
    (
        ({ 0, 1, 2, 3 }),
        5,
        (["foo": 1.0, "bar": -1.0])
    )
    { return __ARGS__; };

    write("%O\n", val);
#endif

    return 0;
}
