import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastry_app/core/Data.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_states.dart';
import 'package:pastry_app/features/Delivery/presentation/views/delivery_view_body.dart';
import 'package:pastry_app/features/Favourite/presentation/views/favourite_view_body.dart';
import 'package:pastry_app/features/Home/presentation/view_model/offer_model.dart';
import 'package:pastry_app/features/Home/presentation/view_model/product_model.dart';
import 'package:pastry_app/features/Home/presentation/views/home_view_body.dart';
import 'package:pastry_app/features/Impressum/presentation/views/impressum_view_body.dart';

class PastryCubit extends Cubit<PastryStates> {
  PastryCubit() : super(AppInitialState());
  static PastryCubit get(context) => BlocProvider.of(context);

  // int currentBottomBarIndex = 0;
  int currentMenuIndex = 0;
  int currentDrawerIndex = 0;
  int currentSelectedCategoriesSwitchIndex = 0;
  int currentSelectedBottomBarSwitchIndex = 0;
  String currentMenuText = Data.menuData[0];
  bool isNotificationOn = false;

  List<OfferModel> offerModelsList = [];
  List<ProductModel> cate_1_productModelsList = [];
  List<ProductModel> cate_2_productModelsList = [];
  List<ProductModel> cate_3_productModelsList = [];
  List<ProductModel> cate_4_productModelsList = [];
  List<ProductModel> cate_5_productModelsList = [];
  List<List<ProductModel>> productModelsList = [];
  List<Widget> viewsBodyList = [
    const HomeViewBody(),
    const FavouriteViewBody(),
    const ImpressumViewBody(),
    const DeliveryViewBody(),
    const ImpressumViewBody(),
  ];

  void changeCurrentMenuText(String forward) {
    if (forward == "forward" && currentMenuIndex < 3) {
      currentMenuIndex++;
      currentMenuText = Data.menuData[currentMenuIndex];
      emit(AppChangeCurrentMenuTextState());
    } else {
      if (forward == "back" && currentMenuIndex > 0) {
        currentMenuIndex--;
        currentMenuText = Data.menuData[currentMenuIndex];
        emit(AppChangeCurrentMenuTextState());
      }
    }
  }

  void changeCurrentDrawerIndex(int index) {
    currentDrawerIndex = index;
    emit(AppChangeCurrentDrawerIndexState());
  }

  void toggleCategoriesSwithcIndex(int index) {
    currentSelectedCategoriesSwitchIndex = index;
    emit(AppToggleCategoriesSwithcIndexState());
  }

  void toggleBottomBarSwithcIndex(int index) {
    currentSelectedBottomBarSwitchIndex = index;
    emit(AppToggleBottomBarSwithcIndexState());
  }
  // void changeCurrentBottomBarIndex(int index) {
  //   currentBottomBarIndex = index;
  //   emit(AppChangeCurrentBottomBarIndexState());
  // }

  void changeNotificationButtonState() {
    isNotificationOn = !isNotificationOn;
    emit(AppChangeNotificationButtonState());
  }

  void getOfferModelsData() {
    for (var element in Data.offersData) {
      offerModelsList.add(OfferModel.fromJson(element));
    }
    emit(AppGetOfferModelsDataState());
  }

  void getCategoriesProductModelsData() {
    for (var element in Data.cate_1_List) {
      cate_1_productModelsList.add(ProductModel.fromJson(element));
    }
    for (var element in Data.cate_2_List) {
      cate_2_productModelsList.add(ProductModel.fromJson(element));
    }
    for (var element in Data.cate_3_List) {
      cate_3_productModelsList.add(ProductModel.fromJson(element));
    }
    for (var element in Data.cate_4_List) {
      cate_4_productModelsList.add(ProductModel.fromJson(element));
    }
    for (var element in Data.cate_5_List) {
      cate_5_productModelsList.add(ProductModel.fromJson(element));
    }
    productModelsList = [
      cate_1_productModelsList,
      cate_2_productModelsList,
      cate_3_productModelsList,
      cate_4_productModelsList,
      cate_5_productModelsList,
    ];
    emit(AppGetCategoriesProductModelsDataState());
  }

  double calProductHeight(int index, BuildContext context) {
    List<double> values = [
      deviceHeight(context) * 0.28,
      deviceHeight(context) * 0.35
    ];
    int groupIndex = (index ~/ 2); // determines the group index
    int itemIndex = (index % 2); // determines the item index within the group

    if (groupIndex % 2 == 0) {
      // alternate between the two height values for even-indexed groups
      return values[itemIndex];
    } else {
      // alternate between the two height values for odd-indexed groups
      return values[(itemIndex + 1) % 2];
    }
  }
}
