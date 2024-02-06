part of 'page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: base,
        body: SafeArea(
            child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Selamat datang di',
                    style: interSemiBold_20.copyWith(color: Colors.white),
                  ),
                  Text(
                    'Hitung',
                    style: montserratBold_64.copyWith(color: Colors.white),
                  ),
                  Image.asset('images/welcome-page.png'),
                  Text(
                    'Kalkulator investasi sekaligus teman investasi saham & cryptomu!',
                    style: interSemiBold_16.copyWith(color: Colors.white),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Yuk, mulai!'))
                ],
              ),
            ],
          ),
        )),
      );
}
