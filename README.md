<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
A Flutter package for new radio button design.
With Elegant Animation.


## Features

![Screenshot 2021-11-26 115045](https://user-images.githubusercontent.com/75254562/143557574-cc399da1-09bb-4a4c-95ce-072380c07f7b.png)
![Screenshot 2021-11-26 115126](https://user-images.githubusercontent.com/75254562/143557579-816d07f4-6ac2-47b7-a4d9-622dcac03554.png)
![Screenshot 2021-11-26 115022](https://user-images.githubusercontent.com/75254562/143557582-f8a97dd7-cfc7-4d58-8705-adce3a894b6b.png)


## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
              ElegantRadioButton<int>(
                groupValue: 1,
                value: 1,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                fillColor: MaterialStateProperty.all(Colors.red),
              );
```

