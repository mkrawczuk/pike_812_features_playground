// This actually gives the same output in Pike 8 and Pike 8.1

int main (int argc, array(string) argv) {
    sscanf("0b10100111001", "%O", int leet);
    write("leet: %d\n", leet);
    return 0;
}
