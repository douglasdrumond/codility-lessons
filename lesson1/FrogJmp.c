// you can write to stdout for debugging purposes, e.g.
// printf("this is a debug message\n");

int solution(int X, int Y, int D) {
    // write your code in C99
    int diff = Y - X;
    int rem = diff % D;
    return rem ? diff/D + 1 : diff/D;
}
