// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test_reflective_loader/test_reflective_loader.dart';

import 'hint_code_driver_test.dart';

main() {
  defineReflectiveSuite(() {
    defineReflectiveTests(HintCodeTest_Kernel);
  });
}

@reflectiveTest
class HintCodeTest_Kernel extends HintCodeTest_Driver {
  @override
  bool get enableKernelDriver => true;

  @override
  bool get useCFE => true;

  @failingTest
  @override
  test_abstractSuperMemberReference_getter() async {
    // Expected 1 errors of type HintCode.ABSTRACT_SUPER_MEMBER_REFERENCE, found 0
    return super.test_abstractSuperMemberReference_getter();
  }

  @failingTest
  @override
  test_abstractSuperMemberReference_method_invocation() async {
    // Expected 1 errors of type HintCode.ABSTRACT_SUPER_MEMBER_REFERENCE, found 0
    return super.test_abstractSuperMemberReference_method_invocation();
  }

  @failingTest
  @override
  test_abstractSuperMemberReference_method_reference() async {
    // Expected 1 errors of type HintCode.ABSTRACT_SUPER_MEMBER_REFERENCE, found 0
    return super.test_abstractSuperMemberReference_method_reference();
  }

  @override
  @failingTest
  test_abstractSuperMemberReference_setter() async {
    // Bad state: Unable to convert (ABSTRACT_SUPER_MEMBER_REFERENCE, @99, Superclass has no setter named 'test'.)
    return super.test_abstractSuperMemberReference_setter();
  }

  @failingTest
  @override
  test_abstractSuperMemberReference_superHasNoSuchMethod() async {
    // Expected 1 errors of type HintCode.ABSTRACT_SUPER_MEMBER_REFERENCE, found 0
    return super.test_abstractSuperMemberReference_superHasNoSuchMethod();
  }

  @failingTest
  @override
  test_argumentTypeNotAssignable_functionType() async {
    // Expected 1 errors of type HintCode.ARGUMENT_TYPE_NOT_ASSIGNABLE, found 0
    return super.test_argumentTypeNotAssignable_functionType();
  }

  @failingTest
  @override
  test_argumentTypeNotAssignable_type() async {
    // Expected 1 errors of type HintCode.ARGUMENT_TYPE_NOT_ASSIGNABLE, found 0
    return super.test_argumentTypeNotAssignable_type();
  }

  @failingTest
  @override
  test_deadCode_deadFinalStatementInCase() async {
    // Expected 1 errors of type StaticWarningCode.CASE_BLOCK_NOT_TERMINATED, found 0
    return super.test_deadCode_deadFinalStatementInCase();
  }

  @failingTest
  @override
  test_deprecatedAnnotationUse_call() async {
    // Expected 1 errors of type HintCode.DEPRECATED_MEMBER_USE, found 0
    return super.test_deprecatedAnnotationUse_call();
  }

  @failingTest
  @override
  test_deprecatedAnnotationUse_Deprecated() async {
    // Expected 1 errors of type HintCode.DEPRECATED_MEMBER_USE, found 0
    return super.test_deprecatedAnnotationUse_Deprecated();
  }

  @failingTest
  @override
  test_deprecatedAnnotationUse_positional() async {
    return super.test_deprecatedAnnotationUse_positional();
  }

  @failingTest
  @override
  test_deprecatedFunction_class() async {
    // Expected 1 errors of type HintCode.DEPRECATED_FUNCTION_CLASS_DECLARATION, found 0
    return super.test_deprecatedFunction_class();
  }

  @failingTest
  @override
  test_deprecatedFunction_extends() async {
    // Expected 1 errors of type HintCode.DEPRECATED_EXTENDS_FUNCTION, found 0;
    //          1 errors of type StaticWarningCode.FUNCTION_WITHOUT_CALL, found 0
    return super.test_deprecatedFunction_extends();
  }

