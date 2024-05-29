# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-simple/nested_2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-simple/nested_2.c"
# 12 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-simple/nested_2.c"
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "nested_2.c", 13, "reach_error1"); }

int main() {
 int a = 6;
 int b = 6;


 for(a = 0; a < 6; ++a) {
  for(b = 0; b < 6; ++b) {

  }
 }
 if(!(a == 6 && b == 6 )) {
  reach_error1();
 }
 return 1;
}
