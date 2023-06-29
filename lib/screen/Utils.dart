import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static BuildContext? _loaderContext;
  static BuildContext? _loadingDialoContext;
  static bool _isLoaderShowing = false;
  static bool _isLoadingDialogShowing = false;
  static var checkLogin;
  static String userkey = '';
  static String indexname = '';
  static var Position;
  static String currencyName = '';
  static String currencySymbol = '';
  static String loaction = '';






  static Map<String, dynamic> categoriesList = {};
  static Map<String, dynamic> ProdRendInfoModel ={};
  static List< dynamic> sidemenulist = [];
 // static List< dynamic> ProdRendInfoModel = [];
  static List< dynamic> FilteredData = [];
  static List<dynamic> submenu =[];


  static List<dynamic> items =[];





  static void hideLoader() {
    if (_isLoaderShowing && _loaderContext != null) {
      Navigator.pop(_loaderContext!);
      _loaderContext = null;
    }
  }

  static void hideLoadingDialog() {
    if (_isLoadingDialogShowing && _loadingDialoContext != null) {
      Navigator.pop(_loadingDialoContext!);
      _loadingDialoContext = null;
    }
  }
  static void showPickerShipin(context,) {
    const dataItems = [
      'Ready to Ship',
      'Within 2 days',
      'Within 7 days',
      'Within 10 days',
      'Within 15 days',
      'More than 15 days',
    ];
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      context: context,
      builder: (BuildContext bc) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      width: 40,
                      child: Divider(
                        thickness: 3,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("SHIPS IN",
                      textScaleFactor: 1.0,
                      style: Styles.H1Headings15,
                      textAlign: TextAlign.start),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: dataItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            const Divider(
                              height: 1,
                            ),
                            InkWell(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 15.0),
                                child: Container(
                                  child: Text(
                                    // 'Within 2 days',
                                      dataItems[index],
                                      textScaleFactor: 1.0,
                                      style: Styles.decStyle,
                                      textAlign: TextAlign.start),
                                ),
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  static void showPickershort(context,) {
    const dataItemssort = [
      'Price Low to High',
      'Price High to Low',
      'New Arrivals',
      'Biggest Saving',
      'Best Sellers',
      'Most Viewed',
      'Now in Wishlists',
    ];
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (BuildContext bc) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                height: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                          width: 40,
                          child: Divider(
                            thickness: 3,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("SORT",
                          textScaleFactor: 1.0,
                          style: Styles.H1Headings15,
                          textAlign: TextAlign.start),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.pink,
                          // height: 10,
                          child: ListView.builder(
                            itemCount: dataItemssort.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  const Divider(
                                    height: 1,
                                  ),
                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: Container(
                                        child: Text(
                                          // 'Within 2 days',
                                            dataItemssort[index],
                                            textScaleFactor: 1.0,
                                            style: Styles.decStyle,
                                            textAlign: TextAlign.start),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          );
        });
  }

  static void ShowDialoglogin(BuildContext context, String message) {
    // Timer? timer = Timer(const Duration(milliseconds: 3000), (){
    //   Navigator.of(context, rootNavigator: true).pop();
    // });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Dialog(
            child: Container(
              height: 300,
              width: 250,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    // padding: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "images/welcome_icon.png",
                        height: 55,
                        width: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Utsav Fashion",
                    style: Styles.headingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    message,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "OK",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const loginScreen()));*/
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "Cancel".toUpperCase(),
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    /*showDialog(
        context: context,
        builder: (BuildContext context) {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(  // Bottom rectangular box
                    margin: EdgeInsets.only(top: 40), // to push the box half way below circle
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.only(top: 60, left: 20, right: 20), // spacing inside the box
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          message,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 16,
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: CircleAvatar( // Top Circle with icon
                      maxRadius: 40.0,
                      backgroundColor: Colors.white,
                      child: Image.asset('images/japanlogo.png'),
                    ),
                  ),
                ],
              ),
            ],
          );
        }
           ).then((value){
      // dispose the timer in case something else has triggered the dismiss.
      timer?.cancel();
      timer = null;
    });*/
  }

  static void ShowDialogAssitens(BuildContext context, String message) {
    // Timer? timer = Timer(const Duration(milliseconds: 3000), (){
    //   Navigator.of(context, rootNavigator: true).pop();
    // });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Dialog(
            child: Container(
              height: 300,
              width: 250,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "I am Yet",
                    style: Styles.headingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    message,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "OK",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              /*     Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const loginScreen()));*/
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "Cancel".toUpperCase(),
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    /*showDialog(
        context: context,
        builder: (BuildContext context) {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(  // Bottom rectangular box
                    margin: EdgeInsets.only(top: 40), // to push the box half way below circle
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.only(top: 60, left: 20, right: 20), // spacing inside the box
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          message,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 16,
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: CircleAvatar( // Top Circle with icon
                      maxRadius: 40.0,
                      backgroundColor: Colors.white,
                      child: Image.asset('images/japanlogo.png'),
                    ),
                  ),
                ],
              ),
            ],
          );
        }
           ).then((value){
      // dispose the timer in case something else has triggered the dismiss.
      timer?.cancel();
      timer = null;
    });*/
  }

  static void ShowDialogoption(BuildContext context, String message) {
    // Timer? timer = Timer(const Duration(milliseconds: 3000), (){
    //   Navigator.of(context, rootNavigator: true).pop();
    // });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Dialog(
            child: Container(
              height: 300,
              width: 250,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    // padding: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "images/welcome_icon.png",
                        height: 55,
                        width: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Utsav Fashion",
                    style: Styles.headingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    message,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "OK",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const loginScreen()));*/
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "Cancel".toUpperCase(),
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

  }

  static void showPickerBottom(context, img) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: context,
        builder: (BuildContext bc) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                height: height / 2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Align(
                            child: Container(
                              height: 5,
                              width: 30,
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                // border: Border.all(color: Colors.grey, width: 0.0),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(100, 50)),
                              ),
                              child: const Text(''),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      const Text('SIMILAR PRODUCT',
                          textScaleFactor: 1.0,
                          style: Styles.decStyle,
                          textAlign: TextAlign.start),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: height * 0.300,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  /* if (Utils.checkLogin == true) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SoldPrdWithLogin(img: img)));
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SoldPrdWtLogin(img: img)));
                                  }*/
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         // builder: (context) => ConceptPage( )));
                                  //         builder: (context) =>
                                  //             ProductDetailsScreen(img: img)));
                                },
                                child: Card(
                                  color: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    // borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      img.contains("https")
                                          ? Image.network(
                                        img,
                                        fit: BoxFit.fill,
                                        height: height / 3.1,
                                        width: width / 2,
                                      )
                                          : Image.asset(
                                        img,
                                        fit: BoxFit.fill,
                                        height: height / 3.1,
                                        width: width / 2,
                                      ),
                                      // Image.asset(
                                      //
                                      //   img,
                                      //   fit: BoxFit.cover,
                                      //   height: height / 3.1,
                                      //   width: width / 2,
                                      // ),
                                      Container(
                                        // color: Colors.red,
                                        width: width / 2,
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Utils.items[index]['name'],
                                              textAlign: TextAlign.start,
                                              style: Styles.decStyle,
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                text: '',
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '₹5000.00',
                                                    style:
                                                    Styles.prizeStyle5,
                                                  ),
                                                  TextSpan(
                                                    text: Utils.currencySymbol + Utils.items[index]
                                                    ['price_info'][
                                                    'minimal_regular_price']
                                                        .toString(),
                                                    style:
                                                    Styles.prizeStyle3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  // margin: EdgeInsets.all(10),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          );
        });
  }

}

class AppColors extends MaterialColor {
  AppColors(int primary, Map<int, Color> swatch) : super(primary, swatch);

