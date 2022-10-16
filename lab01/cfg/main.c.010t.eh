
;; Function add (add, funcdef_no=0, decl_uid=2249, cgraph_uid=0, symbol_order=0)

add (int x, int y)
{
  int result;
  int D.2275;

  result = x + y;
  D.2275 = result;
  goto <D.2276>;
  <D.2276>:
  return D.2275;
}



;; Function main (main, funcdef_no=1, decl_uid=2252, cgraph_uid=1, symbol_order=1)

main ()
{
  int j;
  int k;
  int j;
  int array[15];
  int t;
  int i;
  int b;
  int a;
  const int num;
  int y;
  int x;
  int D.2279;

  __builtin_puts (&"compile project(test)"[0]);
  printf ("file:%s\n", "main.c");
  printf ("date:%s\n", "Oct  8 2022");
  printf ("time:%s\n", "12:15:45");
  __builtin_puts (&"Please input x and y:"[0]);
  scanf ("%d%d", &x, &y);
  y.0_1 = y;
  x.1_2 = x;
  printf ("x=%d, y=%d\n", x.1_2, y.0_1);
  y.2_3 = y;
  x.3_4 = x;
  _5 = MAX_EXPR <y.2_3, x.3_4>;
  printf ("MAX number=%d\n", _5);
  y.4_6 = y;
  x.5_7 = x;
  _8 = add (x.5_7, y.4_6);
  printf ("add result=%d\n", _8);
  num = 10;
  a = 0;
  b = 1;
  i = 1;
  printf ("fibonacci sequence:%d %d", a, b);
  goto <D.2262>;
  <D.2261>:
  t = b;
  b = a + b;
  printf (" %d", b);
  a = t;
  i = i + 1;
  <D.2262>:
  if (i < num) goto <D.2261>; else goto <D.2263>;
  <D.2263>:
  __builtin_putchar (10);
  j = 0;
  k = 0;
  goto <D.2268>;
  <D.2267>:
  j.6_9 = (unsigned int) j;
  _10 = j.6_9 & 1;
  if (_10 == 0) goto <D.2277>; else goto <D.2278>;
  <D.2277>:
  array[k] = j;
  k = k + 1;
  <D.2278>:
  j = j + 1;
  <D.2268>:
  if (j <= 29) goto <D.2267>; else goto <D.2269>;
  <D.2269>:
  printf ("array:");
  j = 0;
  goto <D.2272>;
  <D.2271>:
  _11 = array[j];
  printf ("%d ", _11);
  j = j + 1;
  <D.2272>:
  if (j <= 14) goto <D.2271>; else goto <D.2273>;
  <D.2273>:
  __builtin_putchar (10);
  D.2279 = 0;
  goto <D.2281>;
  <D.2281>:
  x = {CLOBBER};
  y = {CLOBBER};
  array = {CLOBBER};
  goto <D.2280>;
  D.2279 = 0;
  goto <D.2280>;
  <D.2280>:
  return D.2279;
}


