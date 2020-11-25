class Model{
  int id;
  String url;
  String title; 

  // Model(this.id, this.url, this.title);
  Model(Map<String, dynamic>parsejson)
  :
    id=parsejson['id'],
    url=parsejson['url'],
    title=parsejson['title'];
  
  //   Model.fromjson(Map<String, dynamic>parsejson)
  // :
  //   id=parsejson['id'],
  //   url=parsejson['url'],
  //   title=parsejson['title'];
  
}