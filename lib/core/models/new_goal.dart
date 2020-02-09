import 'package:baloo/core/models/focus.dart';
import 'package:baloo/core/models/goal_impact.dart';


// TODO mjf
//   remove all references to previous goal and update this to Goal
class NewGoal {
  final String _id;
  final String _imperativeMessage;
  final String _description;
  final String _zipcode;
  final String _type;
  final DateTime _createdAt;
  List<Focus> _focuses;
  List<GoalImpact> _impacts;


  NewGoal(
    String id,
    String imperativeMessage,
    String description,
    String zipcode,
    String type,
    DateTime createdAt,
    List<Focus> focuses,
    List<GoalImpact> impacts,
  ) :
    _id = id,
    _imperativeMessage = imperativeMessage,
    _description = description,
    _zipcode = zipcode,
    _type = type,
    _createdAt = createdAt,
    _focuses = focuses,
    _impacts = impacts;


  // JSON STRUCTURE MATCHES GRAPHQL IN GOAL QUERY FILE
  static NewGoal fromJSON(Map<String, dynamic> json) {

  }
}
