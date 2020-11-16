import 'package:aplikasi_perbedaan_puasa/data_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Datapuasa;

  const DetailScreen({Key key, this.Datapuasa}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Datapuasa _datapuasa;
  double _screenwidth;

  @override
  void initState() {
    _datapuasa = widget.Datapuasa;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenwidth = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_datapuasa.title}'),
        backgroundColor: _datapuasa.materialColor,
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Hero(
              tag: 'background' + _datapuasa.title,
              child: Container(
                color: _datapuasa.materialColor,
              )),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            height: 230.0,
            child: Hero(
              tag: 'gambar' + _datapuasa.gambar,
              child: Image.network(_datapuasa.gambar, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 246.0,
            left: 16.0,
            child: Hero(
                tag: 'text' + _datapuasa.title,
                child: Material(
                  color: Colors.white,
                  child: Text(
                    _datapuasa.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Hero(
            tag: 'subtitle' + _datapuasa.title,
            child: Material(
              color: Colors.white,
              child: Text(_datapuasa.description),
            ),
          )
        ],
      )),
    );
  }
}
