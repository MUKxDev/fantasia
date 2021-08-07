import 'package:fantasia/app/core/custom_base_view_model.dart';
import 'package:fantasia/app/models/rule.dart';

class HomeViewModel extends CustomBaseViewModel {
  Future<void> init() async {}

  final List<Rule> _rules = <Rule>[
    Rule(
      text: 'points for each challenge/dare read from ANY GENRE',
      points: 10,
    ),
    Rule(
      text: 'points for each challenge/dare read from FANTASY GENRE',
      points: 20,
    ),
    Rule(
      text: 'points for any additional general/fantasy read',
      points: 5,
    ),
    Rule(
      text: 'points for any review written for any read book',
      points: 5,
    ),
    Rule(
      text: 'points for reading the selected book of the month',
      points: 20,
    ),
    Rule(
      text: 'points for each book read from the Admins Picks list',
      points: 30,
    ),
  ];

  List<Rule> get rules => _rules;
}
