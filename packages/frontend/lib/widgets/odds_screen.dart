import 'package:core_common/core_common.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:frontend/models/odds_status.dart';
import 'package:frontend/widgets/configuration_form_widget.dart';
import 'package:frontend/widgets/start_buttons_widget.dart';

import '../datasources/odds_api.dart';
import '../repositories/odds_repository.dart';
import 'result_widget.dart';

class OddsScreen extends StatefulWidget {
  OddsScreen({Key? key}) : super(key: key);

  final oddsRepository = OddsRepository(
    api: OddsApi(
      client: Dio(),
    ),
  );

  @override
  State<OddsScreen> createState() => _OddsScreenState();
}

class _OddsScreenState extends State<OddsScreen> {
  OddsStatus _status = None();
  Empire _empire = const Empire(
    countdown: 8,
    bountyHunters: [
      BountyHunter(planet: "Hoth", day: 6),
      BountyHunter(planet: "Hoth", day: 7),
      BountyHunter(planet: "Hoth", day: 8),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Millennium Challenge"),
        ),
        body: Center(
          child: switch (_status) {
            None() => StartButtonsWidget(
                onTapCompute: _getTheOdds,
                onTapConfiguration: () {
                  _showConfiguration(context);
                },
              ),
            Loading() => const CircularProgressIndicator(),
            Result(result: final result) => ResultWidget(
                odds: result,
                onTapCompute: _getTheOdds,
                onTapConfiguration: () {
                  _showConfiguration(context);
                },
              ),
            Error(message: final message) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _status = None();
                      });
                    },
                    child: const Text("Back"),
                  ),
                ],
              )
          },
        ),
      ),
    );
  }

  void _getTheOdds() async {
    setState(() {
      _status = Loading();
    });
    try {
      final result = await widget.oddsRepository.getOdds(_empire);
      setState(() {
        _status = Result(result);
      });
    } catch (e) {
      setState(() {
        _status = Error(e.toString());
      });
    }
  }

  void _showConfiguration(BuildContext context) async {
    showModalBottomSheet(
      isScrollControlled: true,
      elevation: 10,
      context: context,
      builder: (ctx) => DraggableScrollableSheet(
        minChildSize: 0.75,
        initialChildSize: 1,
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: ConfigurationFormWidget(
            initialEmpire: _empire,
            onSave: (newEmpire) {
              _closeConfiguration(context);
              setState(() {
                _empire = newEmpire;
              });
            },
            onCancel: () {
              _closeConfiguration(context);
            },
          ),
        ),
      ),
    );
  }

  void _closeConfiguration(BuildContext context) async {
    Navigator.pop(context);
  }
}
