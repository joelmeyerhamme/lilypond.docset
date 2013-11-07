%% Generated by lilypond-book.py
%% Options: [alt=[image of music],notime,indent=0\mm,line-width=13.0\cm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 13.0\cm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
 \context {
   \Score
   timing = ##f
 }
 \context {
   \Staff
   \remove "Time_signature_engraver"
 }
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 4468
<<
\context Voice \relative c'' {
% Prime or unison
  < g g >1 
  < g gis >^"aug"
% Second
  < gis as >^"dim"
  < g! as >^"min" 
  < g a! >^"maj"
  < g ais >^"aug" 
% Third
  < gis bes >^"dim" 
  < g! bes >^"min" 
  < g b! >^"maj" 
  < g bis >^"aug" 
% Fourth
  < g ces >^"dim" 
  < g c! >^"per" 
  < g cis >^"aug" 
% Fifth
  < g des' >^"dim"
  < g d' >^"per"
  < g dis >^"aug"
% Sixth
  < gis es' >^"dim"
  < g! es' >^"min"
  < g e'! >^"maj"
  < g eis' >^"aug"
% Seventh
  < gis f'! >^"dim" 
  < g! f'! >^"min" 
  < g fis' >^"maj" 
  < g fisis' >^"aug"
% Octave
  < g ges' >^"dim"
  < g g' >^"per"
  < g gis' >^"aug"
}
\context Lyrics \lyrics {
  "unison " "unison "
  "second " "second " "second " "second "
  "third  " "third  " "third  " "third  "
  "fourth " "fourth " "fourth "
  "fifth  " "fifth  " "fifth  "
  "sixth  " "sixth  " "sixth  " "sixth  "
  "seventh" "seventh" "seventh" "seventh"
  "octave " "octave " "octave "
}
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
