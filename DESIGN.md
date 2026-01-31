# Design

### MIT Opencourseware materials

For now, all of the archive will be placed in `dist` for static site hosting locally but only the exams and problem set pdf have been source controlled to github.

In order to faciliate redirects in the github context, the repo name `scholastic` will be prefixed in the links

In `$PREFIX/resources/lecture-*/` we find an `index.html` and  `data.json`

```bash
cd $PREFIX/resources/lecture-3-multiplication-and-inverse-matrices/
cat data.json
```
```json
{
  "title": "Lecture 3: Multiplication and inverse matrices",
  "description": "",
  "file": null,
  "learning_resource_types": [
    "Lecture Videos"
  ],
  "resource_type": "Video",
  "file_type": null,
  "youtube_key": "FX4C-JpTFgY",
  "captions_file": "/courses/18-06-linear-algebra-spring-2010/7460c549d93a598f9daaba421a2ed583_FX4C-JpTFgY.vtt",
  "transcript_file": "/courses/18-06-linear-algebra-spring-2010/07f82f7a07458fb3d79d1ba5cf53fa1e_FX4C-JpTFgY.pdf",
  "thumbnail_file": "https://img.youtube.com/vi/FX4C-JpTFgY/default.jpg",
  "archive_url": "http://www.archive.org/download/MIT18.06S05_MP4/03.mp4"
}
```

The videos appear to be hosted on an arhive website. The first static site redesign will be done by hand, but when automation is used end to end, it will be necessary to verify whether or not this json structure can be expected for all ocw zip files or not. If they do not share a common topology then automata based strategies are doomed.

Regarding the materials gathered thus far, the file locations for captions and transcript are accurate only after the final slash, and are to be appended as a suffix to the filepath `$PREFIX/static_resources/`

For problem sets, one finds `$PRFIX/resources/mit18_06s10_pset*`
```bash
rich archive/resources/mit18_06s10_pset1_s10_soln/data.json 
```
```json
{
  "title": "Problem Set 1 Solutions",
  "description": "This resource contains information related to trigonometry formulas.",
  "file": 
"/courses/18-06-linear-algebra-spring-2010/22297c2a6dcf06d82e93ee4af115e91a_MIT18_06S10_pset1_s10
_soln.pdf",
  "learning_resource_types": [
    "Problem Sets",
    "Problem Set Solutions"
  ],
  "resource_type": "Document",
  "file_type": "application/pdf"
}
```

The file location is correct only after the final slash as a suffix for `$PREFIX/static_resources`

For exams, we find `$PREFIX/resources/mit18_06s10_exam*`

```bash
cd archive/resources/mit18_06s10_exam1_s10
cat data.json 
```

```json
{
  "title": "Exam 1",
  "description": "Quiz on linear algebra.",
  "file": "/courses/18-06-linear-algebra-spring-2010/e9bbec7a9a25a87715e8edd75e21d7b9_MIT18_06S10_exam1_s10.pdf",
  "learning_resource_types": [
    "Exams"
  ],
  "resource_type": "Document",
  "file_type": "application/pdf"
}
```

The very bare beginnings could be an index file with a table with links to the resource files.

Later, adding user accounts for uploading and pooling lecture notes with a backlog of typst/latex conversions on another page would be interesting for community or class engagement.

Maybe to start, the transcript can be used in place of lecture notes?

### Styling
* tailwindcss standalone (no nodejs)
* tailwindcss in `lib.typ` files
* tailwindcss should never be in high level typ file directly
    * only imported functions should expose tailwindcss to wiki
* tailwindcss also in `test_styles.css`
    * whole document level `@apply` goes here

### Links

* pages are hyperlinked together expecting a set filestructure

### Math

* Math blocks in pdf seem to work inline
* Math blocks in html currently do not display inline
* Math font not found in container 
