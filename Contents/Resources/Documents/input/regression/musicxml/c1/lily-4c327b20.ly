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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/musicxml/23b-Tuplets-Styles.xml"
\sourcefileline 0
\version "2.19.65"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Different tuplet styles:
          default, none, x:y, x:y-note; Each with bracket, slur and none.
          Finally, non-standard 4:3 and 17:2 tuplets are given."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 5/4 | % 1
    \times 2/3  {
        c8 c8 c8 }
    \once \omit TupletNumber
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber.text = #(tuplet-number::fraction-with-notes "8" "8")
    \times 2/3  {
        c8 c8 c8 }
    | % 2
    \once \override TupletBracket.stencil = #ly:slur::print
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket.stencil = #ly:slur::print
    \once \omit TupletNumber
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket.stencil = #ly:slur::print
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket.stencil = #ly:slur::print
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket.stencil = #ly:slur::print
    \once \override TupletNumber.text = #(tuplet-number::fraction-with-notes "8" "8")
    \times 2/3  {
        c8 c8 c8 }
    | % 3
    \once \omit TupletBracket
    \times 2/3  {
        c8 c8 c8 }
    \once \omit TupletBracket
    \once \omit TupletNumber
    \times 2/3  {
        c8 c8 c8 }
    \once \omit TupletBracket
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    \once \omit TupletBracket
    \once \override TupletNumber.text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \omit TupletBracket
    \once \override TupletNumber.text = #(tuplet-number::fraction-with-notes "8" "8")
    \times 2/3  {
        c8 c8 c8 }
    | % 4
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 3/4  {
        c8 c8 c8 c8 }
    \times 3/17  {
        c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 }
    c8 c8 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }




% ****************************************************************
% end ly snippet
% ****************************************************************