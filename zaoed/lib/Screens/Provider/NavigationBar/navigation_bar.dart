import 'package:zaoed/constants/imports.dart';
import 'package:zaoed/blocs/auth_bloc/page_bloc/pages_bloc.dart';
import 'package:zaoed/blocs/finder/user_bloc/user_bloc.dart';
import 'package:zaoed/blocs/finder/user_bloc/user_event.dart';

class NavigationBarScreen extends StatelessWidget {
  NavigationBarScreen({super.key});

  final List providerScreens = [
    const SavedBookmarksScreen(),
    const ChargingStatuesScreen(),
    const MapHomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    context.read<UserBloc>().add(GetUserDataEvent());
    return BlocBuilder<PagesBloc, PagesState>(
      builder: (context, state) {
        if (state is PagesNavigationState) {
          return Scaffold(
            extendBody: true,
            body: providerScreens[state.seleted],
            bottomNavigationBar: SizedBox(
              height: 64,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors().green,
                unselectedItemColor: AppColors().white,
                backgroundColor: Colors.transparent,
                currentIndex: state.seleted,
                onTap: (index) {
                  context.read<PagesBloc>().add(PageNavigationEvent(index));
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                      'lib/assets/icons/not_bookmarked.png',
                    )),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                      'lib/assets/icons/car.png',
                    )),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                      'lib/assets/icons/map.png',
                    )),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        'lib/assets/icons/person.png',
                      ),
                      size: 29,
                    ),
                    label: '',
                  ),
                ],
              ).asGlass(
                tintColor: Colors.transparent,
              ),
            ),
          );
        }
        return Scaffold(
          extendBody: true,
          body: providerScreens[2],
          bottomNavigationBar: SizedBox(
            height: 64,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors().green,
              unselectedItemColor: AppColors().white,
              backgroundColor: Colors.transparent,
              currentIndex: 2,
              onTap: (index) {
                context.read<PagesBloc>().add(PageNavigationEvent(index));
              },
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    'lib/assets/icons/not_bookmarked.png',
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    'lib/assets/icons/car.png',
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(
                    'lib/assets/icons/map.png',
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      'lib/assets/icons/person.png',
                    ),
                    size: 29,
                  ),
                  label: '',
                ),
              ],
            ).asGlass(
              tintColor: Colors.transparent,
            ),
          ),
        );
      },
    );
  }
}