  @failingTest
  @override
  test_deprecatedFunction_extends2() async {
    // Expected 1 errors of type HintCode.DEPRECATED_FUNCTION_CLASS_DECLARATION, found 0;
    //          1 errors of type HintCode.DEPRECATED_EXTENDS_FUNCTION, found 0
    return super.test_deprecatedFunction_extends2();
  }

  @failingTest
  @override
  test_deprecatedFunction_mixin() async {
    // Expected 1 errors of type HintCode.DEPRECATED_MIXIN_FUNCTION, found 0;
    //          1 errors of type StaticWarningCode.FUNCTION_WITHOUT_CALL, found 0
    return super.test_deprecatedFunction_mixin();
  }

  @failingTest
  @override
  test_deprecatedFunction_mixin2() async {
    // Expected 1 errors of type HintCode.DEPRECATED_FUNCTION_CLASS_DECLARATION, found 0;
    //          1 errors of type HintCode.DEPRECATED_MIXIN_FUNCTION, found 0
    return super.test_deprecatedFunction_mixin2();
  }

  @failingTest
  @override
  test_duplicateShownHiddenName_hidden() {
    // Expected 1 errors of type HintCode.DUPLICATE_HIDDEN_NAME, found 0
    return super.test_duplicateShownHiddenName_hidden();
  }

  @failingTest
  @override
  test_duplicateShownHiddenName_shown() {
    // Expected 1 errors of type HintCode.DUPLICATE_SHOWN_NAME, found 0
    return super.test_duplicateShownHiddenName_shown();
  }

  @override
  @failingTest
  test_invalidRequiredParam_on_named_parameter_with_default() async {
    return super.test_invalidRequiredParam_on_named_parameter_with_default();
  }

  @failingTest
  @override
  test_js_lib_OK() async {
    // Bad state: Expected element reference for analyzer offset 51; got one for kernel offset 1
    return super.test_js_lib_OK();
  }

  @failingTest
  @override
  test_missingJsLibAnnotation_class() async {
    // Expected 1 errors of type HintCode.MISSING_JS_LIB_ANNOTATION, found 0;
    //          0 errors of type HintCode.UNUSED_IMPORT, found 1 (21)
    return super.test_missingJsLibAnnotation_class();
  }

  @failingTest
  @override
  test_missingJsLibAnnotation_externalField() async {
    // Expected 1 errors of type ParserErrorCode.EXTERNAL_FIELD, found 0;
    //          1 errors of type HintCode.MISSING_JS_LIB_ANNOTATION, found 0;
    //          0 errors of type ParserErrorCode.EXTRANEOUS_MODIFIER, found 1 (36);
    //          0 errors of type HintCode.UNUSED_IMPORT, found 1 (7)
    return super.test_missingJsLibAnnotation_externalField();
  }

  @failingTest
  @override
  test_missingJsLibAnnotation_function() async {
    // Expected 1 errors of type HintCode.MISSING_JS_LIB_ANNOTATION, found 0;
    //          0 errors of type HintCode.UNUSED_IMPORT, found 1 (21)
    return super.test_missingJsLibAnnotation_function();
  }

  @failingTest
  @override
  test_missingJsLibAnnotation_method() async {
    // Expected 1 errors of type HintCode.MISSING_JS_LIB_ANNOTATION, found 0;
    //          0 errors of type HintCode.UNUSED_IMPORT, found 1 (21)
    return super.test_missingJsLibAnnotation_method();
  }

  @failingTest
  @override
  test_missingJsLibAnnotation_variable() async {
    // Expected 1 errors of type HintCode.MISSING_JS_LIB_ANNOTATION, found 0;
    //          0 errors of type HintCode.UNUSED_IMPORT, found 1 (7)
    return super.test_missingJsLibAnnotation_variable();
  }

  @failingTest
  @override
  test_mustCallSuper() async {
    // Expected 1 errors of type HintCode.MUST_CALL_SUPER, found 0
    return super.test_mustCallSuper();
  }

  @failingTest
  @override
  test_mustCallSuper_indirect() async {
    // Expected 1 errors of type HintCode.MUST_CALL_SUPER, found 0
    return super.test_mustCallSuper_indirect();
  }

