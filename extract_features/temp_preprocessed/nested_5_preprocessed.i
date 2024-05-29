# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-simple/nested_5.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-simple/nested_5.c"
# 12 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-simple/nested_5.c"
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "nested_5.c", 13, "reach_error1"); }

int main() {
 int a = 6;
 int b = 6;
 int c = 6;
 int d = 6;
 int e = 6;


 for(a = 0; a < 6; ++a) {
  for(b = 0; b < 6; ++b) {
   for(c = 0; c < 6; ++c) {
    for(d = 0; d < 6; ++d) {
     for(e = 0; e < 6; ++e) {

     }
    }
   }
  }
 }
 if(!(a == 6 && b == 6 && c == 6 && d == 6 && e == 6)) {
  reach_error1();
 }
 return 1;
}
