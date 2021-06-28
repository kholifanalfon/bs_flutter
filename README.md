# BS Flutter (Bootstrap Flutter)

Simple flutter widget from Bootstrap v5 component, including responsive grid layout with bootstrap grid system

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example-part1.png "Example Bs Flutter")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example-part2.png "Example Bs Flutter")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example-part3.png "Example Bs Flutter")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example-part4.png "Example Bs Flutter")

### Components

- [x] Container
- [x] [`Buttons`](https://github.com/kholifanalfon/bs_flutter_buttons)
    - [x] Button size
    - [x] Button with prefix or suffix icon
    - [x] Button with badge
- [x] [`Modal`](https://github.com/kholifanalfon/bs_flutter_modal)
    - [x] Modal size (small, medium, large, extra large, extra extra large)
    - [x] Alignment for modal content
- [x] [`Input Text`](https://github.com/kholifanalfon/bs_flutter_inputtext)
    - [x] onChange validator (only using `BsValidator`)
    - [x] Error message with beautiful design
- [x] [`Alert`](https://github.com/kholifanalfon/bs_flutter_alert)
- [x] [`Badge`](https://github.com/kholifanalfon/bs_flutter_buttons)
- [x] [`Serverside Datatables (with datatables response)`](https://github.com/kholifanalfon/bs_flutter_datatables)
    - [x] Searchble
    - [x] Orderable
    - [x] Page Length
    - [x] Pagination
    - [x] Customize Style
- [x] [`SelectBox`](https://github.com/kholifanalfon/bs_flutter_selectbox)
- [ ] Checkbox
- [ ] Radio Button

### Utilities
- [x] [`Grid System`](https://github.com/kholifanalfon/bs_flutter_responsive)
    - [x] Nestable
    - [x] Column ordering 
    - [x] Custom gutters
    - [x] Column offset
    - [x] Responsive hide and show
- [ ] Multiple Validation

This plugin helps you to migrate from html based to dart in creating web interfaces. More specifically for those who are already able to use bootstrap

## Getting Started
Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  ...
  bs_flutter: any
```

### Responsive Grid / Grid System
Example: [`example_grid.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_grid.dart)

Grid system is very important when you create some web application. Especially for create responsive layout. This plugin is help to solve it

To create responsive layout you must using widget `BsRow` and `BsCol` or if in bootstrap use class="row" and class="col-*" 

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/grid_xl.png "Grid System Extra Large Screen Result")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/grid_lg.png "Grid System Large Screen Result")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/grid_md.png "Grid System Medium Screen Result")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/grid_sm.png "Grid System Small Screen Result")

Create row container of grid system:
```dart
BsRow(
  gutter: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
  children: <BsCol>[
    // ...
  ]
);
```

After that you can add column:
```dart
BsRow(
//...
    children: <BsCol>[
      BsCol(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        padding: EdgeInsets.all(20.0),
        sizes: ColScreen(sm: Col.col_12, lg: Col.col_6),
        child: Center(child: Text('col-sm-12 col-lg-6')),
      ),
      BsCol(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        visibility: BsVisibility.hiddenMd,
        padding: EdgeInsets.all(20.0),
        sizes: ColScreen(sm: Col.col_12, lg: Col.col_6),
        child: Center(child: Text('col-sm-12 col-lg-6 col-hidden-md')),
      ),
      BsCol(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        padding: EdgeInsets.all(20.0),
        sizes: ColScreen(sm: Col.col_12, md: Col.col_12, lg: Col.col_6),
        order: ColOrder(md: 1),
        child: Center(child: Text('col-sm-12 col-md-12 col-md-6 col-order-lg-1')),
      ),
      BsCol(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
        sizes: ColScreen(md: Col.col_6),
        child: BsRow(
          children: [
            BsCol(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              padding: EdgeInsets.all(10.0),
              sizes: ColScreen(md: Col.col_4),
              child: Center(child: Text('Nested col-md-4')),
            ),
            BsCol(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              padding: EdgeInsets.all(10.0),
              sizes: ColScreen(md: Col.col_4),
              offset: ColScreen(lg: Col.col_4),
              child: Center(child:Text('Nested col-md-4 col-offset-lg-4')),
            ),
          ],
        ),
      ),
    ] 
// ...
)
```
#### Note
- Properties `sizes` in `BsCol` is has default value `Col.col_12` or 100% of screen width
- If need to ordering column use properties `order` with value `BsScreen`
- If need to custom offset of column use properties `offet` with value `BsScreen`
- `BsVisibility.hiddenMd` will hide widget in max screen medium or < 768 px, above it will show

### Buttons
Example: [`example_buttons.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_buttons.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example_buttons.png "Screenshot Example Buttons")

We have 15 button style and 3 button size, but you can create custom size using `BsButtonSize` and custom style using `BsButtonStyle`

```dart
  static const BsButtonStyle primary = BsButtonStyle(
    color: Colors.white,
    borderColor: BsColor.primary,
    backgroundColor: BsColor.primary,
    borderRadius: BorderRadius.all(Radius.circular(3.0))
  );
```

```dart
  static const BsButtonSize btnIconSm = BsButtonSize(
    iconSize: 12.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(30.0, 30.0),
  );
```

To create some button use `BsButton`

```dart
// ...
  BsButton(
    margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
    onPressed: () {},
    style: BsButtonStyle.primary,
    size: BsButtonSize.btnIconMd,
    prefixIcon: Icons.check,
  ),
// ...
```

### Badge
Example: [`example_badge.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_badge.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example_badge.png "Screenshot Example Badge")

You can create custom size using `BsBadgeSize` and custom style using `BsBadgeStyle`

```dart
  static const BsBadgeStyle primary = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.primary,
  );
```

```dart
  static const BsBadgeSize rounded = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      fontSize: 10.0,
      borderRadius: BorderRadius.all(Radius.circular(100.0))
  );
```

To create badge use `BsBadge`, `BsBadge` is available use in `BsButton`

```dart
// ...
  BsBadge(
    style: BsBadgeStyle.primary,
    size: BsBadgeSize.rounded,
    child: Text('Primary'),
  ),
// ...
```

### Text Input
Example: [`example_inputtext.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_inputtext.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example_inputtext.png "Screenshot Example Badge")

Small Input Text with Outline Border
```dart
// ...
  BsInput(
    size: BsInputSize.sm,
    hintText: 'Small input',
    controller: TextEditingController(),
    validators: [
      BsValidator.required
    ],
  ),
// ...
```

Small Input Text with Border Bottom
```dart
//...
  BsInput(
    style: BsInputStyle.outlineBottom,
    size: BsInputSize.outlineBottomSm,
    hintTextLabel: 'Small input',
    controller: TextEditingController(),
  ),
//...
```
`BsValidator` is custom validator, you can create yours validator using `BsValidator`
Example: 
```dart
  static BsValidator get required => BsValidator(
    validator: (value) {
      String valueValidate = value.toString().trim();
      if(valueValidate.isEmpty) return "Field tidak boleh kosong";

      return null;
    },
  );
```
`validator` properties will call when form on validating

### Alert
Example: [`example_alert.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_alert.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example_alert.png "Screenshot Example Alert")

Alert success
```dart
// ...
  BsAlert(
    closeButton: true,
    margin: EdgeInsets.only(bottom: 10.0),
    child: Text('Alert Primary'),
  ),
// ...
```

Alert with Heading
```dart
// ...
  BsAlert(
    closeButton: true,
    margin: EdgeInsets.only(bottom: 10.0),
    style: BsAlertStyle.success,
    heading: Text('Hello World'),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Alert Dark'),
      ],
    ),
  )
// ...
```

You can create custom alert style using `BsAlertStyle` and alert color using `BsAlertColor`

```dart
  static const BsAlertColor primary = BsAlertColor(
    color: Color(0xff084298),
    backgroundColor: Color(0xffcfe2ff),
    borderColor: Color(0xffb6d4fe),
  );
```

```dart
  static const BsAlertStyle primary = BsAlertStyle(
    color: BsAlertColor.primary,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );
```

### Modals
Example: [`example_modal.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_modal.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example_modal_1.png "Screenshot Example Modal")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/example_modal_2.png "Screenshot Example Modal")

Modal will be show using `showDialog`, because `BsModal` is a `Dialog` widget

```dart
// ...
  BsButton(
    style: BsButtonStyle.primary,
    margin: EdgeInsets.only(right: 5.0, bottom: 10.0),
    label: Text('Centered Small Modal with No Radius'),
    onPressed: () => showDialog(context: context, builder: (context) => BsModal(
      context: context,
      dialog: BsModalDialog(
        size: BsModalSize.sm,
        mainAxisAlignment: MainAxisAlignment.center,
        child: BsModalContent(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          children: [
            BsModalContainer(title: Text('Content'), closeButton: true),
            BsModalContainer(
              child: Column(
                  children: [
                    Text('Content')
                  ]
              ),
            ),
            BsModalContainer(
              crossAxisAlignment: CrossAxisAlignment.end,
              actions: [
                BsButton(
                  style: BsButtonStyle.danger,
                  label: Text('Close Modal'),
                  prefixIcon: Icons.close,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    )),
  )
// ...
```

#### Note
- `BsModalDialog` is backdrop layout
- `BsModalContent` is content from modal
- `BsModalContainer` is children from `BsModalContent`
- Change `size` properties to change modal size
- `BsModalContainer` can be use as modal-header, modal-body and modal-footer
- To set `BsModalContent` to centered, you can modify `mainAxisAlignment` on `BsModalDialog` properties


### Card
Example: [`example_card.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_card.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_card/main/screenshot/example.png "Card Example")

Create box card:

```dart
// ...
  BsCard(
    children: [
      BsCardContainer(title: Text('Box Card')),
      BsCardContainer(child: Container(
        child: Text('Box Card Content'),
      )),
      BsCardContainer(actions: [
        BsButton(
          onPressed: () {},
          style: BsButtonStyle.primary,
          prefixIcon: Icons.block,
          label: Text('Primary'),
        )
      ])
    ],
  )
// ...
```

### Note
- To custom card style use `BsCardContainerStyle` or `BsCardStyle`

## Select Box
To create a select box you need to import:

```dart
import 'package:bs_flutter_selectbox/bs_flutter_selectbox.dart';
```

After create controller:

```dart
// ...
  BsSelectBoxController _select1 = BsSelectBoxController(
    options: [
      BsSelectBoxOption(value: 1, text: Text('1')),
      BsSelectBoxOption(value: 2, text: Text('2')),
      BsSelectBoxOption(value: 3, text: Text('3')),
    ]
  );
// ...
```

After all is done copy the code below:

```dart
// ...
  BsSelectBox(
    hintText: 'Pilih salah satu',
    selectBoxController: _select1,
  ),
// ...
```

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_selectbox/main/screenshot/select.png "Normal Select Box")


If you need to customize size and style, use properties `style` and `size`. And create your custom size with class `BsSelectBoxSize` or `BsSelectBoxStyle` to custom style

```dart
  static const BsSelectBoxSize customSize = BsSelectBoxSize(
    fontSize: 14.0,
    optionFontSize: 14.0,
    searchInputFontSize: 14.0,
    labelX: 15.0,
    labelY: 13.0,
    transitionLabelX: -15.0,
    transitionLabelY: 5.0,
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 12.0, bottom: 12.0)
  );
```

```dart
  static const BsSelectBoxStyle outline = BsSelectBoxStyle(
    borderRadius: BorderRadius.all(Radius.circular(5.0))
  );
```

### Note
- `labelX` and `labelY` is used to set label position if using `hintTextLabel`
- `transitionLabelX` and `transitionLabelY` is used to set label position if using `hintTextLabel` when have selected value
- `BsSelectBoxStyle` have properties `borderRadius`, `color`, `placeholderColor`, `selectedBackgroundColor`, `selectedColor`, `disabledBackgroundColor`, `backgroundColor`, `borderColor`, `fontSize`, `arrowIcon`


## Select Box Style 2 (hintTextLabel)
Example: [`example_selectbox.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_selectbox.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_selectbox/main/screenshot/general.png "Bs Select Box")

Select box using `hintTextLabel`
```dart
// ...
  BsSelectBox(
    hintTextLabel: 'Pilih salah satu',
    selectBoxController: _select1,
  ),
// ...
```

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_selectbox/main/screenshot/selectbox2.png "Label Hint Text Select Box")

## Select Box Multiple

To create a select box with multiple allowed set `multiple` properties in `BsSelectBoxController` to true:

```dart
// ...
  BsSelectBoxController _select2 = BsSelectBoxController(
    multiple: true,
    options: [
      BsSelectBoxOption(value: 1, text: Text('1')),
      BsSelectBoxOption(value: 2, text: Text('2')),
      BsSelectBoxOption(value: 3, text: Text('3')),
      BsSelectBoxOption(value: 4, text: Text('4')),
      BsSelectBoxOption(value: 5, text: Text('5')),
      BsSelectBoxOption(value: 6, text: Text('6')),
    ]
  );
// ...
```

### Note
- To get selected value use `getSelected` or `getSelectedAll`
- If you need returned string use `getSelectedAsString`, it will be returned string value with `,` separator
- To set selected value use `setSelected` or `setSelectedAll`

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_selectbox/main/screenshot/selectbox3.png "Multiple Select Box")

## Select Box Server Side

To create a select box with server side data, use `serverSide` property 

```dart
  BsSelectBox(
    hintText: 'Pilih salah satu',
    searchable: true,
    selectBoxController: _select3,
    serverSide: selectApi,
  )
```

### Note
- To enable searchable option, set `searchable` property `true`
- `serverSide` property need returned `Future<BsSelectBoxResponse>`

`selectApi` function
```dart
// ...
  Future<BsSelectBoxResponse> selectApi(Map<String, String> params) async {
    Uri url = Uri.http('localhost', 'api-json.php', params);
    Response response = await http.get(url);
    if(response.statusCode == 200) {
      List json = convert.jsonDecode(response.body);
      return BsSelectBoxResponse.createFromJson(json);
    }

    return BsSelectBoxResponse(options: []);
  }
// ...
```

Json response data
```json
[
  {
    "value":"1",
    "text":"Tipe 01",
    "typecd":"TP01"},
  {
    "value":"2",
    "text":"Type 02",
    "typecd":"TP02"
  }
]
```

### Note
- `createFromJson` is automatically put response data `value`, but you cant change it with define manual
- If you want to make `typecd` as `value` of option, use `value` parameters of `createFromJson`

```dart
/// ...
    if(response.statusCode == 200) {
      List json = convert.jsonDecode(response.body);
      return BsSelectBoxResponse.createFromJson(json, 
        value: (data) => data['typecd'],
      );
    }
/// ...
```

- If you want to make `typecd` as `text` of option, use `renderText` parameters of `createFromJson`
- `renderText` function need returned `Widget`

```dart
/// ...
    if(response.statusCode == 200) {
      List json = convert.jsonDecode(response.body);
      return BsSelectBoxResponse.createFromJson(json, 
        value: (data) => data['typecd'],
        renderText: (data) => Text(data['typecd'])
      );
    }
/// ...
```

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_selectbox/main/screenshot/selectbox4.png "Server Side Select Box")
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_selectbox/main/screenshot/selectbox5.png "Server Side Select Box")


## ServerSide Datatables (with datatables response)
Example: [`example_datatables.dart`](https://github.com/kholifanalfon/bs_flutter/blob/main/example/lib/example_datatables.dart)

To create a select box you need to import:

```dart
import 'package:bs_flutter_datatable/bs_flutter_datatable.dart';
```

Create source datatable:
```dart
import 'package:bs_flutter_datatable/bs_flutter_datatable.dart';
import 'package:flutter/material.dart';

class ExampleSource extends BsDatatableSource {

  BsDatatableResponse _response;

  ExampleSource({
    BsDatatableResponse response = const BsDatatableResponse(),
  }) : _response = response;

  @override
  // TODO: implement countData
  int get countData => _response.countData;

  @override
  // TODO: implement countDataPage
  int get countDataPage => _response.data.length;

  @override
  // TODO: implement countFiltered
  int get countFiltered => _response.countFiltered;

  @override
  BsDataRow getRow(int index) {
    return BsDataRow(
      index: index,
      cells: <BsDataCell>[
        BsDataCell(Text('${_response.start + index + 1}')),
        BsDataCell(Text('${_response.data[index]['typecd']}')),
        BsDataCell(Text('${_response.data[index]['typename']}')),
      ]
    );
  }

}
```

declare source and controller datatable:

```dart
ExampleSource _source = ExampleSource();
BsDatatableController _controller = BsDatatableController();
```

create table view:

```dart
// ...
  BsDatatable(
    source: _source,
    controller: _controller,
    searchable: true,
    pageLength: true,
    paginations: ['firstPage', 'previous', 'button', 'next', 'lastPage'],
    columns: <BsDataColumn>[
      BsDataColumn(label: Text('No'), orderable: false, searchable: false, width: 100.0),
      BsDataColumn(label: Text('Code'), width: 200.0,),
      BsDataColumn(label: Text('Name')),
    ],
    serverSide: loadApi,
  )
// ...
```