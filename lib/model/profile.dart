class Profile{
  String? name;
  String? image;
  bool? like;
  
  Profile({required this.name, this.image , this.like});

  @override 
  String toString(){
    return "Name: $name / Image : $image / Like: $like \n";
  }
}