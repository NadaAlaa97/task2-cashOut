import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/Home/home_widgets/horizontal_list.dart';
import 'package:task2_deltana/View/Home/home_widgets/row_section.dart';
import 'package:task2_deltana/View/product-details/widgets/buttomAppBar.dart';
import 'package:task2_deltana/View/product-details/widgets/image_container.dart';
import 'package:task2_deltana/View/product-details/widgets/reviewSection.dart';
import 'package:task2_deltana/View/product-details/widgets/reviews-modal-bottom-sheet.dart';
import 'package:task2_deltana/View/product-details/widgets/row_container_product_colors.dart';
import 'package:task2_deltana/View/product-details/widgets/row_text.dart';
import 'package:task2_deltana/View/product-details/widgets/text_container.dart';
import 'package:task2_deltana/View/product-details/widgets/visibility_list.dart';
import '../../utils/MyTheme.dart';

class ProductsDetailsScreen extends StatefulWidget {
  const ProductsDetailsScreen({super.key});

  @override
  State<ProductsDetailsScreen> createState() => _ProductsDetailsScreenState();
}

class _ProductsDetailsScreenState extends State<ProductsDetailsScreen> {
  int _selectedImageIndex = 0;
  int _selectedTextIndex = 0;
  bool _isClicked = false;

  void _clickFavorite() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> sizesText = ['XXL', 'XL', 'L', 'M', 'S',];
    List<String> imageUrls = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTze9CKUup0BI8I9-nmZlS2mIVbrDO-elVnng&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfZjLzAwjTGzOPMNRYujcloxRD3blqr-otVA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbIjf3rnHuZaWNldlg1yjcW0b10Dbp12PVxg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBC-b196HxhwXT5ZTuFEL701YLrNMlVAhmJw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTze9CKUup0BI8I9-nmZlS2mIVbrDO-elVnng&s',
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyTheme.productContainer,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back, color: MyTheme.blackColor, size: 25.spMin,),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white,),
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          _clickFavorite();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(Icons.check, color: MyTheme.blackColor, size: 17.spMin,),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w,),
                                Text('تمت إضافة العنصر إلى المفضلة', style: TextStyle(color: Colors.white,fontFamily: 'IBM Plex Sans Arabic',
                                    fontSize: 18.spMin,fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                              showCloseIcon: true,
                            ),
                          );
                        },
                        child: Icon(
                      _isClicked ? Icons.favorite : Icons.favorite_border,
                          color: _isClicked ? MyTheme.yellowColor : MyTheme.blackColor,
                          size: 22.spMin,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.share,
                          color: MyTheme.blackColor,
                          size: 17.spMin,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 390.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: MyTheme.productContainer,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsKJeCfsLXrcyUCU6jZYezVt8R6r2AtCOYDQ&s',
                    ), fit: BoxFit.fitWidth,),
                ),
              ),
              Container(
                height: 150.h,
                width: double.infinity,
                color: MyTheme.productContainer,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5,left: 5),
                  child: Row(
                    children: List.generate(imageUrls.length, (index) {
                      return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                        child: ImageContainer(
                            imageUrl: imageUrls[index],
                            isSelected: _selectedImageIndex == index,
                            onTap: (){
                              setState(() {
                                _selectedImageIndex = index;
                              });
                            }),
                      ));
                    }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text('رانجو', style: TextStyle(color: MyTheme.greyColor,fontFamily: 'IBM Plex Sans Arabic',
                fontSize: 16.spMin,fontWeight: FontWeight.w500
                ),),
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text('كنبة سرير سوبر رانجو', style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16.spMin,fontFamily: 'IBM Plex Sans Arabic'
                ),),
              ),
              SizedBox(height: 5.h,),
              const RowText(),
              Row(
                children: [
                  SizedBox(width: 5.w,),
                  Text('4.5 ',style: TextStyle(fontSize: 14.spMin,fontFamily: 'Poppins',fontWeight: FontWeight.w500,),),
                  SizedBox(width: 2.w,),
                  Icon(Icons.star, color: MyTheme.yellowColor,size: 10.spMin,),
                  SizedBox(width: 2.w,),
                  Text('(139) ',style: TextStyle(fontSize: 12.spMin,fontFamily: 'Poppins',fontWeight: FontWeight.w400,),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('مقاس الكنبة سرير120×190 الرجول : اكرليك عاج خشب : زان ميكانيزم : حديد اسفنج : كثافة عالية قماش : جاجور كنبة ممتازة من رانجو',
                style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'IBM Plex Sans Arabic',fontSize: 14.spMin,color: MyTheme.greyColor),
                  maxLines: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowSection(text: 'المقاس', textTwo: 'دليل المقاسات', onTap: (){}),
              ),
              Row(
                children: List.generate(sizesText.length, (index) {
                  return Expanded(
                    child: TextContainer(text: sizesText[index],
                        isSelected:_selectedTextIndex == index ,
                        onTap: (){
                      setState(() {
                        _selectedTextIndex = index;
                      });
                        }),
                  );
                }),
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('اللون', style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 18.spMin,fontWeight: FontWeight.bold),),
              ),
              const RowContainerProductColors(),
              const VisibileList(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('تقيمات و المراجعات', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.spMin,fontFamily: 'IBM Plex Sans Arabic'),),
              ),
              const Divider(
                color: MyTheme.greyColor,
                endIndent: 20,
                indent: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('٥/', style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 32.spMin,fontWeight: FontWeight.w500,color: MyTheme.greyColor),),
                        SizedBox(width: 2.w,),
                        Text('٤.٧', style: TextStyle(color: MyTheme.blackColor,fontWeight: FontWeight.w500,fontSize: 32.spMin,fontFamily: 'IBM Plex Sans Arabic'),)
                      ],
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Column(
                    children: [
                      Text('تقييم عام',style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 16.spMin,fontWeight: FontWeight.w500),),
                      SizedBox(height: 5.h,),
                      Text('٦٧٨ تقييم', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.spMin,color: MyTheme.greyColor),)
                    ],
                  )
                ],
              ),
              const Divider(
                color: MyTheme.greyColor,
                endIndent: 20,
                indent: 20,
              ),
              const ReviewSection(),
              const Divider(
                color: MyTheme.greyColor,
                endIndent: 20,
                indent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('عرض جميع المراجعات البالغ عددها 76', style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 14.spMin,fontWeight: FontWeight.w500),),
                    InkWell(
                        onTap: (){
                          showModalBottomSheet(context: context,
                            backgroundColor: Colors.white,
                            isScrollControlled: true,
                            builder: (context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height / 1.2,
                                child: const ReviewsModalBottomSheet(),
                              );
                            },
                          );
                        },
                        child: Icon(Icons.arrow_forward_ios, size: 24.spMin,)
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowSection(text: 'المزيد من الاثاث', textTwo: 'عرض المزيد', onTap: (){}),
              ),
              const HorizontalProductsList(color: MyTheme.innerContainer),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RowSection(text: 'المنتجات المتعلقه بالمنتج', textTwo: 'عرض المزيد', onTap: (){}),
              ),
              const HorizontalProductsList(color: MyTheme.innerContainer),

            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomBar(),
      ),
    );
  }
}
