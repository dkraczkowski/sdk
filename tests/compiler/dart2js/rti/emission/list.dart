// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:meta/dart2js.dart';

/*class: global#JSArray:checks=[$isIterable]*/
/*class: global#Iterable:*/

/*class: A:checks=[]*/
class A {}

/*class: B:checks=[]*/
class B {}

@noInline
test(o) => o is Iterable<A>;

main() {
  test(<A>[]);
  test(<B>[]);
}
