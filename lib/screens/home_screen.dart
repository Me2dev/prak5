import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/sneaker.dart';
import 'package:sneaker_shop/screens/sneaker_detail_screen.dart';
import 'package:sneaker_shop/screens/add_sneaker_screen.dart';
import 'package:sneaker_shop/screens/favorite_screen.dart';
import 'package:sneaker_shop/screens/user_screen.dart';
import 'package:sneaker_shop/widgets/sneaker_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Sneaker> sneakers = [
    Sneaker(
      id: '1',
      name: 'Мужские кроссовки New Balance 2002R',
      brand: 'New Balance',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/a52/500_500_1/uuo0c23wiu8p22syk4qgo5e8hbx398ju.jpg',
      price: 100.0,
      description: 'Модель New Balance 2002R доказывает, что «классика» может быть удобной. Верх пары изготовлен из сетчатого текстиля и кожи. Силуэт вдохновлен беговыми кроссовками 2000-х годов. Промежуточная подошва ABZORB и специальная амортизационная вставка на пятке ABZORB SBS создают особый комфорт, смягчая каждый шаг. Подошва Stability Web и N-ergy обеспечивают поддержку свода и отвечают за уверенное сцепление с поверхностью. Настоящая ретро-эстетика, которую можно носить каждый день.',
    ),
    Sneaker(
      id: '2',
      name: 'Кроссовки PUMA Palermo Leather',
      brand: 'Puma',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/ba4/500_500_1/tc9l4qtb6ad2gss6o2pwlnrtai4tkna0.jpg',
      price: 200.0,
      description: 'Кроссовки PUMA Palermo Leather дебютировали в 80-х годах, став частью дресс-кода британских болельщиков. Верх модели имеет T-образную конструкцию, дополнен прямой шнуровкой и вставками из натуральной замши для большей мягкости и комфорта. Резиновая подошва с протектором и точкой стабилизации создает надежное сцепление с поверхностью.',
    ),
    Sneaker(
      id: '3',
      name: 'Кроссовки adidas Ozelia',
      brand: 'Adidas',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/89b/500_500_1/nhppkycred83o6dq3oijkt83gp8mpmgr.JPG',
      price: 150.0,
      description: 'Смелый силуэт кроссовок adidas Ozelia, вдохновленный бунтарскими 90-ми, идеально вписывается в современный гардероб. Верх пары создан из текстиля и искусственной кожи. Материал хорошо облегает стопы и пропускает воздух. Шнуровка с разноформатными люверсами обеспечивает плотную посадку. Технология adiPRENE® отвечает за амортизацию, активно поглощая ударные нагрузки и придавая каждому шагу особый комфорт.',
    ),
    Sneaker(
      id: '4',
      name: 'Мужские кроссовки Nike Full Force Lo Cob',
      brand: 'Nike',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/20b/500_500_1/7f7tqlzv70r7gi15k40arivq2xkw4090.jpg',
      price: 180.0,
      description: 'Кроссовки Nike Full Force Lo Cob отсылают нас к классической модели AF1 с добавлением стиля 80-х и ретро-отстрочкой, которая делает пару актуальной во все времена. Верх модели выполнен из сочетания натуральной и искусственной кожи. Перфорированный мысок создает дополнительную циркуляцию воздуха. Промежуточная подошва из пеноматериала обеспечивает мягкость и отзывчивость каждого шага. Подметка из резины отвечает за надежное сцепление на любой поверхности.',
    ),
    Sneaker(
      id: '5',
      name: 'Кроссовки PUMA CA Pro Mid',
      brand: 'Puma',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/668/500_500_1/8nr384qzm1b24nhlvah4c6ul9bvmk4uk.jpg',
      price: 90.0,
      description: 'Завышенный силуэт и лаконичный черный оттенок — не единственная причина заполучить пару PUMA CA Pro Mid в свой гардероб. Верх кроссовок изготовлен из натуральной и искусственной кожи, что повышает износостойкость модели, но сохраняет их подвижность и мягкость. Высокий борт дополнен шнуровкой с еще одним отверстием для более плотной посадки. Минималистичный дизайн в сочетании с акцентным золотым логотипом отлично смотрится, подходит к любому стилю и позволяет подбирать множество разных образов.',
    ),
    Sneaker(
      id: '6',
      name: 'Кроссовки adidas Samba',
      brand: 'Adidas',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/4cd/500_500_1/tse7krujnklhk0v8ln4dlnjx8kab27so.jpg',
      price: 110.0,
      description: 'Футбольная эстетика плотно вошла в уличный стритстайл. Это доказывают кроссовки с T-образным силуэтом adidas Samba. Пара создана из натуральной кожи. Ее легко интегрировать в разнообразные аутфиты. Модель дополнена замшевым мыском и подошвой «gumsole», популярность которой не уменьшается с каждым годом. Шнуровка с дополнительными отверстиями отвечает за комфортную посадку по стопе. Резиновая подметка с приводной точкой в стиле архивных футбольных моделей и цепкий протектор создают уверенность в каждом шаге.',
    ),
    Sneaker(
      id: '7',
      name: 'Мужские кроссовки New Balance 327',
      brand: 'New Balance',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/b3e/500_500_1/ljt5zjoesb0aq4iybw1ti1pc822cx64z.jpg',
      price: 200.0,
      description: 'Культовый силуэт кроссовок New Balance 327, вдохновленный 1970-ми, с добавлением современных деталей в виде акцентного логотипа N на боковой стороне пары отлично смотрится с любым аутфитом. Текстильный верх с замшевыми вставками отвечает за воздухопроницаемость. Подошва в виде песочных часов обеспечивает усиленную амортизацию, а ярко выраженные протекторы — надежное сцепление с любой поверхностью.',
    ),
    Sneaker(
      id: '8',
      name: 'Мужские кроссовки Nike Air Max 270',
      brand: 'Nike',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/74f/500_500_1/2oozrxd80bjznamh6wvggxz0yk3tarpp.JPG',
      price: 175.0,
      description: 'В мужских кроссовках Nike Air Max 270 впервые была использована вставка Max Air, разработанная дизайнерами Nike Sportswear, и они обеспечивают легкость и амортизацию при каждом шаге. Обновленная модель обеспечивает современный уровень комфорта, а увеличенный верх язычка и ретро-логотип на язычке напоминает об оригинальной модели Air Max 180 1991 года.',
    ),
    Sneaker(
      id: '9',
      name: 'Кроссовки adidas Ozweego',
      brand: 'Adidas',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/cd7/500_500_1/bted9qgh8pqsm3rc38b452wm16n0e812.jpg',
      price: 80.0,
      description: 'Мужские кроссовки Ozweego от adidas представляют стиль конца 90-х — начала 2000-х в новом ключе, объединяя ретро-детали с футуристическим дизайном. Модель выполнена из кожи и замши. Специальные вставки поддерживают переднюю часть стопы и пятку. Кроссовки ощущаются невероятно комфортно в течение всего дня. Вставка из сверхупругого материала Adiprene+ в передней части стопы обеспечивает мягкость шага и увеличивает силу отталкивания, а вставка в пяточной части обеспечит превосходную амортизацию при ударных нагрузках.',
    ),
    Sneaker(
      id: '10',
      name: 'Мужские кроссовки Reebok Premier Road Plus VI',
      brand: 'New Balance',
      imagePath: 'https://static.street-beat.ru/upload/resize_cache/iblock/8fe/500_500_1/jdqme49fuh9g4nyxjadz056a3f4oc07u.jpg',
      price: 70.0,
      description: 'Модель Reebok Premier Road Plus VI, вдохновленная беговыми кроссовками 2009 года, возвращается в городские аутфиты в светлом бежевом оттенке. Текстильный верх со вставками из искусственной кожи хорошо пропускает воздух и позволяет носить пару каждый день. Конструкция подошвы с дополнительной амортизацией DMX поглощает удары и смягчает нагрузку на суставы. Изогнутую форму подошвы дополняют цепкие протекторы, которые минимизируют скольжение.',
    ),
  ];

  List<Sneaker> favoriteSneakers = [];

  void _toggleFavorite(Sneaker sneaker) {
    setState(() {
      if (favoriteSneakers.contains(sneaker)) {
        favoriteSneakers.remove(sneaker);
      } else {
        favoriteSneakers.add(sneaker);
      }
    });
  }

  void _deleteSneaker(Sneaker sneaker) {
    setState(() {
      sneakers.remove(sneaker);
      favoriteSneakers.remove(sneaker);
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = [
      _buildHomeScreen(),
      FavoriteScreen(favoriteSneakers: favoriteSneakers),
      UserScreen(),
    ];

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 32, 100, 156),
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddSneakerScreen(
                onAddSneaker: (Sneaker sneaker) {
                  setState(() {
                    sneakers.add(sneaker);
                  });
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.add_circle_outline_rounded),
      ),
    );
  }

  Widget _buildHomeScreen() {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: const Text('Магазин кроссовок')),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final crossAxisCount = 2;
          final itemWidth = screenWidth / crossAxisCount;
          final itemHeight = itemWidth * 1.5;

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Все кроссовки',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: itemWidth / itemHeight,
                  ),
                  itemCount: sneakers.length,
                  itemBuilder: (context, index) {
                    return SneakerCard(
                      sneaker: sneakers[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SneakerDetailScreen(
                              sneaker: sneakers[index],
                              isFavorite: favoriteSneakers.contains(sneakers[index]),
                              onToggleFavorite: () => _toggleFavorite(sneakers[index]),
                              onDelete: () => _deleteSneaker(sneakers[index]),
                            ),
                          ),
                        );
                      },
                      isFavorite: favoriteSneakers.contains(sneakers[index]),
                      onToggleFavorite: () => _toggleFavorite(sneakers[index]),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}