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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/key-clefs.ly"
\sourcefileline 0

\version "2.19.21"
\header { texidoc = "Each clef has its own accidental placing
rules, which can be adjusted using @code{sharp-positions}
and @code{flat-positions}." }

#(set-global-staff-size 16)


\relative {

				% \clef french % same as octaviated bass
  \clef violin
  \key cis \major cis'1  \key ces \major ces
  \clef soprano
  \key cis \major cis \key ces \major ces \break
  \clef mezzosoprano
  \key cis \major cis \key ces \major ces
  \clef alto
  \key cis \major cis \break \key ces \major ces 
  \clef tenor
  \key cis \major cis \key ces \major ces \break
  \clef baritone
  \key cis \major cis \key ces \major ces
  \clef bass
  \key cis \major cis \key ces \major  ces
  \break R1
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \override Score.RehearsalMark.font-size = #0
  \mark "B-sharp on top"
  \override Staff.KeySignature.sharp-positions = #'(6 0 1 2 3 4 5)
  \override Staff.KeyCancellation.sharp-positions = #'(6 0 1 2 3 4 5)
  \key cis \major R
  \mark "Flats throughout the staff"
  \override Staff.KeySignature.flat-positions = #'((-5 . 5))
  \override Staff.KeyCancellation.flat-positions = #'((-5 . 5))
  \key ces \major R
  \clef tenor
  \key cis \major cis \break \key ces \major ces
  \clef treble
  \key cis \major cis \key ces \major ces
}




% ****************************************************************
% end ly snippet
% ****************************************************************
