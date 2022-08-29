import 'package:flutter/material.dart';

class BackgroundIndicator extends StatefulWidget {
  const BackgroundIndicator({
    super.key,
    required this.itemCount,
    required this.selectedIndex,
    this.duration = const Duration(milliseconds: 300),
    this.onPageChange,
  });

  final int itemCount;
  final int selectedIndex;
  final Duration duration;
  final void Function(int)? onPageChange;

  @override
  State<BackgroundIndicator> createState() => _BackgroundIndicatorState();
}

class _BackgroundIndicatorState extends State<BackgroundIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _tween;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _tween = Tween<double>(
      begin: 0,
      end: widget.duration.inMilliseconds.toDouble(),
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        if (widget.onPageChange != null) {
          final index = widget.selectedIndex + 1;
          widget.onPageChange!(index == widget.itemCount ? 0 : index);
        }
      }
    });

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        widget.itemCount,
        (index) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: index != widget.itemCount - 1 ? 8 : 0,
              ),
              child: index == widget.selectedIndex
                  ? AnimatedBuilder(
                      animation: _controller,
                      builder: (context, _) {
                        return LinearProgressIndicator(
                          value: _tween.value / widget.duration.inMilliseconds,
                        );
                      },
                    )
                  : LinearProgressIndicator(
                      value: index < widget.selectedIndex ? 1 : 0,
                    ),
            ),
          );
        },
      ),
    );
  }
}