  static const int primaryColorValue = 0xFFFFFFFF;
  // ********TESTCOLOR*********
  static const decoraterinnerColor = Color(0xFFE1E1D9);
  static const primaryColorpink = Color(0xFFFF4CBB);
  static const primaryColorblue = Color(0xFF34C1D1);
  static const primaryColorblueforexplorescreen = Color(0xFF39C1CF);

  static const comomnColorgrey = Color(0xFFE1E1D9);
  static const pricecolor = Color(0xFFCB4551);
  static const Textcolorsubheading = Color(0xFF33333F);
  static const Textcolorheading = Color(0xFF11111F);
  static const Khomemainheading = Color(0xFF11111F);
  static const Textcolorheadingblack = Color(0xFF000000);
  static const Textcolorgreay = Color(0xFF312D2D);
  static const bulletcolor = Color(0xFF333333);
  static const Textcolor = Color(0xFF666666);
  static const white = Color(0xFFFFFFFF);
  static const bordergrey = Color(0xFFD9D9D9);
  static const bordercontainergreyinside = Color(0xFFFAFAFA);
  static const bordercontainergreyinsideyellow = Color(0xFFFFF3A9);
  static const underlineTextcolorheading = Color(0xFF2C8FEB);
  static const  buttongrey = Color(0xFFFFFFFF);
  static const  filtergrey = Color(0xFF33333F);
  static const  textgrey = Color(0xFF505050F);
  static const  textgreyordersummaary = Color(0xFF707070);








  // ********TESTCOLOR*********


  //
  // static const primaryColor1 =  Color(0xff54B9A0);
  // static const hedingqualification = Color(0xFF646060);
  // static const subqualification = Color(0xFFA79E9E);
  // static const hadingtextColorblack = Color(0xFF2D2C2C);
  // static const primaryColor10 = Color(0x1A1a416a);
  // static const primaryLightYellow = Color(0xFFcba165);
  //
  // static const colorTransparent = Color(0x00000000);
  // static const navColor = Color(0xFF461464);
  // static final tabcolor = Color(0xff461464);
  // static const cardColor = Color(0xff461464);
  // //Snackbar color
  // static const snackBarColor = Color(0xff424242);
  // static const snackBarRed = Color(0xffe53e3f);
  // static const snackBarGreen = Color(0xff2dca73);
  // static const kprimecolors = Color(0xFF1E88E5);
  //
  // //White shades
  // static const white = Color(0xFFFFFFFF);
  // static const white30 = Color(0x4DFFFFFF);
  // static const white60 = Color(0x99FFFFFF);
  // static final white90 = const Color(0x99FFFFFF).withOpacity(0.9);
  // static const white10 = Color(0x1AFFFFFF);
  // static const boxColor = Color(0xFFf4f4f4);
  // static const txtColor = Color(0xFFcccccc);
  // static const orangeColor = Color(0xffea561b);
  // static const pinkColor = Color(0xffff5e85);
  // static const blueColor = Color(0xff01ccfe);
  // static const purpleColor = Color(0xff9069ea);
  // static const bgColor = Color(0xfffcf1eb);
  // static const bgDark = Color(0xfff5bd9f);
  // static const colorbg = Color(0xffeeeeee);
  // static const colorgreen = Color(0xff00c074);
  // static const colorlightgreen = Color(0xffc9f6e4);
  // static const selectcolor = Color(0xfff5d0bd);
  // static const circlecolor = Color(0xff15750e);
  //
  // //Black shades
  // static const black = Color(0xFF000000);
  // static const black10 = Color(0x1A000000);
  // static const blackShade2 = Color(0xFF101010);
  // static const blackOpacity10 = Color(0x1A000000);
  // static const blackOpacity15 = Color(0x26000000);
  // static const blackOpacity5 = Color(0x0D000000);
  // static const black80 = Color(0xCC000000);
  // static const black2 = Color(0xff343434);
  // static const black70 = Color(0xB3000000);
  // static const black60 = Color(0x99000000);
  //
  // //Grey Shades
  // static const textPrimaryColor = Color(0xFF2c3551);
  // static const textPrimaryColor80 = Color(0xCC2c3551);
  // static const textPrimaryColor40 = Color(0x662c3551);
  // static const textPrimaryColor50 = Color(0x802c3551);
  // static const textPrimaryColor60 = Color(0x992c3551);
  // static const textPrimaryColor30 = Color(0x4D2c3551);
  // static const textPrimaryColor8 = Color(0x142c3551);
  // static const textPrimaryColor10 = Color(0xFFDCDCDC);
  // static const textGrey1 = Color(0xFF2a2e32);
  // static const textGrey2 = Color(0xFFa8b6c7);
  // static const textGrey3 = Color(0xFFecf0f5);
  // static const textGrey4 = Color(0xFFd4d6dc);
  // static const pale_grey_two = Color(0xFFe6eef2);
  // static const textGrey5 = Color(0xFFc2c4c7);
  // static const textGrey6 = Color(0xFFecf0f1);
  // static const textGrey7 = Color(0x91ecf0f5);
  // static const battleship_grey = Color(0xFF797a7c);
  // static const textGrey8 = Color(0x19264974);
  // static const textGrey9 = Color(0x3decf0f5);
  // static const textGrey10 = Color(0xFFEEEEEE);
  // static const textGrey11 = Color(0xFF707070);
  // static const textGrey12 = Color(0xFFF6F6F6);
  // static const textDarkBlue = Color(0xFF264974);
  // static const lightPurple = Color(0x4a8e79cf);
  // static const purple = Color(0xff8e79cf);
  // static const blue1 = Color(0xff5b4e86);
  // static const greenColor = Color(0xff48b352);
  // static const cyanColor = Color(0xffaae7ff);
  // static const warm_grey = Color(0xff979797);
  // static const dark_grey_blue_24 = Color(0x3e2c3551);
  // static const dark_grey = Color(0x707070);
  // static const dark_primary = Color(0xFFFFAF6A);
  // static const light_primary = Color(0xFFFF9800);
  // static const dark_black = Color(0xFF3A3A3A);
  // static const white_light = Color(0xFFEEEEEE);
  //
  // static const colorLightYellow = Color(0xfffddd7d);
  // static const colorYellow = Color(0xffeed792);
  // static const dark_grey_blue = Color(0xff2c3551);
  // static const light_green = Color(0x0c48b352);
  // static final dark_grey_blue_40 = Color(0xff2c3551).withOpacity(0.4);
  // static final dark_grey_blue_20 = Color(0xff2c3551).withOpacity(0.2);
  // static final dark_grey_blue_08 = Color(0x142c3551);
  //
  // static const training_color_1 = Color(0xFFaa9cf7);
  // static const training_color_2 = Color(0xffc0d0f6);
  // static const training_color_3 = Color(0xfff7a89c);
  // static const training_color_4 = Color(0xffFFC794);
  // static const training_color_5 = Color(0xff0022FF);

  static const Color primary_color =
  MaterialColor(primaryColorValue, <int, Color>{
    50: Color(primaryColorValue),
    100: Color(primaryColorValue),
    200: Color(primaryColorValue),
    300: Color(primaryColorValue),
    400: Color(primaryColorValue),
    500: Color(primaryColorValue),
    600: Color(primaryColorValue),
    700: Color(primaryColorValue),
    800: Color(primaryColorValue),
    900: Color(primaryColorValue),
  });
}

