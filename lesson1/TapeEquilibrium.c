// you can write to stdout for debugging purposes, e.g.
// printf("this is a debug message\n");

int abs(int x) {
    return x >= 0 ? x : -x;
}

int solution(int A[], int N) {
    // write your code in C99
    
    long left[100000];
    long right[100000];
    int i; // array index
    
    
    left[0] = 0;
    for (i = 1; i < N; i++) {
        left[i] = left[i-1] + A[i-1];
    }
    
    right[N-1] = A[N-1];
    for (i = N-2; i >= 1; i--) {
        right[i] = right[i+1] + A[i];
    }
    
    int min = abs(left[1] - right[1]);
    int diff;
    for (i = 2; i < N; i++) {
        diff = abs(left[i] - right[i]);
        if (diff < min) {
            min = diff;
        }
    }
    
    return min;
}
