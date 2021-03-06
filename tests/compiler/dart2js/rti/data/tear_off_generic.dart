// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*kernel.class: A:needsArgs*/
/*strong.class: A:direct,explicit=[A.T],needsArgs*/
/*omit.class: A:*/
class A<T> {
  /*kernel.element: A.m:needsSignature*/
  /*strong.element: A.m:*/
  /*omit.element: A.m:*/
  void m(T t) {}

  /*element: A.f:*/
  void f(int t) {}
}

main() {
  new A<int>().m is void Function(int);
  new A<int>().f is void Function(int);
}
