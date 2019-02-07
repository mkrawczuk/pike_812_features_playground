void a () { return; }
void b () { return a(); }

int main (int argc, array(string) argv) {

    b();
    return 0;
}
