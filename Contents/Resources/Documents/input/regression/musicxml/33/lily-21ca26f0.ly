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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/musicxml/31a-Directions.xml"
\sourcefileline 0
\version "2.19.81"
% automatically converted by musicxml2ly from -
\pointAndClickOff

%% additional definitions required by the score:
abcffz = #(make-dynamic-script "abc-ffz")
accRegHMML = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.dot"
          \combine
          \raise #1.5 \translate #(cons 0.5 0) \musicglyph #"accordion.dot"
          \combine
          \raise #1.5 \translate #(cons -0.5 0) \musicglyph #"accordion.dot"
          \combine
          \raise #0.5 \musicglyph #"accordion.dot"
          \musicglyph #"accordion.discant" }

pppppp = #(make-dynamic-script "pppppp")
fz = #(make-dynamic-script "fz")
sfp = #(make-dynamic-script "sfp")
sffz = #(make-dynamic-script "sffz")
rf = #(make-dynamic-script "rf")
sfpp = #(make-dynamic-script "sfpp")
ffffff = #(make-dynamic-script "ffffff")
fffff = #(make-dynamic-script "fffff")

\header {
    texidoc = 
    "All <direction> elements 
          defined in MusicXML. The lyrics for each note describes the direction
          element assigned to that note."
    title =  "MusicXML directions (attached to staff)"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 | % 1
    \mark \markup { \box { A } } | % 1
    c4 \mark \markup { B } c4 \mark \markup { \box { Test } } c4 \mark
    \markup { \circle { Crc } } c4 | % 2
    \mark \markup { \musicglyph #"scripts.segno" } | % 2
    c4 \mark \markup { \musicglyph #"scripts.coda" } c4 c4 - "words"
    \mark \markup { \eyeglasses } c4 | % 3
    c4 -\p c4 -\pp c4 -\ppp c4 -\pppp | % 4
    c4 -\ppppp c4 -\pppppp c4 -\f c4 -\ff | % 5
    c4 -\fff c4 -\ffff c4 -\fffff c4 -\ffffff | % 6
    c4 -\mp c4 -\mf c4 -\sf c4 -\sfp | % 7
    c4 -\sfpp c4 -\fp c4 -\rf c4 -\rfz | % 8
    c4 -\sfz c4 -\sffz c4 -\fz c4 -\abcffz | % 9
    c4 -\< c4 -\! c4 \startTrillSpan c4 \stopTrillSpan | \barNumberCheck
    #10
    c4 c4 \ottava #-1 c4 \ottava #0 c4 | % 11
    c4 \sustainOn c4 \sustainOff\sustainOn c4 c4 \sustainOff | % 12
    \tempo 4=60 | % 12
    c4 c4 -\markup { \harp-pedal #"-^^|--v^" } c4 c4 | % 13
    c4 \mark \accRegHMML c4 r2 \bar "||"
    c4 _\markup{ \small\italic {subito} } _\markup{ \small { } } _\p c4
    _\ppp _\< c4 _\! _\fff r4 \bar "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata = ##t
    "reh.A (def=sq.)" "reh.B (none)" "reh.Test (sq.)" "reh.Crc (crc.)"
    Segno Coda Words "Eyegl." p pp ppp pppp ppppp pppppp f ff fff ffff
    fffff ffffff mp mf sf sfp sfpp fp rf rfz sfz sffz fz
    "abc-ffz (oth.)" hairpin -- cresc dash -- es bra -- cket "oct." --
    shift pedal -- change --\skip1 mark "Metr." "Harp ped." Damp
    "Damp all" "Scord." "Accordion reg." subp "ppp cresc" -- "to fff"
    subp
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
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
