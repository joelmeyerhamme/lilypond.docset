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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/accidental-voice.ly"
\sourcefileline 0
\version "2.17.6"
\layout { ragged-right = ##t }

\header{
  texidoc="
This shows how modern cross voice auto cautionary accidentals are handled.
The first two fisses get accidentals because they belong to different voices.
The first f gets cautionary natural because of previous measure.
The last f gets cautionary natural because fis was only in the other voice.
"
}



voicea =  \transpose c c' {
  \stemUp
  fis2 a2 f4 fis a2
}
voiceb =  \transpose c c' {
  \stemDown
  c2 fis2  f4 c   f2
}

<<
  
  \new NoteNames {
    \set printOctaveNames = ##f
    \voicea
  }
  \context Staff << 
    \accidentalStyle modern-voice-cautionary
    \new Voice \voicea
    \new Voice \voiceb
  >>
  \new NoteNames {
    \set printOctaveNames = ##f
    \voiceb

  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
