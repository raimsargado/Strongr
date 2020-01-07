import 'package:strongr/exercise/data/exercise_dao.dart';
import 'package:strongr/exercise/data/exercise_repo_api.dart';
import 'package:strongr/exercise/models/exercise.dart';
import 'package:strongr/workset/models/workset.dart';

class ExerciseRepo extends ExerciseRepoApi {
  var dao = ExerciseDao();

  @override
  Future addExercise(Exercise exercise) async {
    await dao.addExercise(exercise);
  }

  @override
  Future<dynamic> deleteExercise(Exercise exercise) {
    return dao.deleteExercise(exercise);
  }

  @override
  // TODO: implement exercise
  Exercise get exercise => null;

  @override
  // TODO: implement exercises
  List<Exercise> get exercises => null;

  @override
  void updateExercise(Exercise exercise) {
    // TODO: implement updateExercise
  }

  @override
  Future<List<Exercise>> getExercises(String workoutName) async {
    var exercises = await dao.getExercises(workoutName);
    return exercises;
  }

  @override
  Future searchExercise(Exercise exercise) async {
    return await dao.hasExercise(exercise);
  }

  @override
  Future<Exercise> addWorkSet(exercise) async {
    return await dao.addWorkSet(exercise);
  }

  @override
  Future<Exercise> getExercise(exercise) async {
    return await dao.getExercise(exercise);
  }

  @override
  List<WorkSet> getWorkSets(Exercise exercise) {
    return exercise.workSets;
  }
}
