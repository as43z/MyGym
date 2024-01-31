// FIXME: Is this really necessary? Maybe investigate making our own datetimerange
import "package:flutter/material.dart";

/// An exercise session
///
/// This ExerciseSession is defined by:
/// DateTime date -- date that this exercise session was conducted
/// DateTimeRange time -- how long did it take.
/// List<String> classifiers -- tags relating which type of exercise was conducted.
/// String nameOfSession -- name of the session.
class ExerciseSession {

    late DateTime date;

    late DateTimeRange time;

    // FIXME: Again, is this really necessary for this stage? It shouldn't draw
    // to much cycles from the progam.
    // 
    // Another point should be that this could be an enum of strings
    late List<String> classifiers;

    late String nameOfSession;

    ExerciseSession(this.date, this.time, this.nameOfSession) {
        // Left ignored
    }
}
