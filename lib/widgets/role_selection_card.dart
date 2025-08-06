import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoleSelectionCard extends StatefulWidget {
  final String label;
  final String route;

  const RoleSelectionCard({super.key, required this.label, required this.route});

  @override
  State<RoleSelectionCard> createState() => _RoleSelectionCardState();
}

class _RoleSelectionCardState extends State<RoleSelectionCard> {
  bool _hovered = false;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final card = Material(
      elevation: _pressed ? 8 : (_hovered ? 4 : 2),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.go(widget.route),
        onHighlightChanged: (value) => setState(() => _pressed = value),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) {
            final color = Theme.of(context).colorScheme.primary;
            if (states.contains(MaterialState.pressed)) {
              return color.withOpacity(0.1);
            }
            if (states.contains(MaterialState.hovered)) {
              return color.withOpacity(0.05);
            }
            return null;
          },
        ),
        highlightColor:
            Theme.of(context).colorScheme.primary.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(child: Text(widget.label)),
        ),
      ),
    );

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: card,
    );
  }
}

