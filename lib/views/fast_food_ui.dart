import 'package:fast_call_food_project/models/food_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FastFoodUI extends StatefulWidget {
  const FastFoodUI({super.key});

  @override
  State<FastFoodUI> createState() => _FastFoodUIState();
}

class _FastFoodUIState extends State<FastFoodUI> {
  List<FoodList>foodList =[
    FoodList(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      latitude: '13.7910662',
      longitude: '100.5420563',
    ),
    FoodList(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      latitude: '13.7910662',
      longitude: '100.5420563',
    ),
    FoodList(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      latitude: '13.7546213',
      longitude: '100.4163158',
    ),
    FoodList(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      latitude: '13.7546213',
      longitude: '100.4163158',
    ),
    FoodList(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      latitude: '13.7546213',
      longitude: '100.4163158',
    ),
    FoodList(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      latitude: '13.7546213',
      longitude: '100.4163158',
    ),
    FoodList(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      latitude: '13.7546213',
      longitude: '100.4163158',
    ),
    FoodList(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      latitude: '13.7546213',
      longitude: '100.4163158',
    ),
    FoodList(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      latitude: '13.8259715',
      longitude: '100.4871122',
    ),
    FoodList(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      latitude: '13.8259715',
      longitude: '100.4871122',
    ),
    FoodList(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      latitude: '13.8259715',
      longitude: '100.4871122',
    ),
    FoodList(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      latitude: '13.8259715',
      longitude: '100.4871122',
    ),
    FoodList(
      name: 'hongminrestaurant',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      latitude: '13.8259715',
      longitude: '100.4871122',
    ),
    FoodList(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      latitude: '13.8237315',
      longitude: '100.396982',
    ),
    FoodList(
      name: 'huasenghong',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      latitude: '13.8238913',
      longitude: '100.3969819',
    ),
    FoodList(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      latitude: '13.8238913',
      longitude: '100.3969819',
    ),
    FoodList(
      name: 'dominospizza',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      latitude: '13.7765062',
      longitude: '100.4575208',
    ),
  ];
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:Text(
          'สายด่วนชวนกิน',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.30,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/fastfood.png',
                
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: foodList.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    _makePhoneCall(foodList[index].mobile!);
                  },
                  leading: Image.asset(
                    'assets/images/${foodList[index].image}',
                  ),
                  title: Text(
                    '${foodList[index].name}',
                  ),
                  subtitle: Text(
                    '${foodList[index].mobile}',
                  ),
                  trailing: Icon(
                    Icons.phone,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}