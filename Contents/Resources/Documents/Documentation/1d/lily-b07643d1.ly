%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 275
SopranoTwoVoicesPerStaff = ##t
Time = { s1 \break s1 \break }
WomenMusic = \relative { a'4 a a a }
WomenLyrics = \lyricmode { Wo -- men ly -- rics }
SopranoMusic = \relative { s1 | c''4 c c c8 c }
SopranoLyrics = \lyricmode{ So -- pra -- no ly -- rics }
AltoMusic = \relative { s1 | g'4 g g g }
AltoLyrics = \lyricmode { Al -- to ly -- rics }
SopranoOneMusic = \relative { s1 | s1 |e''4 e e e }
SopranoOneLyrics = \lyricmode { Sop One ly -- rics }
SopranoTwoMusic = \relative { s1 | s1 | c''4 c c c }
SopranoTwoLyrics = \lyricmode { Sop Two ly -- rics }
AltoOneMusic = \relative { s1 | s1 | g'4 g g g8 g }
AltoOneLyrics = \lyricmode { Al -- to One ly -- rics }
AltoTwoMusic = \relative { s1 | s1 | e'4 e e e8 e }
AltoTwoLyrics = \lyricmode { Al -- to Two ly -- rics }
\layout { ragged-right = ##t }
\include "ssaattbb.ly"



% ****************************************************************
% end ly snippet
% ****************************************************************
