### BS Flutter (Bootstrap Flutter)

Simple flutter widget from Bootstrap v5 component, including responsive grid layout with bootstrap grid system

### Components

- [x] Container
- [x] Buttons
- [ ] Modal
- [ ] Input Text
- [ ] Alert
- [ ] Badge

### Utilities
- [x] Grid System
    - [x] Nestable
    - [x] Column ordering 
    - [x] Custom gutters
    - [x] Column offset
    - [x] Responsive hide and show

This plugin helps you to migrate from html based to dart in creating web interfaces. More specifically for those who are already able to use bootstrap

## Getting Started
Add the dependency in `pubspec.yaml`:

```dart
dependencies:
  ...
  bs_flutter: any
```

## Responsive Grid / Grid System
Grid system is very important when you create some web application. Especially for create responsive layout. This plugin is help to solve it

To create responsive layout you must using widget `BsRow` and `BsCol` or if in bootstrap use class="row" and class="col-*" 
![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter/main/screenshot/grid_xl.png "Grid System Extra Large Screen Result")

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
# Note
- Properties `sizes` in `BsCol` is has default value `Col.col_12` or 100% of screen width
- If need to ordering column use properties `order` with value `BsScreen`
- If need to custom offset of column use properties `offet` with value `BsScreen`
- `BsVisibility.hiddenMd` will hide widget in max screen medium or < 768 px, above it will show



