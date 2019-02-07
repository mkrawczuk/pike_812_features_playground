class C {
    class Nested {}
    __weak__ Nested weak_nested_obj = Nested();
    __weak__ mixed weak_nested_mixed = Nested();
    Nested nested_obj = Nested();
    mixed nested_mixed = Nested();
};

int main (int argc, array(string) argv) {
    C c = C();
    write("Before garbage collection: \n");
    write("c->nested_obj:\t\t%O\n",        c->nested_obj);
    write("c->nested_mixed:\t%O\n",      c->nested_mixed);
    write("c->weak_nested_obj:\t%O\n",   c->weak_nested_obj);
    write("c->weak_nested_mixed:\t%O\n", c->weak_nested_mixed);
    gc();
    write("\nAfter garbage collection: \n");
    write("c->nested_obj:\t\t%O\n",        c->nested_obj);
    write("c->nested_mixed:\t%O\n",      c->nested_mixed);
    write("c->weak_nested_obj:\t%O\n",   c->weak_nested_obj);
    write("c->weak_nested_mixed:\t%O\n", c->weak_nested_mixed);

    return 0;
}
