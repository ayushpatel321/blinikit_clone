class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double? originalPrice;
  final String weight;
  final bool isInStock;
  final int deliveryTime; // in minutes

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    this.originalPrice,
    required this.weight,
    this.isInStock = true,
    this.deliveryTime = 10,
  });
}

List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Fresh Onion',
    imageUrl: 'https://imgs.search.brave.com/GSpTg9ZESDDa14wY7Fdky5xVq7cC5EleyNvYHLdt_M4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9zd2Vl/dC1vbmlvbnMtanBn/LTY2ZDBiOWY0ZDZk/M2IuanBnP2Nyb3A9/MS4wMHh3OjAuOTM5/eGg7MCwwLjA2MTJ4/aCZyZXNpemU9OTgw/Oio',
    price: 39.0,
    originalPrice: 45.0,
    weight: '1 kg',
    deliveryTime: 8,
  ),
  Product(
    id: '2',
    name: 'Tomato',
    imageUrl: 'https://imgs.search.brave.com/VtyAExzRh98vEAads2uaxCaAUX0-xW9Q9wnk-Np7k24/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2RkL2M2/LzU2L2RkYzY1NmE2/MmI3ZDY4MmZhMzFl/NjBhYmI5ZjQ0YjA5/LmpwZw',
    price: 25.0,
    weight: '500 g',
    deliveryTime: 10,
  ),
  Product(
    id: '3',
    name: 'Potato',
    imageUrl: 'https://imgs.search.brave.com/Gw0rh-L5YmW9TgXTOH-9adV_mFQ88yhEGzYg7gH1Nic/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTMw/MDM2NzMzOC9waG90/by9wb3RhdG9lcy5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/bUdLN04tOW0zZkJp/MVZrVVk5ZFRuVVpq/ZkQyQU9mTGZZa3BO/ZUJDbU90QT0',
    price: 35.0,
    originalPrice: 40.0,
    weight: '1 kg',
    deliveryTime: 9,
  ),
  Product(
    id: '4',
    name: 'Banana',
    imageUrl: 'https://imgs.search.brave.com/FWfKOQNWrQ62U2RXAFQS67aKjuamFHlWeBGrW_VpDJo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM1/NDA4MTU3OS9waG90/by9iYW5hbmEtZnJ1/aXQuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPWlpQ2tBVFYt/MnI1bTdCZVVENDY5/QXhhY210aGItd0k4/bmNISElmMWVDYWM9',
    price: 45.0,
    weight: '6 pcs',
    deliveryTime: 12,
  ),
  Product(
    id: '5',
    name: 'Apple',
    imageUrl: 'https://imgs.search.brave.com/JDKDqPXtbBczONt--jS2k-BNe2456IRWKgy2bFqaCgg/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTY0/MDg0MTExL3Bob3Rv/L2FwcGxlcy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9ZUFq/WVZXV2hyRVZLTVZW/dnpTak56RlU5ZHRq/aDJhSDJ5cGptY2xE/YVVpMD0',
    price: 120.0,
    originalPrice: 150.0,
    weight: '4 pcs',
    deliveryTime: 10,
  ),
  Product(
    id: '6',
    name: 'Milk',
    imageUrl: 'https://imgs.search.brave.com/iEZwcCd8myZGwpjgTQuQHyviFRLMR47-4mmRgViVFNI/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTQ2/ODg0NjMxL3Bob3Rv/L21pbGstY2FydG9u/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz03akxxeUEyS3g0/dk9kYU03a0llVURM/MVp3Tm9YZlNPYjZE/Y0M3blg3Yy1rPQ',
    price: 30.0,
    weight: '500 ml',
    deliveryTime: 8,
  ),
  Product(
    id: '7',
    name: 'Bread',
    imageUrl: 'https://imgs.search.brave.com/eXK_j-56UpRiImgLLeoubAPGmvAyi3fCYGOLb431hgs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzMxLzUwLzkx/LzM2MF9GXzMzMTUw/OTEyOF9UOFBaTVBv/YjFlakFMekNBWTds/eGtpREJwMnlBd0VV/Ri5qcGc',
    price: 40.0,
    weight: '400 g',
    deliveryTime: 10,
  ),
  Product(
    id: '8',
    name: 'Eggs',
    imageUrl: 'https://imgs.search.brave.com/4O3wmt21HdPWf9jwifoQIUvye1uffDaWN04KCtVgxac/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/ZWxldmVuLWVnZ3Mt/aW4tY2FyZGJvYXJk/LWNhcnRvbi1vbi1i/bGFjay1iYWNrZ3Jv/dW5kLmpwZz93aWR0/aD0xMDAwJmZvcm1h/dD1wanBnJmV4aWY9/MCZpcHRjPTA',
    price: 60.0,
    originalPrice: 75.0,
    weight: '6 pcs',
    deliveryTime: 9,
  ),
];