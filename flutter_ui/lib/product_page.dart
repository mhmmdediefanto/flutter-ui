import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://th.bing.com/th/id/OIP.OmtP2IGyP3TtEPWOjFSocgHaE8?rs=1&pid=ImgDetMain',
                fit: BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'PARKROYAL Langkawi Resort',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Hotel mewah ini menawarkan pengalaman tak tertandingi bagi tamu yang mencari relaksasi dan kemewahan tertinggi. Terletak di pusat kota yang ramai, kamar-kamar yang elegan dan luas dirancang untuk memberikan kenyamanan maksimal. Dengan fasilitas canggih seperti pusat kebugaran dan spa yang menenangkan, tamu dapat meremajakan pikiran, tubuh, dan jiwa mereka. Nikmati pengalaman kuliner yang memikat lidah di restoran-restoran internasional kami. Dengan pelayanan yang sempurna, kami menjanjikan pengalaman menginap tak terlupakan.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 5, // Batasi jumlah baris yang ditampilkan
                    overflow: TextOverflow
                        .ellipsis, // Tampilkan ellipsis jika terpotong
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp. 450.000,00', // Harga produk, ganti sesuai dengan produk Anda
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '4.5', // Rating produk, ganti sesuai dengan produk Anda
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Logic untuk menambahkan produk ke keranjang belanja
                    },
                    child: Text('Add to Cart'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ulasan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), // Ganti dengan gambar profil pengguna yang memberi ulasan
                    ),
                    title: Text(
                        'Muhammad Ediefanto'), // Ganti dengan nama pengguna yang memberi ulasan
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Hotel yang indah murah dan berkualitas sangat bersih bagus.',
                          // Ganti dengan isi ulasan
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
