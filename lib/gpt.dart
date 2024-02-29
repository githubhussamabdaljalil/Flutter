import 'package:flutter/material.dart';

// قيمة الدولار التي يمكن تغييرها من خلال الدرج
double dollar = 1.0;

// قائمة الأصناف
List<String> categories = [
  'الملابس',
  'الأحذية',
  'الإكسسوارات',
  'الأجهزة',
  'الكتب'
];

// قائمة المنتجات لكل صنف
Map<String, List<String>> products = {
  'الملابس': ['قميص', 'بنطال', 'جاكيت', 'فستان', 'تيشيرت'],
  'الأحذية': ['حذاء رياضي', 'حذاء جلدي', 'صندل', 'بوت', 'كعب عالي'],
  'الإكسسوارات': ['ساعة', 'نظارة', 'قلادة', 'خاتم', 'أقراط'],
  'الأجهزة': ['هاتف', 'كمبيوتر', 'سماعة', 'شاحن', 'كاميرا'],
  'الكتب': ['رواية', 'قصة', 'شعر', 'تاريخ', 'علم']
};

// دالة لحساب سعر المنتج بناء على قيمة الدولار
double getPrice() {
  return 25 * dollar;
}

void main() {
  runApp(kkkk());
}

class kkkk extends StatefulWidget {
  @override
  State<kkkk> createState() => _MyAppState();
}

class _MyAppState extends State<kkkk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'صفحة رئيسية',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  // الصنف المختار
  String selectedCategory = categories[0];

  // الدرج المفتوح أو المغلق
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة رئيسية'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // شريط الأصناف
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      // تغيير الصنف المختار
                      selectedCategory = categories[index];
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: selectedCategory == categories[index]
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      categories[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // قائمة المنتجات
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              itemCount: products[selectedCategory]?.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        products[selectedCategory]![index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'السعر: ${getPrice().toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // الدرج لتغيير قيمة الدولار
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'تغيير قيمة الدولار',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Slider(
              value: dollar,
              min: 0.5,
              max: 2.0,
              divisions: 15,
              label: dollar.toStringAsFixed(2),
              onChanged: (value) {
                setState(() {
                  // تحديث قيمة الدولار
                  dollar = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
