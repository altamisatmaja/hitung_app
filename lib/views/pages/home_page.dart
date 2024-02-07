part of 'page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, stateHomePage) {
        stateHomePage as HomePageDataLoaded;

        return Scaffold(
            body: [
              const HomeComponent(),
              const HitungComponent(),
              const IpoComponent(),
              const ProfileComponent(),
            ][stateHomePage.selectedIndex],
            bottomNavigationBar: MyNavigationBar(
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              indicatorColor: base,
              destinations: List.generate(
                4,
                (index) => MyNavigationDestination(
                  icon: [
                    SvgPicture.asset('assets/icons/home-icon-unselected.svg'),
                    SvgPicture.asset(
                        'assets/icons/hitung-icon-unselected.svg'),
                    SvgPicture.asset('assets/icons/ipo-icon-unselected.svg'),
                    SvgPicture.asset(
                        'assets/icons/profile-icon-unselected.svg'),
                  ][index],
                  selectedIcon: [
                    SvgPicture.asset('assets/icons/home-icon-selected.svg'),
                    SvgPicture.asset('assets/icons/kalkulasi-icon-selected.svg'),
                    SvgPicture.asset('assets/icons/ipoo-icon-selected.svg'),
                    SvgPicture.asset('assets/icons/profil-icon-selected.svg'),
                  ][index],
                ),
              ),
              selectedIndex: stateHomePage.selectedIndex,
              onDestinationSelected: (index) => MyApp.homePageBloc
                  .add(SetHomePageSelectedIndex(index: index)),
            ));
      });
}
