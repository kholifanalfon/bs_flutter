part of bs_row;

/// To create a responsive grid layout it is necessary to specify how many columns are in the grid
///
/// The default column available is twelve and you can add more
class Col {
  const Col({
    required this.width,
  });

  /// [width] is variable to define how long is the column will be set in percentage
  final double width;

  /// [zero] is default width of column with 0 px
  static const Col zero = Col(width: 0.0);

  /// [col_12] default width of column with 100 percent from current screen width
  static const Col col_12 = Col(width: 100.0);

  /// [col_11] default width of column with 91.666666 percent from current screen width
  static const Col col_11 = Col(width: 91.666666);

  /// [col_10] default width of column with 83.333333 percent from current screen width
  static const Col col_10 = Col(width: 83.333333);

  /// [col_9] default width of column with 75.0 percent from current screen width
  static const Col col_9 = Col(width: 75.0);

  /// [col_8] default width of column with 66.666667 percent from current screen width
  static const Col col_8 = Col(width: 66.666667);

  /// [col_7] default width of column with 58.333333 percent from current screen width
  static const Col col_7 = Col(width: 58.333333);

  /// [col_6] default width of column with 50.0 percent from current screen width
  static const Col col_6 = Col(width: 50.0);

  /// [col_5] default width of column with 41.666666 percent from current screen width
  static const Col col_5 = Col(width: 41.666666);

  /// [col_4] default width of column with 33.333333 percent from current screen width
  static const Col col_4 = Col(width: 33.333333);

  /// [col_3] default width of column with 25.0 percent from current screen width
  static const Col col_3 = Col(width: 25.0);

  /// [col_2] default width of column with 16.666666 percent from current screen width
  static const Col col_2 = Col(width: 16.666666);

  /// [col_1] default width of column with 8.333333 percent from current screen width
  static const Col col_1 = Col(width: 8.333333);
}

/// Will handle screen device using which breakpoint
class ColScreen {
  const ColScreen({
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  /// Extra Small screen under 576 px
  final Col? xs;

  /// Small screen upper 576 px
  final Col? sm;

  /// Medium screen upper 768 px
  final Col? md;

  /// Large screen upper 960 px
  final Col? lg;

  /// Extra large screen upper 1140 px
  final Col? xl;

  /// Extra extra large screen upper 1400 px
  final Col? xxl;

  /// Will set width [BsCol] in all screen device
  factory ColScreen.all(Col size) {
    return ColScreen(sm: size);
  }

  /// Will set width [BsCol] in mobile screen including
  /// - [BreakPoint.sm] (>= 567 px)
  /// - [BreakPoint.md] (>= 768 px)
  factory ColScreen.onlyMobile(Col size) {
    return ColScreen(sm: size, md: Col.col_12);
  }

  /// Will set width [BsCol] in tablet screen including
  /// - [BreakPoint.sm] (>= 567 px)
  /// - [BreakPoint.md] (>= 768 px)
  /// - [BreakPoint.lg] (>= 960 px)
  factory ColScreen.onlyTablet(Col size) {
    return ColScreen(md: size, lg: Col.col_12);
  }

  /// Will set width [BsCol] in tablet screen including
  /// - [BreakPoint.sm] (>= 567 px)
  /// - [BreakPoint.md] (>= 768 px)
  /// - [BreakPoint.lg] (>= 960 px)
  /// - [BreakPoint.xl] (>= 1140 px)
  factory ColScreen.onlyDesktop(Col size) {
    return ColScreen(lg: size);
  }

  /// Will set width [BsCol] in mobile, tablet, desktop screen including
  factory ColScreen.inDevice({Col? mobile, Col? tablet, Col? desktop}) {
    return ColScreen(sm: mobile, md: tablet, lg: desktop);
  }
}

/// Will sort [BsRow] children with spesific condition [ColOrder]
/// If you want to reorder some [BsCol] to first position in small device
/// Example:
/// - ColOrder(sm: 1)
class ColOrder {
  const ColOrder({
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  /// Extra Small screen under 576 px
  final int? xs;

  /// Small screen upper 576 px
  final int? sm;

  /// Medium screen upper 768 px
  final int? md;

  /// Large screen upper 960 px
  final int? lg;

  /// Extra Large screen upper 1140 px
  final int? xl;

  /// Extra Extra Large screen upper 1400 px
  final int? xxl;
}

/// Will calculation width of [BsCol] from percentage to pixel
class ColCalc {
  const ColCalc(this.context, this.sizes, this.offset);

  final BuildContext context;

  final ColScreen sizes;

  final ColScreen offset;

  /// Get width of [BsCol]
  Col? get width {
    BreakPoint state = BreakPoint.of(context);

    if (state.state == BreakPoint.stateXxl) {
      if (sizes.xxl != null)
        return sizes.xxl;
      else if (sizes.xl != null)
        return sizes.xl;
      else if (sizes.lg != null)
        return sizes.lg;
      else if (sizes.md != null)
        return sizes.md;
      else if (sizes.sm != null) return sizes.sm;

      return Col.col_12;
    } else if (state.state == BreakPoint.stateXl) {
      if (sizes.xl != null)
        return sizes.xl;
      else if (sizes.lg != null)
        return sizes.lg;
      else if (sizes.md != null)
        return sizes.md;
      else if (sizes.sm != null) return sizes.sm;

      return Col.col_12;
    } else if (state.state == BreakPoint.stateLg) {
      if (sizes.lg != null)
        return sizes.lg;
      else if (sizes.md != null)
        return sizes.md;
      else if (sizes.sm != null) return sizes.sm;

      return Col.col_12;
    } else if (state.state == BreakPoint.stateMd) {
      if (sizes.md != null)
        return sizes.md;
      else if (sizes.sm != null) return sizes.sm;

      return Col.col_12;
    } else if (state.state == BreakPoint.stateSm) {
      if (sizes.sm != null) return sizes.sm;

      return Col.col_12;
    }

    return Col.col_12;
  }

  /// Get offset of [BsCol]
  Col? get widthOffset {
    BreakPoint state = BreakPoint.of(context);

    if (state.state == BreakPoint.stateXxl) {
      if (offset.xxl != null)
        return offset.xxl;
      else if (offset.xl != null)
        return offset.xl;
      else if (offset.lg != null)
        return offset.lg;
      else if (offset.md != null)
        return offset.md;
      else if (offset.sm != null) return offset.sm;

      return Col.zero;
    } else if (state.state == BreakPoint.stateXl) {
      if (offset.xl != null)
        return offset.xl;
      else if (offset.lg != null)
        return offset.lg;
      else if (offset.md != null)
        return offset.md;
      else if (offset.sm != null) return offset.sm;

      return Col.zero;
    } else if (state.state == BreakPoint.stateLg) {
      if (offset.lg != null)
        return offset.lg;
      else if (offset.md != null)
        return offset.md;
      else if (offset.sm != null) return offset.sm;

      return Col.zero;
    } else if (state.state == BreakPoint.stateMd) {
      if (offset.md != null)
        return offset.md;
      else if (offset.sm != null) return offset.sm;

      return Col.zero;
    } else if (state.state == BreakPoint.stateSm) {
      if (offset.sm != null) return offset.sm;

      return Col.zero;
    }

    return Col.zero;
  }
}
