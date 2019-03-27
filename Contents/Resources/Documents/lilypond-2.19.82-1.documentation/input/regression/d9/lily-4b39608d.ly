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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/chord-name-entry.ly"
\sourcefileline 0
\version "2.16.0"


\header {

    texidoc = "Chords can be produced with the chordname entry 
code (@code{\\chordmode} mode), using a pitch and a suffix. Here,
the suffixes are printed below pitches.
"

}

{ \context Voice \chordmode {
    c1_"(nothing)"
    c:7_":7"
    c:m_":m"
    c:m7_":m7"
    c:aug_":aug"
    c:maj7_":maj7"
    c:dim_":dim"
    c:dim7_":dim7"
    c:sus4_":sus4"
    c:sus2_":sus2"
    c:6_":6"
    c:m6_":m6"
    c:7sus4_":7sus4"
    c:3-_":3-"
    c:3+_":3+"
    c:5+.3-_":5+.3-"
    c:7_":7"
    c:9_":9"
    c:11_":11"
    c:13_":13"
    c:m13_":m13"
    c:7^5_":7\\^{~}5"
    c^3_"\\^{~}3"
    c/g_"/g"
    c/gis_"/gis"
    c/a_"/a"
    c/+f_"/+f"
    c/+g_"/+g"
}
}



% ****************************************************************
% end ly snippet
% ****************************************************************
