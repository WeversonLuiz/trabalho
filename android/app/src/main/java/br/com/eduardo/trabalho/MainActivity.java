package br.com.weverson.trabalho;

import io.flutter.embedding.android.FlutterActivity;

import android.util.Log;

import androidx.annotation.NonNull;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {

    private static final String CHANNEL = "channel";

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            switch (call.method) {
                                case "_exercicio01":
                                    int valor1 = Integer.parseInt(call.argument("valor1"));
                                    int valor2 = Integer.parseInt(call.argument("valor2"));

                                    int valor = (valor1 + valor2);
                                    result.success(valor);
                                    break;
                                case "_exercicio02":
                                    String nome = call.argument("nome");
                                    double salario = call.argument("salario");
                                    double venda = call.argument("venda");

                                    double comissao = venda * 0.15;
                                    double total = salario + comissao;
                                    result.success(total);
                                    break;
                                case "_exercicio03":
                                    Map<String, List> params = (Map<String, List>)call.arguments;
                                    List notas = (ArrayList) params.get("from");

                                    for (int i = 0; i < notas.size(); i++){
                                        notas.set(i, Integer.parseInt(notas.get(i).toString()) * 10);
                                    }

                                    //System.out.println(notas);

                                    
                                    // int cem, cinquenta, vinte, dez, cinco, dois, um, troco;

                                    // List<Integer> notas = new ArrayList<Integer>();
                                    
                                    // troco = dinheiro;

		                            // cem = troco / 100;
                                    // troco = troco - (cem * 100);
                                    // notas.add(troco);

                                    // cinquenta = troco / 50;
                                    // troco = troco - (cinquenta * 50);
                                    // notas.add(troco);

                                    // vinte = troco / 20;
                                    // troco = troco - (vinte * 20);
                                    // notas.add(troco);

                                    // dez = troco / 10;
                                    // troco = troco - (dez * 10);
                                    // notas.add(troco);

                                    // cinco = troco / 5;
                                    // troco = troco - (cinco * 5);
                                    // notas.add(troco);

                                    // dois = troco / 2;
                                    // troco = troco - (dois * 2);
                                    // notas.add(troco);
                                    
                                    result.success(notas);
                                    break;
                                case "_exercicio04":
                                    Integer conceito = Integer.parseInt(call.argument("conceito").toString());

                                    String conceitoFinal = "";

                                    if (conceito == 0) {
                                        conceitoFinal = "E";
                                    }
                                    if (conceito >= 1 && conceito <= 35) {
                                        conceitoFinal = "D";
                                    }
                                    if (conceito >= 36 && conceito <= 60) {
                                        conceitoFinal = "C";
                                    }
                                    if (conceito >= 61 && conceito <= 85) {
                                        conceitoFinal = "B";
                                    }
                                    if (conceito >= 86 && conceito <= 100) {
                                        conceitoFinal = "A";
                                    }
                                    result.success(conceitoFinal);
                                    
                                    break;       
                                    case "_exercicio05":
                                        // Map<String, List> params = (Map<String, List>)call.arguments;
                                        // List list = (ArrayList) params.get("from");
                                        
                                        // int valor1 = Integer.parseInt(call.argument("quantTeste"));
                                        // int valor2 = Integer.parseInt(call.argument("altura"));
                                        // int valor1 = Integer.parseInt(call.argument("largura"));
                                        // int valor2 = Integer.parseInt(call.argument("galho"));


                                        // for (int i = 0; i < list.size(); i++){
                                        //     list.set(i, Integer.parseInt(list.get(i).toString()) * 10);
                                        // }
                                   
                                    //result.success();
                                    break;
                                default:
                                    result.notImplemented();

                            }
                        }
                );

    }
    
}
