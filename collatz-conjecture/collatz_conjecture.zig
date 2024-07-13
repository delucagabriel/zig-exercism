pub const ComputationError = error{
    IllegalArgument
};

pub fn steps(number: usize) anyerror!usize {
    var numSteps: usize = 0;
    var n = number;
    if(n <= 0) {
        return ComputationError.IllegalArgument;
    }
    while (n != 1) {
        if (n % 2 == 0) {
            n /= 2;
        } else {
            n = 3 * n + 1;
        }
        numSteps += 1;
    }
    return numSteps;
}