noteApp = angular.module('noteApp',[])

noteApp.controller('NotesCtrl', ['$scope', ($scope) ->
  $scope.notes = [{title: 'exercise', content: 'at east agile'}]

  $scope.currentNote = $scope.notes[0]

  $scope.new = ->
    $scope.currentNote = {title: 'Note title', content: 'Note content'}
    $scope.notes.push($scope.currentNote)

  $scope.select = (note) ->
    $scope.currentNote = note
])
