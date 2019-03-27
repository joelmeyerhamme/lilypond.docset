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
\sourcefileline 2202
%c No verbatim here as the code does not display correctly in PDF
% Font settings for Cyrillic and Hebrew
% Linux Libertine fonts contain Cyrillic and Hebrew glyphs.
\paper {
  #(define fonts
    (set-global-fonts
     #:roman "Linux Libertine O,serif"
     #:sans "Linux Biolinum O,sans-serif"
     #:typewriter "Linux Libertine Mono O,monospace"
   ))
}

% Cyrillic
bulgarian = \lyricmode {
  Жълтата дюля беше щастлива, че пухът, който цъфна, замръзна като гьон.
}

% Hebrew
hebrew = \lyricmode {
  זה כיף סתם לשמוע איך תנצח קרפד עץ טוב בגן.
}

% Portuguese
portuguese = \lyricmode {
  à vo -- cê uma can -- ção legal
}

\relative {
  c'2 d e f g f e
}
\addlyrics { \bulgarian }
\addlyrics { \hebrew }
\addlyrics { \portuguese }



% ****************************************************************
% end ly snippet
% ****************************************************************
