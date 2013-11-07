
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/23e-Tuplets-Tremolo.xml

\header {
    texidoc = "Tremolo tuplets are tuplets on 
          single notes with a tremolo ornament. The application shall correctly
          import these notes with 2/3 or their time..."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 3/4 \times 2/3 {
        a8 _. [ a8 _. a8 _. ] }
    \times 2/3  {
        a8 _. [ a8 _. a8 _. ] }
    \times 2/3  {
        a8 _. [ a8 _. a8 _. ] }
    | % 2
    \times 2/3  {
        g4. :8 }
    \times 2/3  {
        g4. :8 }
    \times 2/3  {
        g4. :8 }
    | % 3
    \times 4/6  {
        g2. :8 }
    \times 2/3  {
        g4. :8 }
    | % 4
    \times 2/3  {
        f8 [ a8 a8 ] }
    \times 4/6  {
        a2. \fp :8 }
    | % 5
    \times 4/6  {
        g2. :8 }
    \times 2/3  {
        g4. :8 }
    \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

