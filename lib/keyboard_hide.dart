library keyboard_hide;

import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:keyboard_actions/keyboard_actions_config.dart';

class KeyboardHideWidget extends StatelessWidget {
  KeyboardHideWidget({this.child, this.focusNodes});

  final List<FocusNode> focusNodes;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      autoScroll: false,
      child: Builder(builder: (BuildContext context) {
        return child;
      }),
      config: KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
        keyboardBarColor: Colors.grey[200],
        nextFocus: true,
        actions: focusNodes
            .map((fNode) => KeyboardAction(
                focusNode: fNode,
                displayCloseWidget: true,
                closeWidget: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Icon(
                    Icons.keyboard_hide,
                    color: Colors.black54,
                  ),
                )))
            .toList(),
      ),
    );
  }

  setKeyboardCloseView(BuildContext context,
      {@required List<FocusNode> focusNodes}) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: focusNodes
          .map((fNode) => KeyboardAction(
              focusNode: fNode,
              displayCloseWidget: true,
              closeWidget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Icon(
                  Icons.keyboard_hide,
                  color: Colors.black54,
                ),
              )))
          .toList(),
    );
  }
}
