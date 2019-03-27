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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/slur-cross-staff.ly"
\sourcefileline 0

\version "2.16.0"
\header{
  texidoc="
Slurs behave decently when broken across a linebreak.
"
}



\context PianoStaff <<
  \new Staff = "one" \relative c'{
    \stemUp \slurUp
    c4( c \change Staff=two c  c) |
    \change Staff=one
    \stemUp \slurUp
    c4( c \change Staff=two c  c) |
    \stemUp \slurUp
    c4( c \change Staff=one c  c) |
    \change Staff=two
    \stemUp \slurUp
    c4( c \change Staff=one c  c) |
    \change Staff=two
    \stemUp \slurUp
    c4( \change Staff=one c c  c) |
    r2
    \change Staff=two
    \stemUp \slurUp
    c4( \change Staff=one c
    \break
    c  c)
    r2
    %%		\stemDown \slurDown
    %%		 c4( \change Staff=two c c \change Staff=one  c)
    \stemDown \slurDown
    d4( \change Staff=two c c \change Staff=one  d)
    \change Staff=two
    \stemUp \slurUp
    c4( \change Staff=one c c \change Staff=two  c)
    r1
  }
  \new Staff = "two" \relative c'{
    \clef bass
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
  }
>>







% ****************************************************************
% end ly snippet
% ****************************************************************
