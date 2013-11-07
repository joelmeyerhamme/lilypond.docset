
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/23c-Tuplet-Display-NonStandard.xml

%% additional definitions required by the score:
#(define ((tuplet-number::non-default-tuplet-fraction-text denominator numerator) grob)
    (let* ((ev (event-cause grob))
           (den (if denominator denominator (ly:event-property ev 'denominator)))
           (num (if numerator numerator (ly:event-property ev 'numerator))))
       (format "~a:~a" den num)))

#(define ((tuplet-number::non-default-tuplet-denominator-text denominator) grob)
  (number->string (if denominator 
                      denominator 
                      (ly:event-property (event-cause grob) 'denominator))))

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
    texidoc = "Displaying tuplet note types,
          that might not coincide with the displayed note. The first two tuplets 
          take the type from the note, the second two from the 
          <time-modification> element, the remaining pair of tuplets from the 
          <tuplet> notation element. The tuplets in measure 3 specify both 
          a number of notes and a type inside the <tuplet-actual> and 
          <tuplet-normal> elements, the ones in measure 4 specify only a 
          note type (but no number), and the ones in measure 5 specify only a 
          number of tuplet-notes (but no type, which is deduced from the 
          note's type). The first tuplet of measures 3-5 uses 
          'display-type=\"actual\"', the second one 'display-type=\"both\"'.
          FIXME: The tuplet-normal should coincide with the real notes!"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 4/4 \once \override TupletNumber
    #'text = #(tuplet-number::append-note-wrapper
    tuplet-number::calc-denominator-text "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper tuplet-number::calc-denominator-text "4.")
    \times 2/3  {
        c4. c4. c4. }
    | % 2
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper tuplet-number::calc-denominator-text "breve")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper tuplet-number::calc-denominator-text "breve..")
    \times 2/3  {
        c4. c4. c4. }
    | % 3
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper (tuplet-number::non-default-tuplet-fraction-text 7 5) "4...")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #(tuplet-number::non-default-tuplet-fraction-text 7 5)
    \times 2/3  {
        c4. c4. c4. }
    | % 4
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper tuplet-number::calc-fraction-text "4...")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    \times 2/3  {
        c4. c4. c4. }
    | % 5
    \once \override TupletNumber #'text = #(tuplet-number::append-note-wrapper (tuplet-number::non-default-tuplet-denominator-text 7) "8")
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletNumber #'text = #(tuplet-number::non-default-tuplet-fraction-text 7 5)
    \times 2/3  {
        c4. c4. c4. }
    \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

