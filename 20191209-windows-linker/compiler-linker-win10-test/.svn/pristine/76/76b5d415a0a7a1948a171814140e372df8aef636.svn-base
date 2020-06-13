// clang -target mips-unknown-linux-gnu -c ch9_1.cpp -emit-llvm -o ch9_1.bc
// /Users/Jonathan/llvm/test/cmake_debug_build/Debug/bin/llc -march=cpu0 -relocation-model=pic -filetype=asm ch9_1.bc -o -
// /Users/Jonathan/llvm/test/cmake_debug_build/Debug/bin/llc -march=mips -relocation-model=pic -filetype=asm ch9_1.bc -o -

/// start
// extern void makesense(int n);

//extern int gI;
//For C it must be compile-time constant
//int gI = initgI(100);

static int mul_sum(int x1, int x2)
{
	static int sum = 0;
  	sum += x1 * x2;
  	// makesense(sum);
  
  	return sum; 
}

int main()
{ 
  // static int res = 1;
  
  return mul_sum(1, 2) + mul_sum(-3, -4); 

  
  //return 0;
}
