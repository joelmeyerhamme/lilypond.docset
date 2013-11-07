%% Generated by lilypond-book.py
%% Options: [quote,alt=[image of music],ragged-right,indent=0\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  indent = 0\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 803
musicA = {  << \relative {  cis'8 fis, d'4 <a cis>8 f bis4 | cis2. <c, g'>4 | } \\
       \relative { ais'2 cis, | fis8 b a4 cis2 | } >> }

musicB = { \clef bass  \new Voice { \voiceTwo \relative { < fis, a cis>4 
	\change Staff = up cis' \change Staff = down <fis, a>  
	\change Staff = up dis' | \change Staff = down <fis, a cis>4 gis 
	<f a d>2 |  } }}

\score { 
	\new PianoStaff {
       << \context Staff = "up" {
	       %#(set-accidental-style 'default) 
       \musicA }
       \context Staff = "down"{
	       %#(set-accidental-style 'default)
       \musicB } >> }
       \header { piece = \markup {\fill-line { \fontsize #3  "'default" }}}
}



% ****************************************************************
% end ly snippet
% ****************************************************************
