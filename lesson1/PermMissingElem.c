// you can write to stdout for debugging purposes, e.g.
// printf("this is a debug message\n");

int solution(int A[], int N) {
    // write your code in C99
    long sum = 0;
    int i;
    for (i = 0; i < N; i++) {
        sum += A[i];
    }
    
    long expectedsum = N*(N+1)/2;
    
    int diff = sum - expectedsum;
    
    int missing = N + 1 - diff;
    
    return missing;
}
