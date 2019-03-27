%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
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
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "out-www/kirchentonarten.ly"
\sourcefileline 0
\version "2.7.40"
\header {
	crossRefNumber = "1"
	footnotes = ""
	tagline = "Lily was here (unknown version) -- automatically converted from ABC"
	title = "Church mode (E Dorian)"
}
voicedefault =  {
\set Score.defaultBarType = ""

 \override Staff.TimeSignature #'style = #'C
 \time 4/4 \key e \dorian \clef "bass"
   e'16    b'8.    b'8.    a'16    b'8.    a'16    b'16    d''8.  \bar "|"   
fis'16    d'8.    a'8.    d'16    b'8.    d'16    a'8.    fis'16  \bar "|"   
e''8.    cis''16    e''16    g''8.    e''8.    b'16    e''16    g''8.  \bar "|" 
  
}

\score{
    <<

	\context Staff="default"
	{
	    \voicedefault 
	}

    >>
	\layout {
	}
	\midi {}
}



% ****************************************************************
% end ly snippet
% ****************************************************************