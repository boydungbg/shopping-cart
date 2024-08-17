import 'package:flutter/material.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/generated/assets.gen.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/widgets/text_price_widget.dart';

class OverViewProductPraramsWidget {
  OverViewProductPraramsWidget({
    this.id = 0,
    this.title = "",
    this.image = "",
    this.price = 0,
    this.onUpdateQty,
    this.onCloseButton,
    this.qty = 0,
  });

  final int id;
  final String title;
  final String image;
  final double price;
  final Function(int qty)? onUpdateQty;
  final Function()? onCloseButton;
  final int qty;
}

class OverviewProduct extends StatefulWidget {
  const OverviewProduct({super.key, required this.params});

  final OverViewProductPraramsWidget params;
  @override
  State<OverviewProduct> createState() => _OverviewProductState();
}

class _OverviewProductState extends State<OverviewProduct> {
  int _quatity = 1;

  @override
  void initState() {
    super.initState();
    _quatity = widget.params.qty;
  }

  void increase() {
    if (_quatity + 1 > 999) {
      return;
    }
    setState(() {
      _quatity += 1;
    });
    if (widget.params.onUpdateQty != null) {
      widget.params.onUpdateQty!(_quatity);
    }
  }

  void decrease() {
    if (_quatity - 1 <= 0) {
      return;
    }
    setState(() {
      _quatity -= 1;
    });
    if (widget.params.onUpdateQty != null) {
      widget.params.onUpdateQty!(_quatity);
    }
  }

  void handleShowInputQty() {
    showDialog(
      context: context,
      builder: (context) {
        return _InputQuatityWidget(
          qty: _quatity,
          title: widget.params.title,
          onUpdateQty: (qty) {
            setState(() {
              _quatity = qty;
            });
            if (widget.params.onUpdateQty != null) {
              widget.params.onUpdateQty!(_quatity);
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(widget.params.image),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.params.title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    IconButton.outlined(
                        style: IconButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                        onPressed: () {
                          if (widget.params.onCloseButton != null) {
                            widget.params.onCloseButton!();
                          }
                        },
                        icon: const Icon(Icons.close_rounded))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  decrease();
                                },
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(7),
                                            bottomLeft: Radius.circular(7)),
                                        border: Border(
                                            top: BorderSide(
                                                color: Colors.black26,
                                                width: 1),
                                            left: BorderSide(
                                                color: Colors.black26,
                                                width: 1),
                                            bottom: BorderSide(
                                                color: Colors.black26,
                                                width: 1))),
                                    child: Center(
                                        child: Image(
                                      width: 20,
                                      height: 20,
                                      color: Colors.black54,
                                      image: AssetImage(
                                          Assets.icons.minus.keyName),
                                    )))),
                            InkWell(
                                onTap: () {
                                  handleShowInputQty();
                                },
                                child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      width: 1,
                                      color: Colors.black26,
                                    )),
                                    width: 70,
                                    child: Center(
                                        child: Text(
                                      _quatity.toString(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    )))),
                            InkWell(
                                onTap: () {
                                  increase();
                                },
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(7),
                                            bottomRight: Radius.circular(7)),
                                        border: Border(
                                            top: BorderSide(
                                                color: Colors.black26,
                                                width: 1),
                                            right: BorderSide(
                                                color: Colors.black26,
                                                width: 1),
                                            bottom: BorderSide(
                                                color: Colors.black26,
                                                width: 1))),
                                    child: Center(
                                      child: Image(
                                        width: 20,
                                        height: 20,
                                        color: Colors.black54,
                                        image: AssetImage(
                                          Assets.icons.add.keyName,
                                        ),
                                      ),
                                    ))),
                          ],
                        )),
                    Expanded(
                        child: TextPriceWidget(
                            textAlign: TextAlign.right,
                            price: widget.params.price,
                            textStyle: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _InputQuatityWidget extends StatefulWidget {
  const _InputQuatityWidget(
      {super.key,
      required this.onUpdateQty,
      required this.title,
      required this.qty});

  final Function(int qty) onUpdateQty;
  final String title;
  final int qty;

  @override
  State<_InputQuatityWidget> createState() => _InputQuatityWidgetState();
}

class _InputQuatityWidgetState extends State<_InputQuatityWidget> {
  late TextEditingController _controller;

  bool isActiveButton = true;
  String? textError;

  @override
  void initState() {
    if (widget.qty < 1 || widget.qty > 999) {
      isActiveButton = false;
    }
    super.initState();
    _controller = TextEditingController(text: widget.qty.toString());
    _controller.addListener(() {
      String value = _controller.value.text;
      int? n = int.tryParse(value);
      if (n != null) {
        if (n > 999) {
          textError = S.current.validate_input_qty_exceed(999);
          isActiveButton = false;
        } else if (n < 1) {
          textError = S.current.validate_input_qty_less(1);
          isActiveButton = false;
        } else {
          textError = null;
          isActiveButton = true;
        }
      } else {
        textError = S.current.invalid_input_quatity;
        isActiveButton = false;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _controller,
                textAlign: TextAlign.center,
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  errorText: textError,
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  focusColor: Colors.orange,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          disabledBackgroundColor: Colors.grey,
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: isActiveButton
                          ? () {
                              widget.onUpdateQty(
                                  int.parse(_controller.value.text));
                              navigatorState.pop();
                            }
                          : null,
                      child: Text(
                        S.current.button_summit,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}