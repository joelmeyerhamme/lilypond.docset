
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/23b-Tuplets-Styles.xml

%% additional definitions required by the score:
      % a formatter function, which is simply a wrapper around an existing 
      % tuplet formatter function. It takes the value returned by the given
      % function and appends a note of given length. 
  #(define-public ((tuplet-number::append-note-wrapper function note) grob)
    (let* ((txt (if function (function grob) #f)))
      (if txt 
        (markup txt #:fontsize -5 #:note note UP)
        (markup #:fontsize -5 #:note note UP)
      )
    )
  )

\header {
    texidoc = "Different tuplet styles:
          default, none, x:y, x:y-note; Each with bracket, slur and none.
          Finally, non-standard 4:3 and 17:2 tuplets are given."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 5/4 \times 2/3 {
        c8 c8 c8 }
    \once \override TupletNumber #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    | % 2
    \once \override TupletBracket #'stencil = #ly:slur::print
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = #ly:slur::print
    \once \override TupletNumber #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = #ly:slur::print
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = #ly:slur::print
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = #ly:slur::print
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    | % 3
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \once \override TupletNumber #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c8 c8 c8 }
    | % 4
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 3/4  {
        c8 c8 c8 c8 }
    \times 3/17  {
        c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 }
    c8 c8 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