class Styles {
  static TextStyle h1() {
    return const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
  }
  static const SidemenuTextStyle = TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 16,
      color: AppColors.Textcolorheading,
      fontWeight: FontWeight.w400);
  static const drwerStyle500 =  TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 16,
      color: AppColors.Textcolorheading,
      fontWeight: FontWeight.w600);

  static friendsBox() {
    return const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)));
  }

  static messagesCardStyle(check) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: check ? Colors.indigo.shade300: Colors.grey.shade300,
    );
  }

  static messageFieldCardStyle() {
    return BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.indigo),
        borderRadius: BorderRadius.circular(10));
  }

  static messageTextFieldStyle({required Function() onSubmit}) {
    return InputDecoration(
      border: InputBorder.none,
      hintText: 'Enter Message',
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      suffixIcon: IconButton(onPressed: onSubmit, icon: const Icon(Icons.send)),
    );
  }
  static searchTextFieldStyle() {
    return InputDecoration(
      border: InputBorder.none,
      hintText: 'Search here',
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
    );
  }
  static searchField({Function(String)? onChange}) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        onChanged: onChange,
        decoration: Styles.searchTextFieldStyle(),
      ),
      decoration: Styles.messageFieldCardStyle(),
    );
  }
  static const H1Headings = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 18,
      color: AppColors.Textcolorheadingblack,
      fontWeight: FontWeight.w600);
  static const SkUStyle = TextStyle(
    fontFamily: 'SourceSansPro',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.Textcolorgreay,
    // decoration: TextDecoration.lineThrough,
  );
  static const headingStyle = TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold);
  static const chipstextStyle =  TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400);


  static const Readmore = TextStyle(
    fontFamily: 'SourceSansPro',
    color: Colors.blue,
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
  static const prizeStyle3 = TextStyle(
    color:
    AppColors.pricecolor,
    fontSize: 16,
    fontFamily:
    "SourceSansPro",
    fontWeight:
    FontWeight.w600,
  );
  static const FreeStyle = TextStyle(
    color:
    AppColors.pricecolor,
    fontSize: 15,
    fontFamily:
    "SourceSansPro",
    fontWeight:
    FontWeight.w600,
  );
  static const prizeStyle5 = TextStyle(
    fontFamily:
    'SourceSansPro',
    fontSize: 14,
    fontWeight:
    FontWeight.w400,
    color: AppColors.Textcolorgreay,
    decoration: TextDecoration
        .lineThrough,
  );
  static const offprizeStyle = TextStyle(
    color: AppColors.pricecolor,
    fontSize: 14,
    fontFamily: "SourceSansPro",
    fontWeight: FontWeight.w400,
  );
  static const inculedingStyle = TextStyle(
    color: Colors.grey,
    fontFamily: 'SourceSansPro',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    // decoration: TextDecoration.lineThrough,
  );
  static const decStyle = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 15,
      color: AppColors.Textcolorheadingblack,
      fontWeight: FontWeight.w400);

  static const dropdownin = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 16,
      color: Colors.black,
      fontWeight:
      FontWeight.w600);
  static const H1Headings15 = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 15,
      color: AppColors.Textcolorheadingblack,
      fontWeight: FontWeight.w600);


  static const formfieldHeadingText = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 14,
      color: AppColors.Textcolorheadingblack,
      fontWeight: FontWeight.w600
  );
  static const formfieldHeadingText16 = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 16,
      color: AppColors.Textcolorheading,
      fontWeight: FontWeight.w600);
  static const formfieldhintStyle = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 16,
      // color: AppColors.Textcolorheadingblack,
      color:Colors.grey,
      fontWeight: FontWeight.w400
    // fontWeight: FontWeight.bold
  );

  static const assetstypeStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: "SourceSansPro",
    fontWeight: FontWeight.w500,
  );

  static const shareWishStyle = TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 18,
      color: AppColors.buttongrey,
      fontWeight: FontWeight.w700);
  static const shareItStyle = TextStyle(
    fontFamily: 'SourceSansPro',
    color: AppColors.Textcolorheadingblack,
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  static const shipintilesStyle = TextStyle(
    fontFamily: 'SourceSansPro',
    color: AppColors.Textcolorheading,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const khomeheadingStyle = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 21,
      color: AppColors.Textcolorheadingblack,
      fontWeight: FontWeight.w600);

  static const khomesubheadingStyle = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 15,
      color: AppColors.Textcolorheadingblack,
      fontWeight: FontWeight.w400);
  static const Sizechartunder = TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: 'SourceSansPro',
      fontSize: 15,
      color: AppColors.Textcolorheadingblack,
      fontWeight: FontWeight.w400);
  static const subheadingStyle = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 14,
      color:  AppColors.bulletcolor,
      fontWeight: FontWeight.w400);
  //
  static const ksearchheadingStyle = TextStyle(
      fontFamily: 'SourceSansPro',
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w600
    // fontWeight: FontWeight.bold
  );

  static const TextStyle requiredFieldTextStyle = TextStyle(
    color: Color(0xFFCB4551),
    fontSize: 12,
  );
}

class Widgets{
  Widgets._();
  static ksizedBox(context) => SizedBox(
    height:  20,
  );
  static ksizedBox15(context) => SizedBox(
    height:  15,
  );
  static ksizedBox10(context) => SizedBox(
    height:  10,
  );
  static ksizedBox5(context) => SizedBox(
    height:  5,
  );

  static kheadinghome(context, heading) => Align(
    alignment: Alignment.centerLeft,
    child: Text(
      heading,
      style: Styles.khomeheadingStyle,
    ),
  );



