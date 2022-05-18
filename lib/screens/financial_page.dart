import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Financial extends StatelessWidget {
  const Financial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      height: h * 1,
      width: w * 1,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(right: 8.0, left: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blueGrey[50],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Search for content",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 8.0 ,left: 8.0, right: 8.0),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Image.asset("assets/images/current.png"),
                          Text(
                            "Current",
                            style: GoogleFonts.poppins(fontSize: 13),
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 23,
                            backgroundImage:
                                AssetImage("assets/images/fund.png")),
                        Text(
                          "Fund",
                          style: GoogleFonts.poppins(fontSize: 13),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        CircleAvatar(
                            radius: 23,
                            backgroundImage:
                                AssetImage("assets/images/regular.png")),
                        Text(
                          "Regular",
                          style: GoogleFonts.poppins(fontSize: 13),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.pink[50],
                            radius: 23,
                            backgroundImage:
                                AssetImage("assets/images/highend.png")),
                        Text(
                          "Highend",
                          style: GoogleFonts.poppins(fontSize: 13),
                        )
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0,),
              child: Container(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "Current class",
                    style: GoogleFonts.firaSansCondensed(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
              child: Container(
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: 7,
                    itemBuilder: (BuildContext contex, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Chang Jiang",
                              style: GoogleFonts.robotoSlab(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "3.6210%",
                              style: GoogleFonts.ptSerif(
                                  color: Colors.pink, fontSize: 23),
                            ),
                            Text(
                              "Annualized rate",
                              style: GoogleFonts.poppins(fontSize: 10),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                  width: w * 1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/photos/dark-blue-minimal-texture-banner-with-space-for-text-word-or-product-picture-id1224392306?b=1&k=20&m=1224392306&s=170667a&w=0&h=lpDpUrttCoFDMhGQ1GJyyxIHE78s3xoMUzkawP5n4Y4="),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pacific Ocean No.5",
                          style: GoogleFonts.libreBaskerville(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "3.6210%",
                          style: GoogleFonts.ptSerif(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "Regular class",
                    style: GoogleFonts.firaSansCondensed(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (BuildContext contex, index) {
                      return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              height: 100,
                              color: Colors.black12,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Chang Jiang Every day of",
                                          style: GoogleFonts.robotoSlab(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 60,
                                          child: Text(
                                            "Regular",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.robotoSlab(
                                                fontSize: 12),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "3.6210%",
                                          style: GoogleFonts.ptSerif(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.pink),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          "360 days",
                                          style: GoogleFonts.ptSerif(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Seven-day annualized rate of return",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12, color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
