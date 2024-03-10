
import 'package:animation/constant/data.dart';
import 'package:animation/controller/home_screen_provider.dart';
import 'package:animation/view/det.dart';
import 'package:animation/widget/container_opacity.dart';
import 'package:animation/widget/icon_anim.dart';
import 'package:animation/widget/text_opacity.dart';
import 'package:animation/widget/physical.dart';
import 'package:animation/widget/sand_box.dart';
import 'package:animation/widget/text_slide.dart';
import 'package:animation/widget/ticker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      final pro=Provider.of<HomeScreenProvider>(context,listen: false);
      pro.islodingchange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Consumer<HomeScreenProvider>( builder: (context, value, child) => 
       Column(
          children: [
            Expanded(
              child: value.isLoading
                  ? Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 120,
                            padding: const EdgeInsets.all(10),
                            margin:
                                const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                    )
                  : ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final datas = data[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen(data: datas);
                              },
                            ));
                          },
                          child: Hero(
                            tag: datas.id!,
                            child: Container(
                              height: 120,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              decoration: BoxDecoration( 
                                color:const Color.fromARGB(255, 74, 74, 74),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        image: AssetImage(datas.image!),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Text(
                                      datas.name!,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Slide();
                          },
                        ));
                      },
                      child: const Text("Slide",style: TextStyle(color: Colors.black),),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Sandbox();
                          },
                        ));
                      },
                      child: const Text("Sandbox",style: TextStyle(color: Colors.black),),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const TickerPro();
                          },
                        ));
                      },
                      child: const Text("TickerPro",style: TextStyle(color: Colors.black),),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const IconAnim();
                          },
                        ));
                      },
                      child: const Text("IconAnim",style: TextStyle(color: Colors.black),),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const OpacityPage();
                          },
                        ));
                      },
                      child: const Text("Opacity",style: TextStyle(color: Colors.black),),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Physical();
                          },
                        ));
                      },
                      child: const Text("Physical",style: TextStyle(color: Colors.black),),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const ConatinerOpac();
                          },
                        ));
                      },
                      child: const Text("ConatinerOpac",style: TextStyle(color: Colors.black),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}