// ** operator added. It's exponentiation and works with most
//   combination of numerical types (int,float,Gmp.mpq,Gmp.mpf,Gmp.mpz)
//
//   `** and ``** operator overloading functions added.

//   This introduces one incompatible change: Previously the "pow"
//   function called a "_pow" function in the first argument if it was an
//   object. It has now been changed to also use `** (or, rather, pow()
//   is now implemented using predef::`**()).

int main (int argc, array(string) argv) {
    object o1 = class {
        int a = 3;
        int `**(object o) {
            write ("Inside `**()\n");
            return this->a**o->a;
        }
        int _pow(object o) {
            write ("Inside _pow()\n");
            return this->a**o->a;
        }
    }();


    write("Newschool power: o1**o1: %O\n", o1**o1);
    write("Newschool power: pow(o1, o1): %O\n", pow(o1, o1));
    return 0;
}
