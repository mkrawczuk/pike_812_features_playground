// typeof(X) can now be used as a type,
// but not in Hilfe.
//
// example:
// typeof(int) a = 1;
// undefined identifier a
//
//
// Below causes fatal error
// typedef typeof(Val.true)|typeof(Val.false) bool;
// typedef typeof(int)|typeof(float) number;

int main (int argc, array(string) argv) {
//    write("typeof(bool): %O\n", typeof(bool));
//    write("typeof(number): %O\n", typeof(number));

    typeof(argc) a = 1;
    write("typeof(a): %O\n", typeof(a));

    //typeof(2) b = 1;

    return 0;
}
