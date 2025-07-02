import 'package:flutter/material.dart';

class RefreshWrapper extends StatelessWidget {
  final RefreshCallback? onRefresh;
  final Widget child;

  const RefreshWrapper({
    Key? key,
    this.onRefresh,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (onRefresh != null) {
      return RefreshIndicator(
        onRefresh: onRefresh!,
        child: child,
      );
    }

    return child;
  }
}
