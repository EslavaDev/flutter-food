import 'dart:async';

import 'package:custom1/ui/molecules/text-field.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final myController = TextEditingController();
  Timer _timer;

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer(Duration(seconds: 3), () {
      print('Second text field: ${myController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(
        24.0,
        padding.top + 10.0,
        24.0,
        16.0,
      ),
      height: 90.0 + padding.top,
      width: size.width,
      // color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkResponse(
            onTap: () {},
            child: Container(
              height: 56.0,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              decoration: BoxDecoration(
                border: Border.all(
                    width: .5, style: BorderStyle.solid, color: Colors.black26),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  TextFieldCustom(
                    hint: 'Donde estas Buscando',
                    sizeProps: 180.0,
                    onChange: myController,
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.my_location, color: Colors.black45),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onChange(e) {
    print('hola $e');
  }
}

// class RestaurantHomeViewAppBar extends StatelessWidget {
//   RestaurantHomeViewAppBar();

// void checkMyLocation(BuildContext context) async {
//   final valid = await checkPermission();
//   if (!valid) {
//     PermissionHandler permission = PermissionHandler();
//     Map<PermissionGroup, PermissionStatus> map =
//         await permission.requestPermissions([PermissionGroup.location]);
//     if (map[PermissionGroup.location] == PermissionStatus.granted) {
//       handleLocation(context);
//     }
//   } else {
//     handleLocation(context);
//   }
// }

// void handleLocation(BuildContext context) async {
//   final settings = AppSettings.of(context);
//   onCityChanged(null);
//   final location = Location();
//   final position = await location.getLocation();
//   model.getNearbyRestaurants(settings.collectionId,
//         settings.projectId, position.latitude, position.longitude);
// }

// void findCities(BuildContext context) {
//   final settings = AppSettings.of(context);
//   showSearch<City>(context: context, delegate: DataSearch())
//       .then((selectedCity) {
//     if (selectedCity != null) {
//       onCityChanged(selectedCity);
//       model.getRestaurants(
//         settings.collectionId,
//         settings.projectId,
//         selectedCity,
//       );
//     }
//   });
// }

// }
