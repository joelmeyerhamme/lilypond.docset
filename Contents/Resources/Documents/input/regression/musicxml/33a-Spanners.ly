
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/33a-Spanners.xml

\header {
    texidoc = "Several spanners defined in
           MusicXML: tuplet, slur (solid, dashed), tie,  wedge (cresc, dim),
           tr + wavy-line, single-note trill spanner, octave-shift (8va,15mb),
           bracket (solid down/down, dashed down/down, solid none/down,
           dashed none/up, solid none/none), dashes, glissando (wavy),
           bend-alter, slide (solid), grouping, two-note tremolo, hammer-on,
           pull-off, pedal (down, change, up)."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key c \major \time 3/4 \times 2/3 {
        b4 b4 b4 }
    r4 | % 2
    b4 ( b4 b4 ) | % 3
    \slurDashed b4 ( \slurSolid b4 b4 ) | % 4
    | % 4
    b4 \< b4 b4 \! | % 5
    | % 5
    b4 \> b4 b4 \! | % 6
    b4 \trill \startTrillSpan b4 b4 \stopTrillSpan | % 7
    b4 \startTrillSpan \stopTrillSpan r2 | % 8
    \ottava #1 | % 8
    b'4 b4 b4 \ottava #0 | % 9
    \ottava #-2 | % 9
    b,,,4 b4 b4 \ottava #0 | \barNumberCheck #10
    | \barNumberCheck #10
    \[ b''4 b4 b4 \] | % 11
    | % 11
    \[ b4 b4 b4 \] | % 12
    | % 12
    \[ b4 b4 b4 \] | % 13
    | % 13
    \[ b4 b4 b4 \] | % 14
    | % 14
    \[ b4 b4 b4 \] | % 15
    | % 15
    b4 \startTextSpan b4 b4 \stopTextSpan | % 16
    \once \override Glissando #'style = #'zigzag b4 \glissando f'4 r4 | % 17
    b,4 -\bendAfter #6 c4 -\bendAfter #0 r4 | % 18
    b4 \glissando c,4 r4 | % 19
    | % 19
    b'4 b4 b4 | \barNumberCheck #20
    b4 :16 b4 :32 r4 | % 21
    b4 b4 r4 | % 22
    b4 b4 r4 | % 23
    | % 23
    b4 \sustainOn b4 \sustainOff\sustainOn b4 \sustainOff \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

