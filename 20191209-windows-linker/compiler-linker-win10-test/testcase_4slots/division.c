int integer_div(unsigned int dividend, unsigned int divisor)
{
    // if(divisor == 0)
    // {
    //     cout << "除数不能为0" << endl;
    //     exit(1);
    // }

    if (dividend < divisor)
        return 0;

    unsigned int k, c, res = 0;

    while (dividend > divisor)
    {
        for (k = 0, c = divisor; dividend >= c; c <<= 1, k++)
        {
            if (dividend - c < divisor)
            {
                res += 1 << k;
                break;
            }
        }
        if (dividend - c < divisor)
            break;

        res += 1 << (k - 1);
        dividend -= c >> 1;
    }

    return res;
}

int main()
{
    int a = integer_div(7, 3);
    int b = 1;
    int c = b + 1;
    // b = c + 1;
    return 0;
}