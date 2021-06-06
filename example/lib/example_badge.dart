import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';

class ExampleBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BsRow(
      gutter: EdgeInsets.only(left: 10.0, right: 10.0),
      margin: EdgeInsets.only(bottom: 20.0),
      children: [
        BsCol(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              BsBadge(
                style: BsBadgeStyle.primary,
                size: BsBadgeSize.rounded,
                child: Text('Primary'),
              ),
              BsBadge(
                style: BsBadgeStyle.secondary,
                size: BsBadgeSize.rounded,
                child: Text('Secondary'),
              ),
              BsBadge(
                style: BsBadgeStyle.success,
                size: BsBadgeSize.rounded,
                child: Text('Success'),
              ),
              BsBadge(
                style: BsBadgeStyle.warning,
                size: BsBadgeSize.rounded,
                child: Text('Warning'),
              ),
              BsBadge(
                style: BsBadgeStyle.danger,
                size: BsBadgeSize.rounded,
                child: Text('Danger'),
              ),
              BsBadge(
                style: BsBadgeStyle.info,
                size: BsBadgeSize.rounded,
                child: Text('Info'),
              ),
              BsBadge(
                style: BsBadgeStyle.light,
                size: BsBadgeSize.rounded,
                child: Text('Light'),
              ),
              BsBadge(
                style: BsBadgeStyle.dark,
                size: BsBadgeSize.rounded,
                child: Text('Dark'),
              )
            ],
          ),
        )
      ],
    );
  }

}