class Data {
  static List<Product> products = [
    Product(
        image: 'https://cdn.salla.sa/Aedxd/FU4D5KgCtf7LLUfFefLeVpCqshDlYRmEapMdjogR.jpg',
        name: '- Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray',
        price: '200 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/design/eSPIKpVma6Yo0WftvwwVEGpjnOGdupA3rCX63gG0.jpg?rand=0.9422407322490227?rand=0.7949860411290293?rand=0.7783700531809306?rand=0.8793837302711434',
        name: ' Vegetable seeds',
        price: '200 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/design/aIzm8Zi3euzRPfIvz6memq6BejFiNpgFwEeweRmQ.jpg?rand=0.9320803903145549?rand=0.27563371470465803?rand=0.42759597846688513?rand=0.01269328671803216',
        name: 'Fruit seeds',
        price: '270 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/design/n9fJqvWHqGpnibRBQNKdWcaAnknlz4nt1H6yqdQf.jpg?rand=0.9248438013437563?rand=0.369616655818401?rand=0.837021724824008?rand=0.24109499436775117',
        name: 'Flower seeds',
        price: '30 SAR'),
    Product(
        image:
            'https://cdn.salla.sa/Aedxd/design/mv1lfttRfUl1yfM9pNxsy58pPWJo172H0wclRFGj.jpg?rand=0.630504347325717?rand=0.5184868075117148?rand=0.3400214384546366?rand=0.46533691104156705',
        name: 'Herb seeds',
        price: '500 SAR'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/design/UTalx4QUZQ3gP0XJFlyRy3ngNNx5V3whaBT4K9IA.jpg?rand=0.3873118377580299',
        name: 'Garden tools',
        price: '1000 SAR')
  ];
  static List<Product> cart = [];
}

class Product {
  String image;
  String name;
  String price;
  Product({required this.image, required this.name, required this.price});
}
