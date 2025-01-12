// ignore_for_file: unused_element

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

class init_dylib_1 {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  init_dylib_1(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  init_dylib_1.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void test() {
    return _test_1();
  }

  late final _test_ptr = _lookup<ffi.NativeFunction<_c_test1>>('test');
  late final _dart_test1 _test_1 = _test_ptr.asFunction<_dart_test1>();

  void _test() {
    return __test();
  }

  late final __test_ptr = _lookup<ffi.NativeFunction<_c__test>>('_test');
  late final _dart__test __test = __test_ptr.asFunction<_dart__test>();

  void _c_test() {
    return __c_test();
  }

  late final __c_test_ptr = _lookup<ffi.NativeFunction<_c__c_test>>('_c_test');
  late final _dart__c_test __c_test = __c_test_ptr.asFunction<_dart__c_test>();

  void _dart_test() {
    return __dart_test();
  }

  late final __dart_test_ptr =
      _lookup<ffi.NativeFunction<_c__dart_test>>('_dart_test');
  late final _dart__dart_test __dart_test =
      __dart_test_ptr.asFunction<_dart__dart_test>();

  void Test() {
    return _Test();
  }

  late final _Test_ptr = _lookup<ffi.NativeFunction<_c_Test1>>('Test');
  late final _dart_Test _Test = _Test_ptr.asFunction<_dart_Test>();
}

class _Test extends ffi.Struct {
  @ffi.Int8()
  external int _unique_array_item_0;
  @ffi.Int8()
  external int _unique_array_item_1;

  /// Helper for array `array`.
  ArrayHelper1__Test_array_level0 get array =>
      ArrayHelper1__Test_array_level0(this, [2], 0, 0);
}

/// Helper for array `array` in struct `_Test`.
class ArrayHelper1__Test_array_level0 {
  final _Test _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  ArrayHelper1__Test_array_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique_array_item_0;
      case 1:
        return _struct._unique_array_item_1;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique_array_item_0 = value;
        break;
      case 1:
        _struct._unique_array_item_1 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class ArrayHelperPrefixCollisionTest extends ffi.Opaque {}

abstract class _c_Test {}

abstract class init_dylib {}

typedef _c_test1 = ffi.Void Function();

typedef _dart_test1 = void Function();

typedef _c__test = ffi.Void Function();

typedef _dart__test = void Function();

typedef _c__c_test = ffi.Void Function();

typedef _dart__c_test = void Function();

typedef _c__dart_test = ffi.Void Function();

typedef _dart__dart_test = void Function();

typedef _c_Test1 = ffi.Void Function();

typedef _dart_Test = void Function();
