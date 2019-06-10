import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import '../model/bookmark.dart';

@Component(
  selector: 'bm-scaffold',
  templateUrl: 'bm_scaffold_component.html',
  directives: [coreDirectives, formDirectives]
)

class BookmarkScaffoldComponent {

  final List bookmarks = [
    Bookmark(
      title: 'Visit my Github',
      description: "Let's take a look at my work!",
      url: 'https://github.com/Rahuvich',
      edit: false
    ),
    Bookmark(
      title: "Visit my twitter",
      description: "Follow me!",
      url: 'https://twitter.com/raulmateob',
      edit: false
    ),
    Bookmark(
      title: "Visit my Facebook",
      description: "Take a look at my lastest posts",
      url: 'https://twitter.com/raulmateob',
      edit: false
    )
  ];

  Bookmark editedBookmark;

  addBookmark(){
    var bm = Bookmark();
    bookmarks.add(bm);
    editedBookmark = Bookmark(
      title: bm.title,
      description: bm.description,
      url: bm.url
    );
  }

  removeBookmark(int i){
    bookmarks.removeAt(i);
  }

  editBookmark(int i){
    editedBookmark = Bookmark(
      title: bookmarks[i].title, 
      description: bookmarks[i].description,
      url: bookmarks[i].url,
      edit: bookmarks[i].edit
    );
    bookmarks[i].edit = true;
  }
  
  updateBookmark(int i){
    bookmarks[i] = Bookmark(
      title: editedBookmark.title, 
      description: editedBookmark.description,
      url: editedBookmark.url,
      edit: false
    );
  }

}