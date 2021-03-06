import 'package:meta/meta.dart';
import 'package:angular/src/core/linker/views/view.dart';

import 'hierarchical.dart';
import 'injector.dart';

/// **INTERNAL ONLY**: Adapts the [View] interfaces as an injector.
@Immutable()
class ElementInjector extends HierarchicalInjector implements Injector {
  final View _view;
  final int _nodeIndex;

  ElementInjector(this._view, this._nodeIndex);

  @override
  dynamic provideUntyped(Object token, [Object orElse = throwIfNotFound]) =>
      _view.injectorGet(token, _nodeIndex, orElse);

  @override
  Object injectFromAncestryOptional(
    Object token, [
    Object orElse = throwIfNotFound,
  ]) =>
      throw UnimplementedError();

  @override
  Object injectFromParentOptional(
    Object token, [
    Object orElse = throwIfNotFound,
  ]) =>
      throw UnimplementedError();

  @override
  Object injectFromSelfOptional(
    Object token, [
    Object orElse = throwIfNotFound,
  ]) =>
      throw UnimplementedError();
}
