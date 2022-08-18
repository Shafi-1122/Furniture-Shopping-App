import 'package:flutter/foundation.dart';

class ProdcutProvider extends ChangeNotifier{
  int currentIndex=0;
   List cartProduct=[];
   List cartPriceList=[];
     List<String> pricelist = ['\$43', "\$56", "\$70", "\$101", "\$130"];
   List<String> productdetailslist = ['Teak Sofa ', "Full Cover Sofa ", "Corner setty", "Tipus Cot", "Sandal wood Premium "];
    List<bool> addedStatus=List.filled(5, false);
    List<int> addedCount=List.filled(5,0);
  setCartList(context,index){
  cartProduct.add(productdetailslist[index]);
   cartPriceList.add(pricelist[index]);
  notifyListeners();
  }
  setStatus(context,index){
   addedStatus[index]=!addedStatus[index];
   
   notifyListeners();
  }
  addedCountIncrement(context,index){
     addedCount[index]++;
   notifyListeners();
  }
  removeItemFromList(context,index){
    addedCount[productdetailslist.indexOf(cartProduct[index])]--;
     if( addedCount[productdetailslist.indexOf(cartProduct[index])]==0){
      addedCount[index]=0;
      addedStatus[productdetailslist.indexOf(cartProduct[index])]=!addedStatus[productdetailslist.indexOf(cartProduct[index])];
    }
    cartProduct.removeAt(index);
    cartPriceList.removeAt(index);
    // addedCount[productdetailslist.indexOf(cartProduct[index])]--;
   
    notifyListeners();
  }
  }