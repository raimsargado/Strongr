import 'package:push/exercise/models/exercise.dart';
import 'package:push/workout/models/workout.dart';
import 'package:push/workset/models/workset.dart';

abstract class ExerciseBlocApi {
  void initExercises(Workout workout);

  void addWorkSet(Exercise exercise, Workout workout);

  Stream<dynamic> get valOutput;

  Stream<dynamic> get valOutputWithoutRefresh;

  void updateWorkSet(Exercise exercise, WorkSet newWorkSet, Workout workout);

  void deleteWorkSet(
      Exercise exercise, WorkSet workSetToRemove, Workout workout);

  void deleteExercise(any, workout);

  void saveAllProgress(Workout workout);

  void createExercise(any, workout);

  void updateExercise(dynamic any, Workout workout);

  Future<bool> searchExercise(exerciseName);

  void reorder(int oldIndex, int newIndex, Workout workout);
}
