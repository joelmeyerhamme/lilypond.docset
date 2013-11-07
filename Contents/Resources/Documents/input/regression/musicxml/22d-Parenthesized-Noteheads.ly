
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/22d-Parenthesized-Noteheads.xml

\header {
    texidoc = "Parenthesized note heads. First,
          a single parenthesized note is tested, once with a normal and then 
          with a non-standard notehead, then two chords with some/all
          parenthesized noteheads and finally a parenthesized rest."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \clef "treble" \key c \major \time 6/4 \parenthesize a4 \once
    \override NoteHead #'style = #'cross \parenthesize a4 <a
        \parenthesize c e>4 <\parenthesize a \parenthesize c
        \parenthesize e>4 \parenthesize r4 \parenthesize e4 \rest \bar
    "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

