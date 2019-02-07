int main (int argc, array(string) argv) {
    object frame = backtrace()[0];

    write("frame:\t\t%O\n\n", frame);

    write("frame[0]:\t%O\n", frame[0]);
    write("frame[1]:\t%O\n", frame[1]);
    write("frame[2]:\t%O\n", frame[2]);
    write("frame[3]:\t%O\n", frame[3]);

    write("frame->filename:%O\n", frame->filename);
    write("frame->line:\t%O\n", frame->line);
    write("frame->fun:\t%O\n", frame->fun);
    write("frame->args\t:%O\n", frame->args);
    return 0;
}
