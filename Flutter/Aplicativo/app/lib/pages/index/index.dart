import 'package:flutter/material.dart';
import 'package:rest_request/widgets/colors/AppColors.dart';
import 'package:rest_request/widgets/menu/drawerMenu.dart';


void main() => runApp(Index());

class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Index();
  }
}

class _Index extends State<Index> {
  // DROPDOWN DE VERBS HTTP // 
  
  static List verbsHTTP = ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'CONNECT', 'OPTIONS', 'TRACE'];
  String selectedHTTP = verbsHTTP[0];
  Color selectedHTTPColor = Color.fromRGBO(17, 94, 0, 1);
  List<DropdownMenuItem> verbsHTTPItems;
  
  // DROPDOWN DE VERBS HTTP //

  
  
  // DROPDOWN DE BODY CONTENT //
  
  static List bodyContent = ['application/json', 'application/xml'];
  String selectedContent = bodyContent[0];
  List<DropdownMenuItem> listBodyContent;
  
  // DROPDOWN DE BODY CONTENT //


  
  List<String> typesOfHeader = ['content-type'];
  List<String> valuesOfHeader = ['application/json'];



  // INITSTATE //
  @override
  initState() {
    super.initState();
    verbsHTTPItems = addVerbsInList();
    listBodyContent = addBodyContentInList();
  }
  // INITSTATE //



  // addBodyContentInList //
  //adiciona os verbos da lista string em uma lista de
  //DropDownMenuItem
   List<DropdownMenuItem<String>> addBodyContentInList(){
     
     //lista que será retornada ao executar o programa
     List<DropdownMenuItem<String>> bodyContents = new List();

    //foreach que irá percorrer a lista de verbos e adiciona - lo
    //na lista verbs
    for(String body in bodyContent){
      
      print(body+"\n");

      bodyContents.add(
        new DropdownMenuItem(
          value: body,
          child: 
          Padding(
            padding: EdgeInsets.all(5),
            child:
            Text(
              body,
            )
          ),
        )
      );
    }

    return bodyContents;
  }
  // addBodyContentInList //



  // addVerbsInList //
  //adiciona os verbos da lista string em uma lista de
  //DropDownMenuItem
   List<DropdownMenuItem<String>> addVerbsInList(){
     
     //lista que será retornada ao executar o programa
     List<DropdownMenuItem<String>> verbs = new List();

    //foreach que irá percorrer a lista de verbos e adiciona - lo
    //na lista verbs
    for(String verb in verbsHTTP){
      
      verbs.add(
        new DropdownMenuItem(
          value: verb,
          child: 
          Padding(
            padding: EdgeInsets.all(5),
            child:
            Text(
              verb,
            )
          ),
        )
      );
    }
    return verbs;
  }
  // addVerbsInList //




  // changedDropVerbItem //
  void changedDropVerbItem(String selectedVerb) {
    //altera o valor da variavel e altera na tela
    setState(() {
      selectedHTTP = selectedVerb;
    });
  }
  // changedDropVerbItem //

  
  // changedContentItem //
  void changedContentItem(String selectedBody) {
    //altera o valor da variavel e altera na tela
    setState(() {
      selectedContent = selectedBody;
    });
  }
  // changedDropVerbItem //



  // changedDropVerbItem //
  //função para alterar a cor de acordo com o verbo selecionado
  void changedColorItem(String selectedVerb) {
    Color color;

    switch(selectedVerb){
      case 'GET':
        color = Color.fromRGBO(17, 94, 0, 1);
        break;

      case 'POST':
        color = Color.fromRGBO(0, 5, 107, 1);
        break;

      case 'PUT':
        color = Color.fromRGBO(65, 0, 112, 1);
        break;

      case 'DELETE':
        color = Color.fromRGBO(112, 0, 15, 1);
        break;

      case 'PATCH':
        color = Color.fromRGBO(0, 112, 112, 1);
        break;

      case 'CONNECT':
        color = Color.fromRGBO(156, 83, 0, 1);
        break;

      case 'OPTIONS':
        color = Color.fromRGBO(120, 149, 106, 1);
        break;

      case 'TRACE':
        color = Color.fromRGBO(112, 0, 88, 1);
        break;
    }

    //altera o valor da variavel color e altera a cor na tela
    setState(() {
      selectedHTTPColor = color;
    });
  }
  // changedDropVerbItem //

 
  // BUILD //
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar:  AppBar(
            title: Text("Restzando"),
            elevation: 0.0,
          ),
          
          // INICIO BODY  //
    
          body:
          Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*1.7,
                  color: AppColors.primaryColor,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: MediaQuery.of(context).size.height*1.7,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width*0.09
                                ),

                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child:
                                    Text(
                                      "Insert URL:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.secondaryColor
                                      ),
                                    ),
                                ), 
                              ),




                              Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width*0.05
                              ),
                              child: 
                                TextField(
                                  autofocus: false,
                                  enabled: true,
                                  cursorColor: AppColors.secondaryColor,
                                  keyboardType: TextInputType.text,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: "Arial",
                                    fontSize: 20,
                                    color: AppColors.secondaryColor
                                  ),

                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColors.thirdColor,
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                      color: Colors.grey
                                    ),

                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent
                                        ),
                                      ),
                                  ),
                                ),
                              ),






                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width*0.09
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child:
                                    Text(
                                      "Method:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.secondaryColor
                                      ),
                                    ),
                                )
                              ),





                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width*0.05
                                ),
                                child:Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: selectedHTTPColor,
                                    borderRadius: BorderRadius.all(Radius.circular(3.0))
                                  ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        top: 0,
                                        bottom: 0,
                                        right: 10
                                      ),
                                      child:
                                      DropdownButtonFormField(
                                        isDense: false,
                                        iconSize: 35,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: AppColors.optionDropColor,
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none
                                        ),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.optionDropColor,
                                        ),
                                        value: selectedHTTP,
                                        items: verbsHTTPItems,
                                        onChanged: (selectedHTTP) {
                                          changedDropVerbItem(selectedHTTP);
                                          changedColorItem(selectedHTTP);
                                        }
                                    )
                                  ),
                                ),
                              ),




                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width*0.09
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child:
                                    Text(
                                      "Headers:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.secondaryColor
                                      ),
                                    ),
                                )
                              ),





                              Row(
                                children: <Widget>[
                                  Padding(
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width*0.05,
                                    ),
                                  child:
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.43,
                                        child: 
                                          TextField(
                                            autofocus: false,
                                            enabled: true,
                                            cursorColor: AppColors.secondaryColor,
                                            keyboardType: TextInputType.text,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontFamily: "Arial",
                                              fontSize: 20,
                                              color: AppColors.secondaryColor
                                            ),

                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: AppColors.thirdColor,
                                              contentPadding: EdgeInsets.all(10),
                                              hintStyle: TextStyle(
                                                color: Colors.grey
                                              ),

                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.transparent
                                                  ),
                                                ),
                                            ),
                                        ),
                                  ),
                                ),









                                Padding(
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width*0.05,
                                    left: MediaQuery.of(context).size.width*0.03,
                                    ),
                                  child:
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.43,
                                        child: 
                                          TextField(
                                            autofocus: false,
                                            enabled: true,
                                            cursorColor: AppColors.secondaryColor,
                                            keyboardType: TextInputType.text,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontFamily: "Arial",
                                              fontSize: 20,
                                              color: AppColors.secondaryColor
                                            ),

                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: AppColors.thirdColor,
                                              contentPadding: EdgeInsets.all(10),
                                              hintStyle: TextStyle(
                                                color: Colors.grey
                                              ),

                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.transparent
                                                  ),
                                                ),
                                            ),
                                        ),
                                  ),
                                ),
                              ],
                            ),




                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height*0.02,
                              ),
                              child:
                                Container(
                                  width: MediaQuery.of(context).size.width*0.9,
                                  height: MediaQuery.of(context).size.height*0.07,

                                  child: RaisedButton(
                                    hoverColor: selectedHTTPColor,
                                    color: selectedHTTPColor,
                                    highlightColor: selectedHTTPColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(
                                        color: Colors.transparent
                                      ),
                                    ),
                                    child: Text(
                                      "Add Header",
                                      style: TextStyle(
                                        color: AppColors.secondaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      )
                                    ), 
                                    onPressed: () {},
                                  ), 
                                ),
                            ),





                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height*0.02,
                              ),

                              child: Container(
                                width: MediaQuery.of(context).size.width*0.9,
                                height: MediaQuery.of(context).size.height*0.3,
                                decoration: BoxDecoration(
                                  color: AppColors.thirdColor,
                                  borderRadius: BorderRadius.all(Radius.circular(6))
                                ),

                                child:
                                Container(
                                  child:
                                    ListView.builder(
                                      itemCount: typesOfHeader.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top:  MediaQuery.of(context).size.height*0.03,
                                                left:  10,
                                                right: 10
                                              ),
                                              child:
                                                Container(
                                                  color: Colors.transparent,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        width: MediaQuery.of(context).size.width*0.4,
                                                        height: MediaQuery.of(context).size.height*0.03,

                                                        child: Center(
                                                          child:
                                                            Text(
                                                              typesOfHeader[index],
                                                              style: TextStyle(
                                                                color: AppColors.secondaryColor,
                                                                fontSize: 22,
                                                              )
                                                            ),
                                                        ),
                                                      ),



                                                      Container(
                                                        width: MediaQuery.of(context).size.width*0.4,
                                                        height: MediaQuery.of(context).size.height*0.03,

                                                        child: Center(
                                                          child: 
                                                          Text(
                                                            valuesOfHeader[index],
                                                            style: TextStyle(
                                                              color: AppColors.secondaryColor,
                                                              fontSize: 22,
                                                            )
                                                          )
                                                        )
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),

                                            Center(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: MediaQuery.of(context).size.height*0.001,
                                                ),
                                                child:
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.15,
                                                    height: MediaQuery.of(context).size.width*0.15,

                                                    child: RaisedButton(
                                                      elevation: 0,
                                                      hoverColor: Colors.transparent,
                                                      color: Colors.transparent,
                                                      highlightColor: Colors.transparent,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width),
                                                        side: BorderSide(
                                                          color: Colors.transparent
                                                        ),
                                                      ),
                                                      child: 
                                                      Icon(
                                                        Icons.cancel,
                                                        color: AppColors.secondaryColor,
                                                        size:23,
                                                      ),
                                                      onPressed: () {},
                                                    ), 
                                                  ),
                                              ),  
                                            )
                                          ]
                                        );
                                      }
                                    )
                                ),
                              ),
                            ),
                            





                            Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width*0.09
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child:
                                    Text(
                                      "Body:",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.secondaryColor
                                      ),
                                    ),
                                )
                              ),

                              Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width*0.05
                                ),
                                child:Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: selectedHTTPColor,
                                    borderRadius: BorderRadius.all(Radius.circular(3.0))
                                  ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        top: 0,
                                        bottom: 0,
                                        right: 10
                                      ),
                                      child:
                                      DropdownButtonFormField(
                                        isDense: false,
                                        iconSize: 35,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: AppColors.optionDropColor,
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none
                                        ),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.optionDropColor,
                                        ),
                                        value: selectedContent,
                                        items: listBodyContent,
                                        onChanged: (selectedContent) {
                                          changedContentItem(selectedContent);
                                        }
                                    )
                                  ),
                                ),
                              ),



                          Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width*0.05
                              ),
                              child:
                              Container(
                                height: MediaQuery.of(context).size.height*0.4,
                                child: 
                                TextFormField(
                                  initialValue:  """{

}""",
                                  maxLines: 40,
                                  autofocus: false,
                                  enabled: true,
                                  cursorColor: AppColors.secondaryColor,
                                  keyboardType: TextInputType.multiline,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: "Arial",
                                    fontSize: 20,
                                    color: AppColors.secondaryColor
                                  ),

                                  decoration: InputDecoration(
                                    isDense: true, 
                                    filled: true,
                                    fillColor: AppColors.thirdColor,
                                    contentPadding: EdgeInsets.all(20),
                                    hintStyle: TextStyle(
                                      color: Colors.grey
                                    ),

                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent
                                        ),
                                      ),
                                  ),
                                ),
                              )
                            ),


                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              


              // MENU FIXO //
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.73,
                ),
                child: Center( 
                  child: Row(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width*0.3,
                          right: MediaQuery.of(context).size.width*0.3,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height: MediaQuery.of(context).size.width*0.15,
                          decoration: BoxDecoration(
                            color: selectedHTTPColor,
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width))
                          ),
                          
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Send Request",
                              style: TextStyle(
                                color: AppColors.secondaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ) 
                        ),
                      ),
                    ],
                  ),
                ),
              )
            // MENU FIXO //
            
            ],
          ),

        //     MENU LATERAL     //
        drawer: new DrawerMenu().returnMenu(context)
        //     MENU LATERAL     //
      
      );
  }
}
