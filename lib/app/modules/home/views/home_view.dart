import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 80,
                              vertical: 80,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Poin Festival Lucky Draw 2022",
                                  style: TextStyle(
                                    fontSize: 58,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    "Tukar Telkomsel Poin sebelum hangus dengan \nkesempatan memenangkan mobil, motor, \nsmartphone, dan masih banyak hadiah menarik \nlainnya!"),
                                const SizedBox(
                                  height: 40,
                                ),
                                InkWell(
                                  hoverColor: Colors.transparent,
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(42),
                                    child: const Material(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 50,
                                          vertical: 18,
                                        ),
                                        child: Text(
                                          "Tukar Sekarang",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Placeholder(
                            fallbackHeight: 590,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                    child: Dot(),
                  ),
                  const Text(
                    "Yang bisa dilakukan di Telkomsel.com",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(child: button1("Isi ulang pulsa")),
                      SizedBox(
                        height: 124,
                        child: VerticalDivider(
                          color: Colors.grey.shade400,
                          thickness: 1.5,
                        ),
                      ),
                      Expanded(child: button1("Beli Paket")),
                      SizedBox(
                        height: 124,
                        child: VerticalDivider(
                          color: Colors.grey.shade400,
                          thickness: 1.5,
                        ),
                      ),
                      Expanded(child: button1("Belanja")),
                      SizedBox(
                        height: 124,
                        child: VerticalDivider(
                          color: Colors.grey.shade400,
                          thickness: 1.5,
                        ),
                      ),
                      Expanded(child: button1("Undi-Undi Hepi")),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  content(
                    "Telkomsel PraBayar",
                    "Satu produk, beragam pilihan paket",
                    "Menawarkan pilihan paket yang dapat disesuaikan untuk \ngaya hidup digital dengan mudah, fleksibel, dan tanpa \nbatasan.",
                  ),
                  const SizedBox(
                    height: 62,
                  ),
                  content(
                    "Telkomsel Halo",
                    "Katakan Halo pada layanan serba mudah",
                    "Nikmati berbagai kemudahan yang didesain khusus untuk \nAnda mulai dari pilih paket, atur tagihan, hingga \npembayaran.",
                    false,
                  ),
                  const SizedBox(
                    height: 62,
                  ),
                  content(
                    "by.U",
                    "Bebas Internetan #SemuanyaSemaunya",
                    "Pake by.U kartu internet serba digital dengan Sinyal Nomor 1 \nTelkomsel. Bebas bikin paket internet dan nomor HP loh!",
                    // false,
                  ),
                  const SizedBox(
                    height: 62,
                  ),
                  content(
                    null,
                    "Lebih untung dengan MyTelkomsel",
                    "Cek kuota, beli paket, tukar Telkomsel Poin, \nhingga dapat bonus dan promo semua ada \ndalam genggaman Anda.",
                    false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget content(
    String? headerTitle,
    String title,
    String subTitle, [
    bool isImageRight = true
  ]) {
    return Row(
      children: [
        if (isImageRight)
          const Expanded(
            flex: 5,
            child: Placeholder(
              fallbackHeight: 440,
            ),
          ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.only(
              top: 80,
              bottom: 80,
              left: isImageRight ? 125 : 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (headerTitle != null)
                  Text(
                    headerTitle,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(42),
                    child: const Material(
                      color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 18,
                        ),
                        child: Text(
                          "Selengkapnya",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isImageRight != true)
          const Expanded(
            flex: 5,
            child: Placeholder(
              fallbackHeight: 440,
            ),
          )
      ],
    );
  }

  Obx button1(String title) {
    final isHover = false.obs;
    return Obx(
      () {
        return InkWell(
          // splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {},
          onHover: (value) {
            isHover.value = value;
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 160,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      child: const Placeholder(),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        color: isHover.value ? Colors.redAccent : Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                if (isHover.value)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 3,
                      color: Colors.redAccent,
                      // margin: const EdgeInsets.only(top: 47),
                      width: double.infinity,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_ios_new,
          size: 20,
          color: Colors.grey.shade400,
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          height: 18,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.red,
            size: 20,
          ),
        )
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey.shade200,
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
                child: Placeholder(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    button1('PERSONAL', true),
                    button1(
                      'ENTERPRISE',
                    ),
                    button1(
                      'TENTANG KAMI',
                    ),
                    // TENTANG KAMI
                    const Spacer(),
                    button2("MYTELKOMSEL"),
                    button2("TEMUKAN KAMI"),
                    button3("ID", true),
                    button3("EN"),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 140,
                    height: 40,
                    child: Placeholder(),
                  ),
                  const Spacer(),
                  button4("GraPARI Online"),
                  const SizedBox(
                    width: 20,
                  ),
                  button4("Produk"),
                  const SizedBox(
                    width: 20,
                  ),
                  button4("Layanan Digital"),
                  const SizedBox(
                    width: 20,
                  ),
                  button4("Jelajah"),
                  const SizedBox(
                    width: 20,
                  ),
                  button4("Bantuan", false),
                  const SizedBox(
                    width: 20,
                  ),
                  ClipOval(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      color: Colors.grey.shade200,
                      child: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(42),
                      child: const Material(
                        color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 18,
                          ),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Obx button4(String title, [bool useIcon = true]) {
    final isHover = false.obs;
    return Obx(
      () {
        return InkWell(
          // splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {},
          onHover: (value) {
            isHover.value = value;
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    color: isHover.value ? Colors.redAccent : Colors.black,
                    decoration: isHover.value ? TextDecoration.underline : null,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                if (useIcon)
                  const RotatedBox(
                    quarterTurns: -1,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }

  Obx button1(String title, [bool isBool = false]) {
    final isHover = false.obs;
    return Obx(
      () {
        return InkWell(
          // splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {},
          onHover: (value) {
            isHover.value = value;
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: isHover.value ? Colors.redAccent : Colors.black,
                    decoration: isHover.value ? TextDecoration.underline : null,
                    fontWeight: isBool ? FontWeight.w600 : FontWeight.w100,
                  ),
                ),
                if (isBool)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 2,
                      color: Colors.redAccent,
                      margin: const EdgeInsets.only(top: 47),
                      width: 70,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  InkWell button2(
    String title,
  ) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }

  InkWell button3(String title, [bool isBool = false]) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          children: [
            const ClipOval(
              child: SizedBox(
                height: 20,
                width: 20,
                child: Placeholder(),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: isBool ? FontWeight.w900 : FontWeight.w100,
                  ),
                ),
                if (isBool)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 1,
                      color: Colors.redAccent,
                      margin: const EdgeInsets.only(top: 47),
                      width: 12,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
