import '../model/produk.dart';
import '../kategory/kategory.dart';

var listOfProducts = [
  Product(
      id: '1',
      title: 'Sate Kambing Batibul',
      subTitle: 'Empuk, enak dan maknyoss',
      imageProducts: 'https://i.pinimg.com/564x/99/d6/b7/99d6b79b10e6fbe007b4fd1adee526cc.jpg',
      imageSeller: 'https://i.pinimg.com/236x/8d/66/ba/8d66ba43acbe71e7ebe0b18b0d529198.jpg',
      category: CategoryType.bebaKaran,
      price: 'Rp 90.000,-',
      realPrice: 90000,
      rate: 73,
      storeName: 'Sate Kambing Batibul Bang Awi',
      city: 'Tegal',
      description: 'Sate kambing yang kenyal legit menjadi salah satu varian sate yang paling banyak diburu. Karena berasal dari kota Tegal, tak heran jika kebanyakan warung sate kambing menambahkan kata Tegal pada merek dagangnya.'

  ),

  Product(
      id: '2',
      title: 'Soto Babat',
      subTitle: 'Kerasa banget daging babatnya dan kuahnya lumer dimulut',
      imageProducts: 'https://i.pinimg.com/originals/8d/38/e3/8d38e30368438229f60339654c6d75c2.jpg',
      imageSeller: 'https://i.pinimg.com/564x/51/b3/5c/51b35c1d0fff0bb4b001d43ce756ec40.jpg',
      category: CategoryType.kuah,
      price: 'Rp 30.000,-',
      realPrice: 30000,
      rate: 73,
      storeName: 'SOTO BABAT PALAPATOTO',
      city: 'Tegal',
      description: 'Soto ini merupakan suatu dari semua jenis soto yang bahan utamanya merupakan babat sapi, selain rasanya yang lezat harganya pun ngga bikin kantong nangis'
  ),

  Product(
      id: '3',
      title: 'Nasi Lengko',
      subTitle: 'Nasi Lengko gurihh, maknyoss, sedepe poll',
      imageProducts: 'https://i.pinimg.com/564x/b1/ff/0b/b1ff0b849e452fce569ad197d7b11973.jpg',
      imageSeller: 'https://i.pinimg.com/236x/33/3e/ef/333eefe0494e95a85a3f2b02c858ca0c.jpg',
      category: CategoryType.kering,
      price: 'Rp 5.000,-',
      realPrice: 5000,
      rate: 73,
      storeName: 'ibu raswi',
      city: 'Tegal',
      description: 'Nasi Lengko adalah makanan legendaris dari tegal, cocok untuk kantong pelajar karena harganya yang sangat murah'
  ),

  Product(
      id: '4',
      title: 'Tahu Aci',
      subTitle: 'Tahu aci khas tegal benjaran asli',
      imageProducts: 'https://i.pinimg.com/564x/cc/57/11/cc5711776e608ea53f1c78b0253d3bcd.jpg',
      imageSeller: 'https://i.pinimg.com/564x/51/b3/5c/51b35c1d0fff0bb4b001d43ce756ec40.jpg',
      category: CategoryType.kering,
      price: 'Rp 10.000,-',
      realPrice: 10000,
      rate: 73,
      storeName: 'tahu mang jono',
      city: 'Tegal',
      description: 'Tahu aci adalah makanan ringan legendaris dari tegal yang dibuat dengan berbahan baku tahu dan aci.'
  ),

  Product(
      id: '5',
      title: 'Seblak Pantura',
      subTitle: 'Seblak pantura gurihh, pedasnya nampoll',
      imageProducts: 'https://i.pinimg.com/564x/3a/7e/d0/3a7ed016069e5742fde89c886e9fb79b.jpg',
      imageSeller: 'https://i.pinimg.com/564x/51/b3/5c/51b35c1d0fff0bb4b001d43ce756ec40.jpg',
      category: CategoryType.kuah,
      price: 'Rp 7.000,-',
      realPrice: 7000,
      rate: 73,
      storeName: 'seblak pantura official',
      city: 'Tegal',
      description: 'seblak gurih gurih maknyos terbuat dari telor dan mie yang berkualitas'
  ),

  Product(
      id: '6',
      title: 'Telor Asin',
      subTitle: 'Telor Asin lembut banget rasanya',
      imageProducts: 'https://i.pinimg.com/564x/04/89/34/048934f96523459bd51069e14c92c0fa.jpg',
      imageSeller: 'https://i.pinimg.com/564x/51/b3/5c/51b35c1d0fff0bb4b001d43ce756ec40.jpg',
      category: CategoryType.kering,
      price: 'Rp 4.000,-',
      realPrice: 4000,
      rate: 73,
      storeName: 'telor asin bogares',
      city: 'Tegal',
      description: 'Telor Asin terbuat dari telor bebek kemudian dibakar atau dipanggang untuk menjadi telor yang super enakk dan lezat.'
  ),

  Product(
      id: '7',
      title: 'Nasi Goreng',
      subTitle: 'Nasi goreng guapp, enak buanged pedesnya nuampol',
      imageProducts: 'https://i.pinimg.com/564x/21/c5/ac/21c5ac87bcf3c2c74e8adfbcfeb6b82d.jpg',
      imageSeller: 'https://i.pinimg.com/564x/51/b3/5c/51b35c1d0fff0bb4b001d43ce756ec40.jpg',
      category: CategoryType.kering,
      price: 'Rp 15.000,-',
      realPrice: 15000,
      rate: 73,
      storeName: 'nasgor guap',
      city: 'Tegal',
      description: 'Nasih goreng dengan penggorengan yang super dan nikmat dimulut pedesnya nuampoll banget.'
  ),

  Product(
      id: '8',
      title: 'Bakso Urat',
      subTitle: 'Bakso Urat dengan danging asli pilihan, cita rasa yang khas, pedesnya nuampoll',
      imageProducts: 'https://i.pinimg.com/564x/ad/a8/f8/ada8f842263018081d759815a69427c4.jpg',
      imageSeller: 'https://i.pinimg.com/564x/51/b3/5c/51b35c1d0fff0bb4b001d43ce756ec40.jpg',
      category: CategoryType.kuah,
      price: 'Rp 17.000,-',
      realPrice: 17000,
      rate: 73,
      storeName: 'Bakso Podomoro',
      city: 'Tegal',
      description: 'Bakso dengan harga nyaman dikantong tapi soal rasa tidak bisa dilawan, wuenake mantepp.'
  )
];
