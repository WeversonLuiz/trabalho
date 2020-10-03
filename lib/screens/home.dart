import 'package:flutter/material.dart';
import 'package:trabalho/screens/exercicio_01.dart';
import 'package:trabalho/screens/exercicio_02.dart';
import 'package:trabalho/screens/exercicio_03.dart';
import 'package:trabalho/screens/exercicio_04.dart';
import 'package:trabalho/screens/exercicio_05.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercícios"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 70.0,
                    child: RaisedButton(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0XFFCFD8DC),
                                Color(0XFF90A4AE),
                                Color(0XFF78909C),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Extremamente Básico - 1001",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Exercicio_01()));
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 70,
                    child: RaisedButton(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0XFFCFD8DC),
                                Color(0XFF90A4AE),
                                Color(0XFF78909C),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Salário com Bônus - 1009",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Exercicio_02()));
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 70,
                    child: RaisedButton(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0XFFCFD8DC),
                                Color(0XFF90A4AE),
                                Color(0XFF78909C),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Cédulas - 1018",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Exercicio_03()));
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 70,
                    child: RaisedButton(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0XFFCFD8DC),
                                Color(0XFF90A4AE),
                                Color(0XFF78909C),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Notas da Prova - 2344",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Exercicio_04()));
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 70,
                    child: RaisedButton(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0XFFCFD8DC),
                                Color(0XFF90A4AE),
                                Color(0XFF78909C),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "A Árvore de Natal - 3040",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Exercicio_05()));
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
