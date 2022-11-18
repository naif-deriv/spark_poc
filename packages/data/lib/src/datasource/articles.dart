import 'package:domain/domain.dart';

class ArticlesDataSource {
  static final List<Article> articles = [
    Article(
      id: 1,
      headerTitle: 'Deriv Cruise',
      headerImages: ['assets/article-1-header.png'],
      sections: [
        Section(
          title: 'Cruise Details',
          images: [],
          content: Lorems.lorem50,
        ),
        Section(
          title: 'Cruise Experience',
          images: ['assets/article-1-section-2.png'],
          content: Lorems.loremParagraph,
        ),
        Section(
          title: 'Cruise Details',
          images: [],
          content: Lorems.lorem50 + Lorems.lorem50 + Lorems.lorem50,
        ),
        Section(
          title: 'Cruise Experience',
          images: ['assets/article-1-section-4.png'],
          content: Lorems.loremParagraph,
        ),
      ],
      category: '',
    ),
    Article(
      id: 2,
      headerTitle: 'TEAMWORK! @ Deriv',
      headerImages: ['assets/article-2-header.png'],
      sections: [
        Section(
          title: 'Images from team-building',
          images: [],
          content: Lorems.lorem50,
        ),
        Section(
          title: 'We love our teams!',
          images: [],
          content: Lorems.loremParagraph,
        ),
        Section(
          title: 'Dubai HRBP\'s',
          images: ['assets/article-2-section-3.png'],
          content: Lorems.lorem50 + Lorems.lorem50 + Lorems.lorem50,
        ),
      ],
      category: '',
    ),
    Article(
      id: 3,
      headerTitle: 'Great Place To Work Achievments',
      headerImages: ['assets/article-3-header.png'],
      sections: [
        Section(
          title: 'What is \'GPTW\'?',
          images: [],
          content: Lorems.lorem50,
        ),
        Section(
          title: 'Just another achievment in our journey..',
          images: ['assets/article-3-section-2.png'],
          content: Lorems.loremParagraph,
        ),
      ],
      category: '',
    ),
    Article(
      id: 4,
      headerTitle: 'Besquare',
      headerImages: ['assets/article-4-header.png'],
      sections: [
        Section(
          title: 'The Besquare Programme',
          images: [],
          content: Lorems.lorem50,
        ),
        Section(
          title: 'Are you a new Graduate?',
          images: ['assets/article-4-section-2.png'],
          content: Lorems.loremParagraph,
        ),
        Section(
          title: 'We love experimentation',
          images: ['assets/article-4-section-3.png'],
          content: Lorems.lorem50 + Lorems.lorem50 + Lorems.lorem50,
        ),
      ],
      category: '',
    ),
    Article(
      id: 5,
      headerTitle: '',
      headerImages: ['assets/article-5-header.png'],
      sections: [
        Section(
          title: 'Masters of Data...',
          images: [],
          content: Lorems.lorem50 + Lorems.lorem50 + Lorems.lorem50,
        ),
      ],
      category: '',
    ),
  ];
}

class Lorems {
  static final String lorem10 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec.';
  static final String lorem50 =
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut enim vel diam 
      fringilla imperdiet. Proin rhoncus id urna ut tempor. Vestibulum efficitur, 
      felis quis sodales feugiat, urna urna tincidunt felis, elementum elementum neque 
      tellus eu felis. Ut at tristique enim. Duis nisi risus, molestie at condimentum 
      id, bibendum id.''';
  static final String loremParagraph = '''
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent 
      eget vehicula diam. Nulla egestas rhoncus malesuada. Donec ac massa ultrices, 
      dapibus diam quis, fringilla libero. Phasellus ac dictum turpis. Ut sodales 
      magna eu sapien tristique, id aliquet quam pharetra. Sed consectetur leo 
      vitae sapien ultrices, eu pellentesque dui interdum. Proin sapien mauris, 
      dictum vel eleifend at, mollis quis enim. Quisque imperdiet, erat 
      id tempus vestibulum, metus ante mollis dolor, sit amet ultricies turpis 
      quam ac mi. Suspendisse potenti. Nunc scelerisque urna massa, sit amet 
      ullamcorper ligula tristique vitae. Interdum et malesuada fames ac ante 
      ipsum primis in faucibus. Nulla tempor et elit a molestie. Quisque quam 
      leo, imperdiet vel scelerisque nec, lobortis nec dolor. In hac habitasse 
      platea dictumst. Integer tempor tellus a malesuada consequat.
      ''';
}
