
import '../../../features/main/screens/main/common_imports.dart';

class TextControllerTextField extends StatefulWidget {
  final void Function(String value) onChanged;

  final String? Function(String?) validator;

  final TextInputType keyboardType;

  final TextEditingController controller;

  final bool enabled;

  final String hint;

  final String? label;

  final bool autocorrect;

  final int? maxLength;

  final TextInputAction? action;

  final bool opaque;

  final bool obscureText;

  final bool readOnly;

  final String? initialData;

  final TextStyle? hintStyle;

  final int? maxLines;

  final BorderRadius? fieldBorderRadius;

  final Widget? prefixIcon;

  final FocusNode? focusNode;

  final List<TextInputFormatter>? inputFormatters;

  const TextControllerTextField({
    Key? key,
    required this.onChanged,
    required this.controller,
    required this.validator,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
    this.obscureText = false,
    this.inputFormatters,
    this.focusNode,
    this.label,
    this.autocorrect = true,
    this.maxLength,
    this.opaque = false,
    this.readOnly = false,
    this.action,
    this.initialData,
    this.prefixIcon,
    this.hintStyle,
    this.fieldBorderRadius,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<TextControllerTextField> createState() => _TextControllerTextFieldState();
}

class _TextControllerTextFieldState extends State<TextControllerTextField> {

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: widget.opaque
          ? BorderSide(
              color: Colors.grey.withOpacity(0.5),
            )
          : BorderSide.none,
      borderRadius: widget.fieldBorderRadius ??
          AppSizes.of(context)!.sizes.defaultButtonBorderRadius,
    );
    return TextFormField(
      obscureText: widget.obscureText,
      inputFormatters: widget.inputFormatters ?? [],
      maxLines: widget.maxLines,
      focusNode: widget.focusNode,
      enabled: widget.enabled,
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.validator,
      maxLength: widget.maxLength,
      textInputAction: widget.action ?? TextInputAction.done,
      keyboardType: widget.keyboardType,
      style: widget.opaque ? null : const TextStyle(color: Colors.white),
      readOnly: widget.readOnly,
      decoration: InputDecoration(
        label: widget.label != null ? Text(widget.label!) : null,
        isDense: true,
        filled: !widget.opaque,
        prefixIcon: widget.prefixIcon,
        hintStyle: widget.hintStyle,
        fillColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
        hintText: widget.hint,
        alignLabelWithHint: true,
        counterText: '',
        enabledBorder: border,
        border: border,
      ),
    );
  }
}
