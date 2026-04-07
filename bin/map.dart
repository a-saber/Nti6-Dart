void main(){
  
  Map<int, String> x1 = 
  {
    1: "ahmed",
    2: "mohamed",
    3: "ali",
  };
  Map<int, String> x2 = 
  {
    4: "sayed",
    5: "hassan",
  };

  // x.addAll({4: "sayed", 5: "hassan"});
  x1.addEntries(x2.entries);
  print(x1);

  x1[10] = 'saber';
  print(x1[40]);
  print(x1);
  x1.remove(1);
  // x1[1] = null;
  print(x1);
  print(x1.containsKey(8));
  print(x1.containsValue( 'sayed'));

  x1.forEach((k, v){
    print('key: $k, value: $v');
    // x1[k] =v+2;
  });

}