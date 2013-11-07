
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/31a-Directions.xml

%% additional definitions required by the score:
abcffz = #(make-dynamic-script "abc-ffz")
accRegHMML = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons 0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
eyeglassesps = #"0.15 setlinewidth
      -0.9 0 translate
      1.1 1.1 scale
      1.2 0.7 moveto
      0.7 0.7 0.5 0 361 arc
      stroke
      2.20 0.70 0.50 0 361 arc
      stroke
      1.45 0.85 0.30 0 180 arc
      stroke
      0.20 0.70 moveto
      0.80 2.00 lineto
      0.92 2.26 1.30 2.40 1.15 1.70 curveto
      stroke
      2.70 0.70 moveto
      3.30 2.00 lineto
      3.42 2.26 3.80 2.40 3.65 1.70 curveto
      stroke"
eyeglasses =  \markup { \with-dimensions #'(0 . 4.4) #'(0 . 2.5) \postscript #eyeglassesps }
pppppp = #(make-dynamic-script "pppppp")
fz = #(make-dynamic-script "fz")
sfp = #(make-dynamic-script "sfp")
sffz = #(make-dynamic-script "sffz")
rf = #(make-dynamic-script "rf")
sfpp = #(make-dynamic-script "sfpp")
ffffff = #(make-dynamic-script "ffffff")
fffff = #(make-dynamic-script "fffff")

\header {
    texidoc = "All <direction> elements 
          defined in MusicXML. The lyrics for each note describes the direction
          element assigned to that note."
    title = "MusicXML directions (attached to staff)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 | % 1
    \mark \markup { \box { A } } c4 \mark \markup { B } c4 \mark \markup
    { \box { Test } } c4 \mark \markup { \circle { Crc } } c4 | % 2
    \mark \markup { \musicglyph #"scripts.segno" } | % 2
    c4 \mark \markup { \musicglyph #"scripts.coda" } c4 c4 -"words"
    \mark \eyeglasses c4 | % 3
    | % 3
    c4 \p c4 \pp c4 \ppp c4 \pppp | % 4
    | % 4
    c4 \ppppp c4 \pppppp c4 \f c4 \ff | % 5
    | % 5
    c4 \fff c4 \ffff c4 \fffff c4 \ffffff | % 6
    | % 6
    c4 \mp c4 \mf c4 \sf c4 \sfp | % 7
    | % 7
    c4 \sfpp c4 \fp c4 \rf c4 \rfz | % 8
    | % 8
    c4 \sfz c4 \sffz c4 \fz c4 \abcffz | % 9
    | % 9
    c4 \< c4 \! c4 \startTextSpan c4 \stopTextSpan | \barNumberCheck #10
    | \barNumberCheck #10
    \[ c4 c4 \] \ottava #-1 c4 \ottava #0 c4 | % 11
    | % 11
    c4 \sustainOn c4 \sustainOff\sustainOn c4 c4 \sustainOff | % 12
    \tempo 4=60 | % 12
    c4 c4 -\markup { \harp-pedal #"-^^|--v^" } c4 c4 | % 13
    | % 13
    c4 \mark \accRegHMML c4 r2 \bar "||"
    | % 14
    | % 14
    c4 _\markup{ \italic {subito} } _" " \p c4 \ppp \< c4 \! \fff r4
    \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "reh.A (def=sq.)" "reh.B
    (none)" "reh.Test (sq.)" "reh.Crc (crc.)" Segno Coda Words Eyegl. p
    pp ppp pppp ppppp pppppp f ff fff ffff fffff ffffff mp mf sf sfp
    sfpp fp rf rfz sfz sffz fz "abc-ffz (oth.)" hairpin -- cresc dash --
    es bra -- cket oct. -- shift pedal -- change \skip4 mark Metr. "Harp
    ped." Damp "Damp all" Scord. "Accordion reg." subp "ppp cresc" --
    "to fff" }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>

