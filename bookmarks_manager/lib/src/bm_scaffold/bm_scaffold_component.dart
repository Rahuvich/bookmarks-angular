import 'package:angular/angular.dart';

@Component(
  selector: 'bm-scaffold',
  templateUrl: 'bm_scaffold_component.html',
  directives: [coreDirectives]
)

class BookmarkScaffoldComponent {

  final List bookmarks = [
    {
      'title' : "Visit my Github",
      'description' : "Let's take a look at my work!",
      'url':'https://github.com/Rahuvich'
    },
    {
      'title' : "Visit my twitter",
      'description' : "Follow me!",
      'url':'https://twitter.com/raulmateob'
    },
    {
      'title' : "Visit my Facebook",
      'description' : "Take a look at my lastest posts",
      'url':'https://twitter.com/raulmateob'
    }
  ];

  removeBookmark(int i){
    bookmarks.removeAt(i);
  }

}