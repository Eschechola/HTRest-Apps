import 'package:flutter/material.dart';
import 'package:rest_request/widgets/colors/AppColors.dart';

class DrawerMenu{
    Theme returnMenu(BuildContext context){
        var menu =
        Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColors.primaryColor, //This will change the drawer background to blue.
          ), 
          child:
            Drawer(
              child: Column(
                children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child:
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height* 0.05,
                              ),
                              child:
                              Text(
                                "HTRest",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: 20
                                ),
                              ),
                            )
                          ],
                        ), 
                      ),
                    ),
                ),

                ListTile(
                  title: Text(
                    "Menu 1",
                    style: TextStyle(
                      color: AppColors.secondaryColor
                    ),
                  ),

                  leading: Icon(
                    Icons.assignment,
                    color: AppColors.secondaryColor,
                  ),
                ),


                ListTile(
                  title: Text(
                    "Menu 1",
                    style: TextStyle(
                      color: AppColors.secondaryColor
                    ),
                  ),

                  leading: Icon(
                    Icons.assignment,
                    color: AppColors.secondaryColor,
                  ),
                ),


                ListTile(
                  title: Text(
                    "Menu 1",
                    style: TextStyle(
                      color: AppColors.secondaryColor
                    ),
                  ),

                  leading: Icon(
                    Icons.assignment,
                    color: AppColors.secondaryColor,
                  ),
                ),


                ListTile(
                  title: Text(
                    "Menu 1",
                    style: TextStyle(
                      color: AppColors.secondaryColor
                    ),
                  ),

                  leading: Icon(
                    Icons.assignment,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        );  


      return menu;
    }
}