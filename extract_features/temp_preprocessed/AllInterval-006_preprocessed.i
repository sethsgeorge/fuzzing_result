# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/xcsp/AllInterval-006.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/xcsp/AllInterval-006.c"
# 10 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/xcsp/AllInterval-006.c"
 void abort(void)
;
 void __assert_fail(const char *, const char *, unsigned int,
                          const char *)
;
int __VERIFIER_nondet_int();
void reach_error1() {
  __assert_fail("0", "AllInterval-006.c", 5, "reach_error1");
}
void assume(int cond) {
  if (!cond)
    abort();
}
int main() {
  int cond0;
  int dummy = 0;
  int N;
  int var0;
  var0 = __VERIFIER_nondet_int();
  assume(var0 >= 0);
  assume(var0 <= 5);
  int var1;
  var1 = __VERIFIER_nondet_int();
  assume(var1 >= 0);
  assume(var1 <= 5);
  int var2;
  var2 = __VERIFIER_nondet_int();
  assume(var2 >= 0);
  assume(var2 <= 5);
  int var3;
  var3 = __VERIFIER_nondet_int();
  assume(var3 >= 0);
  assume(var3 <= 5);
  int var4;
  var4 = __VERIFIER_nondet_int();
  assume(var4 >= 0);
  assume(var4 <= 5);
  int var5;
  var5 = __VERIFIER_nondet_int();
  assume(var5 >= 0);
  assume(var5 <= 5);
  int var6;
  var6 = __VERIFIER_nondet_int();
  assume(var6 >= 1);
  assume(var6 <= 5);
  int var7;
  var7 = __VERIFIER_nondet_int();
  assume(var7 >= 1);
  assume(var7 <= 5);
  int var8;
  var8 = __VERIFIER_nondet_int();
  assume(var8 >= 1);
  assume(var8 <= 5);
  int var9;
  var9 = __VERIFIER_nondet_int();
  assume(var9 >= 1);
  assume(var9 <= 5);
  int var10;
  var10 = __VERIFIER_nondet_int();
  assume(var10 >= 1);
  assume(var10 <= 5);
  int myvar0 = 1;
  assume(var0 != var1);
  assume(var0 != var2);
  assume(var0 != var3);
  assume(var0 != var4);
  assume(var0 != var5);
  assume(var1 != var2);
  assume(var1 != var3);
  assume(var1 != var4);
  assume(var1 != var5);
  assume(var2 != var3);
  assume(var2 != var4);
  assume(var2 != var5);
  assume(var3 != var4);
  assume(var3 != var5);
  assume(var4 != var5);
  assume(var6 != var7);
  assume(var6 != var8);
  assume(var6 != var9);
  assume(var6 != var10);
  assume(var7 != var8);
  assume(var7 != var9);
  assume(var7 != var10);
  assume(var8 != var9);
  assume(var8 != var10);
  assume(var9 != var10);
  int var_for_abs;
  var_for_abs = var0 - var1;
  var_for_abs = (var_for_abs >= 0) ? var_for_abs : var_for_abs * (-1);
  assume(var6 == var_for_abs);
  var_for_abs = var1 - var2;
  var_for_abs = (var_for_abs >= 0) ? var_for_abs : var_for_abs * (-1);
  assume(var7 == var_for_abs);
  var_for_abs = var2 - var3;
  var_for_abs = (var_for_abs >= 0) ? var_for_abs : var_for_abs * (-1);
  assume(var8 == var_for_abs);
  var_for_abs = var3 - var4;
  var_for_abs = (var_for_abs >= 0) ? var_for_abs : var_for_abs * (-1);
  assume(var9 == var_for_abs);
  var_for_abs = var4 - var5;
  var_for_abs = (var_for_abs >= 0) ? var_for_abs : var_for_abs * (-1);
  assume(var10 == var_for_abs);
  reach_error1();
  return 0;

}
