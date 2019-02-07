int main (int argc, array(string) argv) {
    // write("glob(\"[abc]\", \({"a\", \"[abc]\"})):\t%O\n", glob("[abc]", ({"a", "[abc]"})));
    write("glob(\"[abc]\", ({\"a\", \"[abc]\"})):\t%O\n", glob("[abc]", ({"a", "[abc]"})));

    return 0;
}
