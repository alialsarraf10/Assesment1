//class Item
class Item {
  String name;
  double price;

  Item(this.name, this.price);

  String displayItem(){
    return "$name - $price KD";
  }

 
}
//class item stock/inventory
class ItemStock{
  Item item;
  int stock;

  ItemStock(this.item, this.stock);

  String isInStock(){
    return "${item.displayItem()} inventory is $stock";
  }


  
}

//class vending machine and balance checker
class VendingMachine{
  List<ItemStock> items;
  double balance;

  VendingMachine(this.items, [this.balance = 0]);

  void displayItems(){

  }

  void addItem(Item item, int stock) {
    items.add(ItemStock(item, stock));
}


  void insertMoney(double money){
    balance = balance + money;
    print(balance);
}

  void selectItem(String itemName){
    
  }

  void dispenseItem(ItemStock ItemStock){//checks item stock before dispensing


  }
}







//main function
void main(){
  //items and prices and stock available
  Item kitkat = Item("Kit Kat", 0.75);
  ItemStock kitkatQuantity = ItemStock(kitkat, 5);
  print(kitkatQuantity.isInStock());

  Item proteinbar = Item("Protein Bar", 1.5);
  ItemStock proteinbarQuantity = ItemStock(proteinbar, 2);
  print(proteinbarQuantity.isInStock());

  Item lays = Item("lays Chips", 1);
  ItemStock laysQuantity = ItemStock(lays, 0);
  print(laysQuantity.isInStock());

  
  VendingMachine vendingM = VendingMachine([]);
  vendingM.addItem(kitkat, 6);


  vendingM.insertMoney(2);


 
}