  @override
  @failingTest
  test_required_constructor_param() async {
    return super.test_required_constructor_param();
  }

  @override
  @failingTest
  test_required_constructor_param_null_reason() async {
    return super.test_required_constructor_param_null_reason();
  }

  @override
  @failingTest
  test_required_constructor_param_super_call() async {
    return super.test_required_constructor_param_super_call();
  }

  @override
  @failingTest
  test_required_function_param() async {
    return super.test_required_function_param();
  }

  @override
  @failingTest
  test_required_method_param() async {
    return super.test_required_method_param();
  }

  @override
  @failingTest
  test_required_method_param_in_other_lib() async {
    return super.test_required_method_param_in_other_lib();
  }

  @override
  @failingTest
  test_required_typedef_function_param() async {
    return super.test_required_typedef_function_param();
  }

  @failingTest
  @override
  test_strongMode_downCastCompositeHint() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_DOWN_CAST_COMPOSITE, found 0
    return super.test_strongMode_downCastCompositeHint();
  }

  @failingTest
  @override
  test_strongMode_downCastCompositeWarn() async {
    // Expected 1 errors of type StrongModeCode.STRONG_MODE_DOWN_CAST_COMPOSITE, found 0
    return super.test_strongMode_downCastCompositeWarn();
  }

  @override
  @failingTest
  test_strongMode_topLevelInstanceGetter_implicitlyTyped_invoke() {
    return super
        .test_strongMode_topLevelInstanceGetter_implicitlyTyped_invoke();
  }

  @override
  @failingTest
  test_strongMode_topLevelInstanceGetter_implicitlyTyped_invoke_explicit_type_params() {
    return super
        .test_strongMode_topLevelInstanceGetter_implicitlyTyped_invoke_explicit_type_params();
  }

  @failingTest
  @override
  test_undefinedOperator_binaryExpression() async {
    // Expected 1 errors of type HintCode.UNDEFINED_OPERATOR, found 0
    return super.test_undefinedOperator_binaryExpression();
  }

  @failingTest
  @override
  test_undefinedOperator_indexBoth() async {
    // Expected 1 errors of type HintCode.UNDEFINED_OPERATOR, found 0
    return super.test_undefinedOperator_indexBoth();
  }

  @failingTest
  @override
  test_undefinedOperator_indexGetter() async {
    // Expected 1 errors of type HintCode.UNDEFINED_OPERATOR, found 0
    return super.test_undefinedOperator_indexGetter();
  }

  @failingTest
  @override
  test_undefinedOperator_indexSetter() async {
    // Expected 1 errors of type HintCode.UNDEFINED_OPERATOR, found 0
    return super.test_undefinedOperator_indexSetter();
  }

  @failingTest
  @override
  test_unusedImport_inComment_libraryDirective() async {
    // Expected 0 errors of type HintCode.UNUSED_IMPORT, found 1 (42)
    return super.test_unusedImport_inComment_libraryDirective();
  }

  @failingTest
  @override
  test_unusedShownName() async {
    // Expected 1 errors of type HintCode.UNUSED_SHOWN_NAME, found 0
    return super.test_unusedShownName();
  }

  @failingTest
  @override
  test_unusedShownName_as() async {
    // Expected 1 errors of type HintCode.UNUSED_SHOWN_NAME, found 0;
    //          0 errors of type HintCode.UNUSED_IMPORT, found 1 (18)
    return super.test_unusedShownName_as();
  }

  @failingTest
  @override
  test_unusedShownName_duplicates() async {
    // Expected 2 errors of type HintCode.UNUSED_SHOWN_NAME, found 0
    return super.test_unusedShownName_duplicates();
  }

  @failingTest
  @override
  test_unusedShownName_topLevelVariable() async {
    // Expected 1 errors of type HintCode.UNUSED_SHOWN_NAME, found 0
    return super.test_unusedShownName_topLevelVariable();
  }
}
