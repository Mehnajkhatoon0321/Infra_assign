
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Utils.dart';
import 'block/hidoc_bloc.dart';

class mixlandingpage extends StatefulWidget {
  mixlandingpage({Key? key}) : super(key: key);

  @override
  State<mixlandingpage> createState() => _mixlandingpageState();
}

class _mixlandingpageState extends State<mixlandingpage> {
  final scrollController = ScrollController();
  HidocBloc _hidocBloc = HidocBloc();
  late List<bool> wishvalue;
  List<String> images = [
    "images/gridImg/bride.png",
    "images/gridImg/bridemom.png",
    "images/gridImg/bridemates.png",
    "images/gridImg/groom.png"
  ];

  @override
  void initState() {
    _hidocBloc..add(sucessUserEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocProvider(
            create: (context) => _hidocBloc,
            child: BlocBuilder<HidocBloc, HidocState>(
              builder: (context, state) {
                if (state is UserLoadingState) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is UserLoadedState) {
                  return ListView(
                    controller: scrollController,
                    children: [
                      SizedBox(
                        height: height * 0.010,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [
                            Widgets.ksizedBox(context),
                            Center(
                              child:   Text(
                                "Product",
                                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                                textAlign: TextAlign.left,
                              ),

                            ),
                            Widgets.ksizedBox(context),
                            const SizedBox(
                              height: 10,
                            ),
                            widget == 'This Week\'s Best Sellers'
                                ? SizedBox()
                                : const SizedBox(),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              controller:
                              ScrollController(keepScrollOffset: true),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.50,
                              ),
                              itemCount: Utils.items.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    // Navigate to the item details page and pass the required data
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ItemDetailsPage(
                                          imageUrl: Utils.items[index]['images'][0]['url'],
                                          itemName: Utils.items[index]['name'], price:  Utils.currencySymbol +
                                            Utils.items[index]['price_info']
                                            ['minimal_regular_price']
                                                .toString(), discount: '25%', description: 'Sarees are draped garments worn in various styles, with lengths ranging from six to nine yards. They come in versatile fabrics, feature decorative borders, patterns, and prints, and can be adorned with embellishments. Sarees are available in a wide range of colors and are suitable for different occasions.',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    elevation: 4, // Add the elevation property to set the desired elevation value
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(),

                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Image.network(
                                                Utils.items[index]['images'][0]['url'],
                                                height: height / 3.4,
                                                fit: BoxFit.cover,
                                              ),
                                            ),

                                            Positioned(
                                              bottom: 5.0,
                                              left: 5.0,
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: InkWell(
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                    ),
                                                    child: Image.asset(
                                                      'assets/images/images.png',
                                                      scale: 4,
                                                      width: width * 0.060,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    Utils.showPickerBottom(
                                                      context,
                                                      Utils.items[index]['images'][0]['url'],
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              Utils.items[index]['name'],
                                              textAlign: TextAlign.left,
                                              style: Styles.decStyle,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text.rich(
                                              TextSpan(
                                                text: '',
                                                children: <TextSpan>[
                                                  const TextSpan(
                                                    text: '₹5000.00',
                                                    style: Styles.prizeStyle5,
                                                  ),
                                                  TextSpan(
                                                    text: Utils.currencySymbol +
                                                        Utils.items[index]['price_info']
                                                        ['minimal_regular_price']
                                                            .toString(),
                                                    style: Styles.prizeStyle3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Column(
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.only(left: 8.0),
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text.rich(
                                                  TextSpan(
                                                    text: '',
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: "25%",
                                                        style: Styles.offprizeStyle,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else if (state is UserErrorState) {
                  return Center(child: Text("Error: ${state}"));
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
class ItemDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final String price;
  final String discount;
  final String description;

  const ItemDetailsPage({
    required this.imageUrl,
    required this.itemName,
    required this.price,
    required this.discount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                itemName,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Price: $price',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Discount: $discount',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Description:',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}