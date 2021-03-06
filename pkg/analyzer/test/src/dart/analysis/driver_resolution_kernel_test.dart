// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test_reflective_loader/test_reflective_loader.dart';

import 'driver_resolution_test.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(AnalysisDriverResolutionTest_Kernel);
  });
}

/// Tests marked with this annotations fail because we either have not triaged
/// them, or know that this is an analyzer problem.
const potentialAnalyzerProblem = const Object();

@reflectiveTest
class AnalysisDriverResolutionTest_Kernel extends AnalysisDriverResolutionTest {
  @override
  bool get useCFE => true;

  @failingTest
  @override
  test_annotation_onVariableList_topLevelVariable() =>
      super.test_annotation_onVariableList_topLevelVariable();

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_instanceCreation_name_11() async {
    await super.test_unresolved_instanceCreation_name_11();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_instanceCreation_name_21() async {
    await super.test_unresolved_instanceCreation_name_21();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_instanceCreation_name_22() async {
    await super.test_unresolved_instanceCreation_name_22();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_instanceCreation_name_31() async {
    await super.test_unresolved_instanceCreation_name_31();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_instanceCreation_name_32() async {
    await super.test_unresolved_instanceCreation_name_32();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_instanceCreation_name_33() async {
    await super.test_unresolved_instanceCreation_name_33();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_methodInvocation_argument_resolved_named() async {
    await super.test_unresolved_methodInvocation_argument_resolved_named();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_methodInvocation_argument_resolved_required() async {
    await super.test_unresolved_methodInvocation_argument_resolved_required();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_methodInvocation_noTarget() async {
    await super.test_unresolved_methodInvocation_noTarget();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_methodInvocation_target_unresolved() async {
    await super.test_unresolved_methodInvocation_target_unresolved();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_prefixedIdentifier_prefix() async {
    await super.test_unresolved_prefixedIdentifier_prefix();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_propertyAccess_1() async {
    await super.test_unresolved_propertyAccess_1();
  }

  @override
  @failingTest
  @potentialAnalyzerProblem
  test_unresolved_simpleIdentifier() async {
    await super.test_unresolved_simpleIdentifier();
  }
}

/// Tests marked with this annotation fail because of a Fasta problem.
class FastaProblem {
  const FastaProblem(String issueUri);
}
