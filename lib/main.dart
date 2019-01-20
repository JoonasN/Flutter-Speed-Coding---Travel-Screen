import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

var text =
    'Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo ';

var imagebg =
    'https://images.unsplash.com/photo-1476860184138-af609b4e8a3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var image1 =
    'https://images.unsplash.com/photo-1495954484750-af469f2f9be5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var image2 =
    'https://images.unsplash.com/photo-1498248193836-88f8c8d70a3f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1491&q=80';
var image3 =
    'https://images.unsplash.com/photo-1494459940152-1e911caa8cc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';
var image4 =
    'https://images.unsplash.com/photo-1474433188271-d3f339f41911?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

var pinkColor = Color(0xFFab00ed);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            child: Image.network(imagebg, fit: BoxFit.cover),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Cox's Bazar",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: pinkColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sea Beach',
                          style: TextStyle(color: pinkColor, fontSize: 12.0),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: pinkColor.withOpacity(0.7),
                ),
                Text(
                  'Bangladesh',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.black87, height: 1.1),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Text(
              'Best shots of the week',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ImagesSection(),
          SizedBox(
            height: 4.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Flight starts from',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      '\$120.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
                    )
                  ],
                ),
                RaisedButton(
                  color: pinkColor,
                  child: Text(
                    'Book now',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class ImagesSection extends StatelessWidget {
  const ImagesSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 180.0,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(image1))),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(image2))),
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(image3))),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(image4),
                                        )),
                                  ),
                                  Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: pinkColor.withOpacity(0.4),
                                    ),
                                    child: Center(child: Text('+24', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),)),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
