import Pike.Annotations;

class InheritedImplements {
    inherit Implements;
    @Inherited;
}

class StreamAPI {
    void write(string s);
    string read(int len);
}

class Stream {
    @InheritedImplements(StreamAPI);
    @("hello");
}

class File {
    inherit Stream;
}

int main (int argc, array(string) argv) {
    write("annotations(File): %O\n", annotations(File));
    write("annotations(File()): %O\n", annotations(File()));

    return 0;
}
