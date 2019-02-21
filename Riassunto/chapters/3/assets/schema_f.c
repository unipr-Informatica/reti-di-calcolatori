chsum(u_sort* buf, int count) {
    register u_long sum = 0;

    while (count--) {
        sum += buf++;

        if (sum & 0xffff0000) {
            sum &= 0xffff;
            sum++;
        }
    }

    return ~(sum & 0xffff);
}