  static void ShowDialoglogin(BuildContext context, String message) {
    // Timer? timer = Timer(const Duration(milliseconds: 3000), (){
    //   Navigator.of(context, rootNavigator: true).pop();
    // });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Dialog(
            child: Container(
              height: 300,
              width: 250,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    // padding: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "images/welcome_icon.png",
                        height: 55,
                        width: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Utsav Fashion",
                    style: Styles.headingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    message,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "OK",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              /*    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const loginScreen()));*/
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "Cancel".toUpperCase(),
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    /*showDialog(
        context: context,
        builder: (BuildContext context) {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(  // Bottom rectangular box
                    margin: EdgeInsets.only(top: 40), // to push the box half way below circle
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.only(top: 60, left: 20, right: 20), // spacing inside the box
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          message,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 16,
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: CircleAvatar( // Top Circle with icon
                      maxRadius: 40.0,
                      backgroundColor: Colors.white,
                      child: Image.asset('images/japanlogo.png'),
                    ),
                  ),
                ],
              ),
            ],
          );
        }
           ).then((value){
      // dispose the timer in case something else has triggered the dismiss.
      timer?.cancel();
      timer = null;
    });*/
  }

  static void ShowDialogAssitens(BuildContext context, String message) {
    // Timer? timer = Timer(const Duration(milliseconds: 3000), (){
    //   Navigator.of(context, rootNavigator: true).pop();
    // });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Dialog(
            child: Container(
              height: 300,
              width: 250,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "I am Yet",
                    style: Styles.headingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    message,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "OK",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              /*  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const loginScreen()));*/
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "Cancel".toUpperCase(),
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    /*showDialog(
        context: context,
        builder: (BuildContext context) {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(  // Bottom rectangular box
                    margin: EdgeInsets.only(top: 40), // to push the box half way below circle
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.only(top: 60, left: 20, right: 20), // spacing inside the box
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          message,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 16,
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: CircleAvatar( // Top Circle with icon
                      maxRadius: 40.0,
                      backgroundColor: Colors.white,
                      child: Image.asset('images/japanlogo.png'),
                    ),
                  ),
                ],
              ),
            ],
          );
        }
           ).then((value){
      // dispose the timer in case something else has triggered the dismiss.
      timer?.cancel();
      timer = null;
    });*/
  }

  static void ShowDialogoption(BuildContext context, String message) {
    // Timer? timer = Timer(const Duration(milliseconds: 3000), (){
    //   Navigator.of(context, rootNavigator: true).pop();
    // });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Dialog(
            child: Container(
              height: 300,
              width: 250,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    // padding: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "images/welcome_icon.png",
                        height: 55,
                        width: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Utsav Fashion",
                    style: Styles.headingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    message,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "OK",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const loginScreen()));*/
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                            child: Text(
                              "Cancel".toUpperCase(),
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 12,
// color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
// (Route<dynamic> route) => false);
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.primaryColorpink, // background
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    /*showDialog(
        context: context,
        builder: (BuildContext context) {
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(  // Bottom rectangular box
                    margin: EdgeInsets.only(top: 40), // to push the box half way below circle
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.only(top: 60, left: 20, right: 20), // spacing inside the box
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          message,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          height: 16,
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: CircleAvatar( // Top Circle with icon
                      maxRadius: 40.0,
                      backgroundColor: Colors.white,
                      child: Image.asset('images/japanlogo.png'),
                    ),
                  ),
                ],
              ),
            ],
          );
        }
           ).then((value){
      // dispose the timer in case something else has triggered the dismiss.
      timer?.cancel();
      timer = null;
    });*/
  }
}

class AppUrl {

  // static const String baseUrl = 'https://m2devawsadmin.fashionindia.co.nz/rest/v1';
  static const String baseUrl = 'https://utsavfashion.mobiloitte.io/rest/default/V1';
  static const String loginUrl = '$baseUrl/login';
  static const String username = 'arvind.kumar';
  static const String password = 'test@123';













  static const String addressesAddressId = '$baseUrl/addresses/{addressId}';
  static const String adobe_io_events_check_configuration = '$baseUrl/adobe_io_events/check_configuration';
  static const String adobestock_asset_list = '$baseUrl/adobestock/asset/list';
  static const String adobestock_asset_search = '$baseUrl/adobestock/asset/search';
  static const String adobestockid = '$baseUrl/adobestock/asset/{id}';
  static const String adobestock_search = '$baseUrl/adobestock/search';
  static const String analytics_link = '$baseUrl/analytics/link';
  static const String applepay_auth = '$baseUrl/applepay/auth';
  static const String attributeMetadata_customer = '$baseUrl/attributeMetadata/customer';
  static const String attributeMetadata_customer_attribute_attributeCode = '$baseUrl/attributeMetadata/customer/attribute/{attributeCode}';
  static const String attributeMetadata_customer_custom = '$baseUrl/attributeMetadata/customer/custom';
  static const String attributeMetadata_customer_form_formCode = '$baseUrl/attributeMetadata/customer/form/{formCode}';
  static const String attributeMetadata_customerAddress = '$baseUrl/attributeMetadata/customerAddress';
  static const String attributeMetadata_customerAddress_attribute_attributeCode = '$baseUrl/attributeMetadata/customerAddress/attribute/{attributeCode}';
  static const String attributeMetadata_customerAddress_custom = '$baseUrl/attributeMetadata/customerAddress/custom';
  static const String attributeMetadata_customerAddress_form_formCode = '$baseUrl/attributeMetadata/customerAddress/form/{formCode}';
  static const String bulk = '$baseUrl/bulk';
  static const String bulk_bulkUuid_detailed_status = '$baseUrl/bulk/{bulkUuid}/detailed-status';
  static const String bulk_bulkUuid_operation_status_status = '$baseUrl/bulk/{bulkUuid}/operation-status/{status}';
  static const String bulk_bulkUuid_status = '$baseUrl/bulk/{bulkUuid}/status';
  static const String bundle_products_options_add = '$baseUrl/bundle-products/options/add';
  static const String bundle_options_types = '$baseUrl/bundle-products/options/types';
  static const String loginUrl_ = '$baseUrl/bundle-products/options/{optionId}';
  static const String bundle_children = '$baseUrl/bundle-products/{productSku}/children';
  static const String bundle_links = '$baseUrl/bundle-products/{sku}/links/{id}';
  static const String bundle_optionId = '$baseUrl/bundle-products/{sku}/links/{optionId}';
  static const String bundle_options_all = '$baseUrl/bundle-products/{sku}/options/all';
  static const String bundle_sku_optionId = '$baseUrl/bundle-products/{sku}/options/{optionId}';
  static const String bundle_childSku = '$baseUrl/bundle-products/{sku}/options/{optionId}/children/{childSku}';
  static const String carts_ = '$baseUrl/carts/';
  static const String carts_carts_checkGiftCard = '$baseUrl/carts/guest-carts/{cartId}/checkGiftCard/{giftCardCode}';
  static const String carts_guest_cartsID = '$baseUrl/carts/guest-carts/{cartId}/giftCards';
  static const String cartId_giftCards_giftCardCode = '$baseUrl/carts/guest-carts/{cartId}/giftCards/{giftCardCode}';
  static const String carts_licence = '$baseUrl/carts/licence';
  static const String carts_licence_list = '$baseUrl/carts/licence/list';
  static const String carts_mine = '$baseUrl/carts/mine';
  static const String carts_balance_apply = '$baseUrl/carts/mine/balance/apply';
  static const String carts_billing_address = '$baseUrl/carts/mine/billing-address';
  static const String carts_checkGiftCard = '$baseUrl/carts/mine/checkGiftCard/{giftCardCode}';
  static const String carts_collect_totals = '$baseUrl/carts/mine/collect-totals';
  static const String carts_coupons = '$baseUrl/carts/mine/coupons';
  static const String carts_couponsCode = '$baseUrl/carts/mine/coupons/{couponCode}';
  static const String carts_shipping_methods = '$baseUrl/carts/mine/estimate-shipping-methods';
  static const String carts_shipping_address_id = '$baseUrl/carts/mine/estimate-shipping-methods-by-address-id';
  static const String carts_gift_message = '$baseUrl/carts/mine/gift-message';
  static const String carts_message_itemId = '$baseUrl/carts/mine/gift-message/{itemId}';
  static const String carts_giftCards = '$baseUrl/carts/mine/giftCards';
  static const String carts_giftCards_giftCardCode = '$baseUrl/carts/mine/giftCards/{giftCardCode}';
  static const String carts_mine_items = '$baseUrl/carts/mine/items';
  static const String carts_items_itemId = '$baseUrl/carts/mine/items/{itemId}';
  static const String carts_order = '$baseUrl/carts/mine/order';
  static const String carts_payment_information = '$baseUrl/carts/mine/payment-information';
  static const String carts_payment_methods = '$baseUrl/carts/mine/payment-methods';
  static const String carts_po_payment_info = '$baseUrl/carts/mine/po-payment-information';
  static const String carts_payment_method = '$baseUrl/carts/mine/selected-payment-method';
  static const String carts_set_payment_info= '$baseUrl/carts/mine/set-payment-information';
  static const String carts_shipping_info= '$baseUrl/carts/mine/shipping-information';
  static const String carts_ship_methods = '$baseUrl/carts/mine/shipping-methods';
  static const String carts_mine_totals = '$baseUrl/carts/mine/totals';
  static const String carts_totals_information = '$baseUrl/carts/mine/totals-information';
  static const String carts_search = '$baseUrl/carts/search';
  static const String carts_cartId = '$baseUrl/carts/{cartId}';
  static const String carts_cartId_billing = '$baseUrl/carts/{cartId}/billing-address';
  static const String carts_cartId_coupons = '$baseUrl/carts/{cartId}/coupons';
  static const String carts_cartId_couponCode = '$baseUrl/carts/{cartId}/coupons/{couponCode}';
  static const String carts_estimate_ship_methods = '$baseUrl/carts/{cartId}/estimate-shipping-methods';
  static const String carts_methods_address_id = '$baseUrl/carts/{cartId}/estimate-shipping-methods-by-address-id';
  static const String carts_cartId_message = '$baseUrl/carts/{cartId}/gift-message';
  static const String carts_gift_message_itemId = '$baseUrl/carts/{cartId}/gift-message/{itemId}';
  static const String carts_cartId_giftCards = '$baseUrl/carts/{cartId}/giftCards';
  static const String carts_ggiftCardCode = '$baseUrl/carts/{cartId}/giftCards/{giftCardCode}';
  static const String carts_items = '$baseUrl/carts/{cartId}/items';
  static const String carts_cartId_item_itemId = '$baseUrl/carts/{cartId}/items/{itemId}';
  static const String carts_cartId_order = '$baseUrl/carts/{cartId}/order';
  static const String carts_payment_methods_ = '$baseUrl/carts/{cartId}/payment-methods';
  static const String carts_selected_payment_method = '$baseUrl/carts/{cartId}/selected-payment-method';
  static const String carts_shipping_information = '$baseUrl/carts/{cartId}/shipping-information';
  static const String carts_cartId_shipping_methods = '$baseUrl/carts/{cartId}/shipping-methods';
  static const String carts_cartId_total= '$baseUrl/carts/{cartId}/totals';
  static const String carts_cartId_totals_information = '$baseUrl/carts/{cartId}/totals-information';
  static const String carts_quoteId_giftCards = '$baseUrl/carts/{quoteId}/giftCards';
  static const String arts_quoteId_itemsc = '$baseUrl/arts/{quoteId}/itemsc';
  static const String categories = '$baseUrl/categories';
  static const String categories_attributes = '$baseUrl/categories/attributes';
  static const String categories_attributes_attributeCode = '$baseUrl/categories/attributes/{attributeCode}';
  static const String categories_options = '$baseUrl/categories/attributes/{attributeCode}/options';
  static const String categories_list = '$baseUrl/categories/list';
  static const String categories_categoryId = '$baseUrl/categories/{categoryId}';
  static const String categories_move = '$baseUrl/categories/{categoryId}/move';
  static const String categories_categoryId_products = '$baseUrl/categories/{categoryId}/products';
  static const String categories_categoryId_products_sku = '$baseUrl/categories/{categoryId}/products/{sku}';
  static const String categories_id_ = '$baseUrl/categories/{id}';
  static const String cmsBlock = '$baseUrl/cmsBlock';
  static const String cmsBlock_search_ = '$baseUrl/cmsBlock/search';
  static const String cmsBlock_block_Id_ = '$baseUrl/cmsBlock/{blockId}';
  static const String cmsBlock__id_ = '$baseUrl/cmsBlock/{id}';
  static const String cmsPage = '$baseUrl/cmsPage';
  static const String cmsPage__search_ = '$baseUrl/cmsPage/search';
  static const String cmsPage__id__ = '$baseUrl/cmsPage/{id}';
  static const String cmsPage__pageId = '$baseUrl/cmsPage/{pageId}';
  static const String company = '$baseUrl/company/';
  static const String company_assignRoles_ = '$baseUrl/company/assignRoles';
  static const String company_role_ = '$baseUrl/company/role/';
  static const String company_role_id_ = '$baseUrl/company/role/{id}';
  static const String company_role_roleId_ = '$baseUrl/company/role/{roleId}';
  static const String company_roleId_users = '$baseUrl/company/role/{roleId}/users';
  static const String company_company_Id_ = '$baseUrl/company/{companyId}';
  static const String company_Credits_ = '$baseUrl/companyCredits/';
  static const String companyCredits_companyId_ = '$baseUrl/companyCredits/company/{companyId}';
  static const String companyCredits_history_ = '$baseUrl/companyCredits/history';
  static const String companyCredits_historyId_ = '$baseUrl/companyCredits/history/{historyId}';
  static const String companyCredits_creditId_ = '$baseUrl/companyCredits/{creditId}';
  static const String companyCredits_decreaseBalance_ = '$baseUrl/companyCredits/{creditId}/decreaseBalance';
  static const String companyCredits_increaseBalance = '$baseUrl/companyCredits/{creditId}/increaseBalance';
  static const String configurable_variation = '$baseUrl/configurable-products/variation';
  static const String configurable_child_ = '$baseUrl/configurable-products/{sku}/child';
  static const String configurable_products_children = '$baseUrl/configurable-products/{sku}/children';
  static const String configurable_children_childSku_ = '$baseUrl/configurable-products/{sku}/children/{childSku}';
  static const String configurable_products_sku_options = '$baseUrl/configurable-products/{sku}/options';
  static const String configurable_products_options_all = '$baseUrl/configurable-products/{sku}/options/all';
  static const String configurable_products__options_id_ = '$baseUrl/configurable-products/{sku}/options/{id}';
  static const String coupons = '$baseUrl/coupons';
  static const String coupons_deleteByCodes_ = '$baseUrl/coupons/deleteByCodes';
  static const String coupons_deleteByIds_ = '$baseUrl/coupons/deleteByIds';
  static const String coupons_generate_ = '$baseUrl/coupons/generate';
  static const String coupons_search_ = '$baseUrl/coupons/search';
  static const String coupons_couponId_ = '$baseUrl/coupons/{couponId}';
  static const String creditmemo = '$baseUrl/creditmemo';
  static const String creditmemo_refund_ = '$baseUrl/creditmemo/refund';
  static const String creditmemo_id = '$baseUrl/creditmemo/{id}';
  static const String creditmemo_comments_ = '$baseUrl/creditmemo/{id}/comments';
  static const String creditmemo_emails_ = '$baseUrl/creditmemo/{id}/emails';
  static const String creditmemos_ = '$baseUrl/;creditmemos';
  static const String customerGroups__ = '$baseUrl/customerGroups';
  static const String customerGroups_default_ = '$baseUrl/customerGroups/default';
  static const String customer_default_id_ = '$baseUrl/customerGroups/default/{id}';
  static const String customer_default_storeId_ = '$baseUrl/customerGroups/default/{storeId}';
  static const String customerGroups_search_ = '$baseUrl/customerGroups/search';
  static const String customerGroups_id_ = '$baseUrl/customerGroups/{id}';
  static const String customerGroups_permissions = '$baseUrl/customerGroups/{id}/permissions';
  static const String customers__ = '$baseUrl/customers';
  static const String customers_addressId_ = '$baseUrl/customers/addresses/{addressId}';
  static const String customers_confirm_ = '$baseUrl/customers/confirm';
  static const String customers_isEmailAvailable__ = '$baseUrl/customers/isEmailAvailable';
  static const String customers_me_ = '$baseUrl/customers/me';
  static const String customers_activate = '$baseUrl/customers/me/activate';
  static const String customers_billingAddress = '$baseUrl/customers/me/billingAddress';
  static const String customers_password = '$baseUrl/customers/me/password';
  static const String customers_me_shippingAddress = '$baseUrl/customers/me/shippingAddress';
  static const String customers_password_ = '$baseUrl/customers/password';
  static const String customers__resetPassword = '$baseUrl/customers/resetPassword';
  static const String customers___search = '$baseUrl/customers/search';
  static const String customers_validate_ = '$baseUrl/customers/validate';
  static const String customers__customer__Id_ = '$baseUrl/customers/{customerId}';
  static const String customers_billingAddress_ = '$baseUrl/customers/{customerId}/billingAddress';
  static const String customers_carts = '$baseUrl/customers/{customerId}/carts';
  static const String customers_confirm = '$baseUrl/customers/{customerId}/confirm';
  static const String customers_password_resetLinkToken = '$baseUrl/customers/{customerId}/password/resetLinkToken/{resetPasswordLinkToken}';
  static const String customers_permissions_readonly = '$baseUrl/customers/{customerId}/permissions/readonly';
  static const String customers__shippingAddress = '$baseUrl/customers/{customerId}/shippingAddress';
  static const String customers_email_activate = '$baseUrl/customers/{email}/activate';
  static const String directory_countries = '$baseUrl/directory/countries';
  static const String directory_country_Id_ = '$baseUrl/directory/countries/{countryId}';
  static const String directory_currency = '$baseUrl/directory/currency';
  static const String eav_attribute_sets_ = '$baseUrl/eav/attribute-sets';
  static const String eav_attribute_sets_list_ = '$baseUrl/eav/attribute-sets/list';
  static const String eav___attribute_sets_attributeSetId_ = '$baseUrl/eav/attribute-sets/{attributeSetId}';
  static const String gift_wrappings__ = '$baseUrl/gift-wrappings';
  static const String gift_wrappings_id_ = '$baseUrl/gift-wrappings/{id}';
  static const String gift_wrappings__wr__Id_ = '$baseUrl/gift-wrappings/{wrappingId}';
  static const String giftregistry_mine_methods = '$baseUrl/giftregistry/mine/estimate-shipping-methods';
  static const String guest_carts_ = '$baseUrl/guest-carts';
  static const String guest_cartId = '$baseUrl/guest-carts/{cartId}';
  static const String guest_billing_address = '$baseUrl/guest-carts/{cartId}/billing-address';
  static const String guest_collect_totals = '$baseUrl/guest-carts/{cartId}/collect-totals';
  static const String guest_cartId_coupons = '$baseUrl/guest-carts/{cartId}/coupons';
  static const String guest_coupons_couponCode_ = '$baseUrl/guest-carts/{cartId}/coupons/{couponCode}';
  static const String guest_estimate_shipping_methods = '$baseUrl/guest-carts/{cartId}/estimate-shipping-methods';
  static const String guest_gift_message = '$baseUrl/guest-carts/{cartId}/gift-message';
  static const String guest_gift_message_itemId_ = '$baseUrl/guest-carts/{cartId}/gift-message/{itemId}';
  static const String guest_carts_cartId_items = '$baseUrl/guest-carts/{cartId}/items';
  static const String guest_items_itemId = '$baseUrl/guest-carts/{cartId}/items/{itemId}';
  static const String guest_order = '$baseUrl/guest-carts/{cartId}/order';
  static const String guest_payment_information = '$baseUrl/guest-carts/{cartId}/payment-information';
  static const String guest_carts__payment_methods = '$baseUrl/guest-carts/{cartId}/payment-methods';
  static const String guest_selected_payment_method = '$baseUrl/guest-carts/{cartId}/selected-payment-method';
  static const String guest_carts_selected_payment_method = '$baseUrl/guest-carts/{cartId}/selected-payment-method';
  static const String guest_cart_set_payment_information = '$baseUrl/guest-carts/{cartId}/set-payment-information';
  static const String guest_carts_shipping_information = '$baseUrl/guest-carts/{cartId}/shipping-information';
  static const String guest_carts_shipping_methods = '$baseUrl/guest-carts/{cartId}/shipping-methods';
  static const String guest_carts_cartId_totals = '$baseUrl/guest-carts/{cartId}/totals';
  static const String guest_carts_totals_information = '$baseUrl/guest-carts/{cartId}/totals-information';
  static const String gues_estimate_shipping_methods = '$baseUrl/guest-giftregistry/{cartId}/estimate-shipping-methods';
  static const String hierarchy_move_id = '$baseUrl/hierarchy/move/{id}';
  static const String hierarchy_id = '$baseUrl/hierarchy/{id}';
  static const String import_csv = '$baseUrl/import/csv';
  static const String integration_admin_token = '$baseUrl/integration/admin/token';
  static const String integration_customer_revoke_customer_token = '$baseUrl/integration/customer/revoke-customer-token';
  static const String integration_customer_token = '$baseUrl/integration/customer/token';
  static const String inventory_are_product_requested_qty = '$baseUrl/inventory/are-product-salable-for-requested-qty/';
  static const String inventory_are_products_salable = '$baseUrl/inventory/are-products-salable';
  static const String inventory_bulk_partial_source_transfer = '$baseUrl/inventory/bulk-partial-source-transfer';
  static const String inventory_bulk_product_sourc_assign = '$baseUrl/inventory/bulk-product-source-assign';
  static const String inventor_bulk_product_source_transfer = '$baseUrl/inventory/bulk-product-source-transfer';
  static const String inventory_bulk_product_source_unassign = '$baseUrl/inventory/bulk-product-source-unassign';
  static const String inventory_dump_stock = '$baseUrl/inventory/dump-stock-index-data/{salesChannelType}/{salesChannelCode}';
  static const String inventory_export_stock_salable_qty = '$baseUrl/inventory/export-stock-salable-qty/{salesChannelType}/{salesChannelCode}';
  static const String inventory_get_distance = '$baseUrl/inventory/get-distance';
  static const String inventory_get_distance_provider_code = '$baseUrl/inventory/get-distance-provider-code';
  static const String inventory_get_latlng_from_address = '$baseUrl/inventory/get-latlng-from-address';
  static const String inventory_get_latslngs_from_address = '$baseUrl/inventory/get-latslngs-from-address';
  static const String inventory_salable_quantity_sku_stockId = '$baseUrl/inventory/get-product-salable-quantity/{sku}/{stockId}';
  static const String inventory_stock_ordered_by_priority_stockId = '$baseUrl/inventory/get-sources-assigned-to-stock-ordered-by-priority/{stockId}';
  static const String inventory_pickup_pickup_locations = '$baseUrl/inventory/in-store-pickup/pickup-locations/';
  static const String inventory_product_salable = '$baseUrl/inventory/is-product-salable-for-requested-qty/{sku}/{stockId}/{requestedQty}';
  static const String inventory_is_product_salable_sku_stockId = '$baseUrl/inventory/is-product-salable/{sku}/{stockId}';
  static const String inventory_low_quantity_notification = '$baseUrl/inventory/low-quantity-notification';
  static const String inventory_notification_sourceCode_sku = '$baseUrl/inventory/low-quantity-notification/{sourceCode}/{sku}';
  static const String inventory_low_quantity_notifications_delete = '$baseUrl/inventory/low-quantity-notifications-delete';
  static const String inventory_source_items = '$baseUrl/inventory/source-items';
  static const String inventory_source_items_delete = '$baseUrl/inventory/source-items-delete';
  static const String inventory_algorithm_list = '$baseUrl/inventory/source-selection-algorithm-list';
  static const String inventory_selection_algorithm_result = '$baseUrl/inventory/source-selection-algorithm-result';
  static const String inventory_ources = '$baseUrl/inventory/sources';
  static const String inventory_sources_sourceCode = '$baseUrl/inventory/sources/{sourceCode}';
  static const String inventory_stock_resolver_type_code = '$baseUrl/inventory/stock-resolver/{type}/{code}';
  static const String inventory_stock_source_links = '$baseUrl/inventory/stock-source-links';
  static const String inventory_source_links_delete = '$baseUrl/inventory/stock-source-links-delete';
  static const String inventory_stocks = '$baseUrl/inventory/stocks';
  static const String inventory_stockId = '$baseUrl/inventory/stocks/{stockId}';
  static const String invoice_refund  = '$baseUrl/invoice/{invoiceId}/refund ';
  static const String invoices = '$baseUrl/invoices/';
  static const String invoices_comments = '$baseUrl/invoices/comments';
  static const String invoices_id = '$baseUrl/invoices/{id}';
  static const String invoices_capture = '$baseUrl/invoices/{id}/capture';
  static const String invoices_comments_ = '$baseUrl/invoices/{id}/comments';
  static const String invoices_emails = '$baseUrl/invoices/{id}/emails';
  static const String invoices_void = '$baseUrl/invoices/{id}/void';
  static const String modules = '$baseUrl/modules';
  static const String negotiabl_billing_address = '$baseUrl/negotiable-carts/{cartId}/billing-address';
  static const String negotiable_carts_coupons = '$baseUrl/negotiable-carts/{cartId}/coupons';
  static const String negotiable_carts_couponCode = '$baseUrl/negotiable-carts/{cartId}/coupons/{couponCode}';
  static const String negotiable_methods = '$baseUrl/negotiable-carts/{cartId}/estimate-shipping-methods';
  static const String negotiable_carts_address_id = '$baseUrl/negotiable-carts/{cartId}/estimate-shipping-methods-by-address-id';
  static const String negotiabl_giftCards = '$baseUrl/negotiable-carts/{cartId}/giftCards';
  static const String negotiabl_cartId_giftCards_giftCardCode = '$baseUrl/negotiable-carts/{cartId}/giftCards/{giftCardCode}';
  static const String negotiable_payment_information = '$baseUrl/negotiable-carts/{cartId}/payment-information';
  static const String negotiable_set_paymen_information = '$baseUrl/negotiable-carts/{cartId}/set-payment-information';
  static const String negotiable_shipping_information = '$baseUrl/negotiable-carts/{cartId}/shipping-information';
  static const String negotiable_totals = '$baseUrl/negotiable-carts/{cartId}/totals';
  static const String negotiableQuote_attachmentContent = '$baseUrl/negotiableQuote/attachmentContent';
  static const String negotiableQuote_decline = '$baseUrl/negotiableQuote/decline';
  static const String negotiableQuote_pricesUpdated = '$baseUrl/negotiableQuote/pricesUpdated';
  static const String negotiableQuote_request = '$baseUrl/negotiableQuote/request';
  static const String negotiableQuote_submitToCustomer = '$baseUrl/negotiableQuote/submitToCustomer';
  static const String negotiable_quoteId = '$baseUrl/negotiableQuote/{quoteId}';
  static const String negotiableQuote_comments = '$baseUrl/negotiableQuote/{quoteId}/comments';
  static const String negotiableQuot_shippingMethod = '$baseUrl/negotiableQuote/{quoteId}/shippingMethod';
  static const String order_pickup = '$baseUrl/order/notify-orders-are-ready-for-pickup';
  static const String order_invoice = '$baseUrl/order/{orderId}/invoice';
  static const String order_refund = '$baseUrl/order/{orderId}/refund';
  static const String order_ship = '$baseUrl/order/{orderId}/ship';
  static const String orders_ = '$baseUrl/orders';
  static const String orders_create = '$baseUrl/orders/create';
  static const String orders_items = '$baseUrl/orders/items';
  static const String orders_items_id = '$baseUrl/orders/items/{id}';
  static const String orders_id = '$baseUrl/orders/{id}';
  static const String orders_cancel = '$baseUrl/orders/{id}/cancel';
  static const String orders_comments = '$baseUrl/orders/{id}/comments';
  static const String orders_emails = '$baseUrl/orders/{id}/emails';
  static const String orders_hold = '$baseUrl/orders/{id}/hold';
  static const String orders_statuses = '$baseUrl/orders/{id}/statuses';
  static const String orders_unhold = '$baseUrl/orders/{id}/unhold';
  static const String orders_parent_id = '$baseUrl/orders/{parent_id}';
  static const String products_ = '$baseUrl/products';
  static const String products_render_info = '$baseUrl/products-render-info';
  static const String products_attribute_sets = '$baseUrl/products/attribute-sets';
  static const String products_attribute_sets_attributes = '$baseUrl/products/attribute-sets/attributes';
  static const String products_attribute_sets_groups = '$baseUrl/products/attribute-sets/groups';
  static const String products_attribute_sets_groups_list = '$baseUrl/products/attribute-sets/groups/list';
  static const String products_attribut_sets_groupId = '$baseUrl/products/attribute-sets/groups/{groupId}';
  static const String products_attribute_sets_list = '$baseUrl/products/attribute-sets/sets/list';
  static const String products_attribute_attributeSetId = '$baseUrl/products/attribute-sets/{attributeSetId}';
  static const String product_attributes = '$baseUrl/products/attribute-sets/{attributeSetId}/attributes';
  static const String products_attributeCode_a = '$baseUrl/products/attribute-sets/{attributeSetId}/attributes/{attributeCode}';
  static const String products_attributeSetId_groups = '$baseUrl/products/attribute-sets/{attributeSetId}/groups';
  static const String products_attributes = '$baseUrl/products/attributes';
  static const String products_attributes_types = '$baseUrl/products/attributes/types';
  static const String products_attributeCode = '$baseUrl/products/attributes/{attributeCode}';
  static const String products_options = '$baseUrl/products/attributes/{attributeCode}/options';
  static const String products_options_optionId = '$baseUrl/products/attributes/{attributeCode}/options/{optionId}';
  static const String products_base_prices = '$baseUrl/products/base-prices';
  static const String products_base_prices_information = '$baseUrl/products/base-prices-information';
  static const String products_cost = '$baseUrl/products/cost';
  static const String products_cost_delete = '$baseUrl/products/cost-delete';
  static const String products_cost_information = '$baseUrl/products/cost-information';
  static const String products_downloadable_link_samples = '$baseUrl/products/downloadable-links/samples/{id}';
  static const String products_downloadable_links_id = '$baseUrl/products/downloadable-links/{id}';
  static const String products_links_types = '$baseUrl/products/links/types';
  static const String products_links_type_attributes = '$baseUrl/products/links/{type}/attributes';
  static const String products_options_a = '$baseUrl/products/options';
  static const String products_options_b = '$baseUrl/products/options';
  static const String products_options_types = '$baseUrl/products/options/types';
  static const String products_options_optionId_b = '$baseUrl/products/options/{optionId}';
  static const String products_special_price = '$baseUrl/products/special-price';
  static const String products_special_price_delete = '$baseUrl/products/special-price-delete';
  static const String products_special_price_information = '$baseUrl/products/special-price-information';
  static const String products_tier_prices = '$baseUrl/products/tier-prices';
  static const String products_tier_prices_delete = '$baseUrl/products/tier-prices-delete';
  static const String products_tier_prices_information = '$baseUrl/products/tier-prices-information';
  static const String products_types = '$baseUrl/products/types';
  static const String products_stockItems_itemId = '$baseUrl/products/{productSku}/stockItems/{itemId}';
  static const String products_sku = '$baseUrl/products/{sku}';
  static const String products_downloadable_links = '$baseUrl/products/{sku}/downloadable-links';
  static const String products_downloadable_links_samples = '$baseUrl/products/{sku}/downloadable-links/samples';
  static const String products__samples_id = '$baseUrl/products/{sku}/downloadable-links/samples/{id}';
  static const String products_links_id = '$baseUrl/products/{sku}/downloadable-links/{id}';
  static const String products_tiers = '$baseUrl/products/{sku}/group-prices/{customerGroupId}/tiers';
  static const String products_group = '$baseUrl/products/{sku}/group-prices/{customerGroupId}/tiers/{qty}';
  static const String loproducts_group_ginUrl = '$baseUrl/products/{sku}/group-prices/{customerGroupId}/tiers/{qty}/price/{price}';
  static const String products_links = '$baseUrl/products/{sku}/links';
  static const String products_links_type = '$baseUrl/products/{sku}/links/{type}';
  static const String products_linkedProductSku = '$baseUrl/products/{sku}/links/{type}/{linkedProductSku}';
  static const String products_media = '$baseUrl/products/{sku}/media';
  static const String products_media_entryId = '$baseUrl/products/{sku}/media/{entryId}';
  static const String product_options = '$baseUrl/products/{sku}/options';
  static const String products_options_optionId_a = '$baseUrl/products/{sku}/options/{optionId}';
  static const String products_websites = '$baseUrl/products/{sku}/websites';
  static const String product_sku_websites_websiteId = '$baseUrl/products/{sku}/websites/{websiteId}';
  static const String purchase_billing_address = '$baseUrl/purchase-order-carts/{cartId}/billing-address';
  static const String purchase_order_methods = '$baseUrl/purchase-order-carts/{cartId}/estimate-shipping-methods';
  static const String purchase_methods_by_address_id = '$baseUrl/purchase-order-carts/{cartId}/estimate-shipping-methods-by-address-id';
  static const String purchase_order_carts_giftCards = '$baseUrl/purchase-order-carts/{cartId}/giftCards';
  static const String purchase_order_giftCardCode = '$baseUrl/purchase-order-carts/{cartId}/giftCards/{giftCardCode}';
  static const String purchase_payment_information = '$baseUrl/purchase-order-carts/{cartId}/payment-information';
  static const String purchase_information = '$baseUrl/purchase-order-carts/{cartId}/set-payment-information';
  static const String purchase_totals = '$baseUrl/purchase-order-carts/{cartId}/totals';
  static const String quick_checkout_account_details = '$baseUrl/quick-checkout/account-details';
  static const String quick_checkout_has_account = '$baseUrl/quick-checkout/has-account';
  static const String quick_checkout_storefront_has_account = '$baseUrl/quick-checkout/storefront/has-account';
  static const String requisition_lists = '$baseUrl/requisition_lists';
  static const String returns = '$baseUrl/returns';
  static const String returns_id = '$baseUrl/returns/{id}';
  static const String lreturns_commentsoginUrl = '$baseUrl/returns/{id}/comments';
  static const String returns_id_labels = '$baseUrl/returns/{id}/labels';
  static const String returns_id_tracking_numbers_a = '$baseUrl/returns/{id}/tracking-numbers';
  static const String returns_id_tracking_numbers_trackId = '$baseUrl/returns/{id}/tracking-numbers/{trackId}';
  static const String returnsAttributeMetadata = '$baseUrl/returnsAttributeMetadata';
  static const String returnsAttributeMetadata_custom = '$baseUrl/returnsAttributeMetadata/custom';
  static const String returnsAttributeMetadata_form_formCode = '$baseUrl/returnsAttributeMetadata/form/{formCode}';
  static const String returnsAttributeMetadata_attributeCode = '$baseUrl/returnsAttributeMetadata/{attributeCode}';
  static const String reward_mine_use_reward = '$baseUrl/reward/mine/use-reward';
  static const String salesRules = '$baseUrl/salesRules';
  static const String salesRules_search = '$baseUrl/salesRules/search';
  static const String salesRules_ruleId = '$baseUrl/salesRules/{ruleId}';
  static const String search = '$baseUrl/search';
  static const String sharedCatalog_a = '$baseUrl/sharedCatalog';
  static const String sharedCatalog_b = '$baseUrl/sharedCatalog/';
  static const String sharedCatalog = '$baseUrl/sharedCatalog/{id}';
  static const String sharedCatalog_assignCategories = '$baseUrl/sharedCatalog/{id}/assignCategories';
  static const String sharedCatalog_assignProducts = '$baseUrl/sharedCatalog/{id}/assignProducts';
  static const String sharedCatalog_categories = '$baseUrl/sharedCatalog/{id}/categories';
  static const String logisharedCatalog_productsnUrl = '$baseUrl/sharedCatalog/{id}/products';
  static const String sharedCatalog_unassignCategories = '$baseUrl/sharedCatalog/{id}/unassignCategories';
  static const String unassignProducts = '$baseUrl/sharedCatalog/{id}/unassignProducts';
  static const String sharedCatal_Id = '$baseUrl/sharedCatalog/{sharedCatalogId}';
  static const String sharedCatalog_assignCompanies = '$baseUrl/login';
  static const String sharedCatalog_companies = '$baseUrl/sharedCatalog/{sharedCatalogId}/companies';
  static const String unassignCompanies = '$baseUrl/sharedCatalog/{sharedCatalogId}/unassignCompanies';
  static const String shipment = '$baseUrl/shipment/';
  static const String shipment_track = '$baseUrl/shipment/track';
  static const String shipment_track_id = '$baseUrl/shipment/track/{id}';
  static const String shipment_id = '$baseUrl/shipment/{id}';
  static const String shipment_comments = '$baseUrl/shipment/{id}/comments';
  static const String shipment_emails = '$baseUrl/shipment/{id}/emails';
  static const String shipment_label = '$baseUrl/shipment/{id}/label';
  static const String logishipments = '$baseUrl/shipments';
  static const String stockItems_lowStock = '$baseUrl/stockItems/lowStock/';
  static const String stockItems_productSku = '$baseUrl/stockItems/{productSku}';
  static const String stockStatuses_productSku = '$baseUrl/stockStatuses/{productSku}';
  static const String store_storeConfigs = '$baseUrl/store/storeConfigs';
  static const String store_storeGroups = '$baseUrl/store/storeGroups';
  static const String store_storeViews = '$baseUrl/store/storeViews';
  static const String store_websites = '$baseUrl/store/websites';
  static const String taxClasses = '$baseUrl/taxClasses';
  static const String taxClasses_search = '$baseUrl/taxClasses/search';
  static const String taxClasses_classId = '$baseUrl/taxClasses/{classId}';
  static const String taxClasses_a = '$baseUrl/taxClasses/{taxClassId}';
  static const String taxRates = '$baseUrl/taxRates';
  static const String taxRates_search = '$baseUrl/taxRates/search';
  static const String taxRates_id = '$baseUrl/taxRates/{rateId}';
  static const String taxRules = '$baseUrl/taxRules';
  static const String Rules_search = '$baseUrl/taxRules/search';
  static const String taxRules_ruleId = '$baseUrl/taxRules/{ruleId}';
  static const String team_a = '$baseUrl/team/';
  static const String team_companyId = '$baseUrl/team/{companyId}';
  static const String team_id = '$baseUrl/team/{teamId}';
  static const String default_provider_code = '$baseUrl/tfa/default-provider-code/{userId}';
  static const String forced_providers = '$baseUrl/tfa/forced-providers';
  static const String providers = '$baseUrl/tfa/installed-providers';
  static const String authy_activate = '$baseUrl/tfa/provider/authy/activate';
  static const String authy_authenticate = '$baseUrl/tfa/provider/authy/authenticate';
  static const String authenticate_onetouch = '$baseUrl/tfa/provider/authy/authenticate-onetouch';
  static const String configure = '$baseUrl/tfa/provider/authy/configure';
  static const String send_token = '$baseUrl/tfa/provider/authy/send-token/{via}';
  static const String duo_security_activate = '$baseUrl/tfa/provider/duo_security/activate';
  static const String duo_security_authenticate = '$baseUrl/tfa/provider/duo_security/authenticate';
  static const String duo_security_configure = '$baseUrl/tfa/provider/duo_security/configure';
  static const String get_authentication_data = '$baseUrl/tfa/provider/duo_security/get-authentication-data';
  static const String google_activate = '$baseUrl/tfa/provider/google/activate';
  static const String tfa_google_authenticate = '$baseUrl/tfa/provider/google/authenticate';
  static const String tfa_provider_google_configure = '$baseUrl/tfa/provider/google/configure';
  static const String tfa_provider_u2fkey_activate = '$baseUrl/tfa/provider/u2fkey/activate';
  static const String tfa_provider_u2fkey_authentication_challenge = '$baseUrl/tfa/provider/u2fkey/authentication-challenge';
  static const String tfa_provider_u2fkey_configure = '$baseUrl/tfa/provider/u2fkey/configure';
  static const String tfa_provider_u2fkey_verify = '$baseUrl/tfa/provider/u2fkey/verify';
  static const String tfa_providers_to_activate_userId = '$baseUrl/tfa/providers-to-activate/{userId}';
  static const String tfa_tfat_providers_to_activate = '$baseUrl/tfa/tfat-providers-to-activate';
  static const String tfa_tfat_user_providers = '$baseUrl/tfa/tfat-user-providers';
  static const String tfa_user_providers_userId = '$baseUrl/tfa/user-providers/{userId}';
  static const String transactions = '$baseUrl/transactions';
  static const String transactions_id = '$baseUrl/transactions/{id}';

}