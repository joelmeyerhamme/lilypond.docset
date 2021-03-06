%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "out-www/71e-TabStaves.ly"
\sourcefileline 0

\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/71e-TabStaves.xml

\header {
    texidoc = "Some tablature staves, with 
          explicit fingering information and different string tunings given 
          in the MusicXML file."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative g {
    \clef "tab" \key c \major g4 \4 e''4 \2 c,4 \2 e,4 \4 | % 2
    <gis, fis' g>4 \6 \4 \3 d'4 \5 gis4 \3 e'4 \1 \bar "|."
    }

PartPTwoVoiceOne =  \relative dis' {
    \clef "tab" \key c \major dis4 \2 gis,4 \3 c,4 \5 r4 | % 2
    fis'4 \1 g,4 \3 g4 \4 fis,4 \6 \bar "|."
    }

PartPThreeVoiceOne =  \relative ais {
    \clef "tab" \key c \major ais4 \2 b,8 \5 a'8 \3 s2 | % 2
    gis'4 \1 d4 \2 gis,,4 \6 d'4 \4 \bar "|."
    }

PartPFourVoiceOne =  \relative b {
    \clef "tab" \key c \major b8 \3 <d,, d g a a>8 \5 \6 \6 \5 \5 s2. | % 2
    d''4 \1 d,4 \4 a4 \5 d,4 \6 \bar "|."
    }

PartPFiveVoiceOne =  \relative g, {
    \clef "tab" \key c \major g4 \1 e,4 \4 d'4 \2 ais'4 \2 | % 2
    a,4 \3 a4 \3 a4 \3 a4 \3 \bar "|."
    }

PartPSixVoiceOne =  \relative dis' {
    \clef "tab" \key c \major dis4 \2 d,4 \4 d'4 \1 r4 | % 2
    g,4 \3 g'4 \5 g4 \5 g4 \5 \bar "|."
    }

PartPSevenVoiceOne =  \relative cis' {
    \clef "tab" \key c \major cis4 \3 cis,4 \5 a''4 \1 e4 \3 | % 2
    d4 \2 f,4 \4 g,4 \6 c4 \5 \bar "|."
    }

PartPEightVoiceOne =  \relative e''' {
    \clef "tab" \key c \major e4 \3 b,4 \1 c,4 \2 e4 \3 | % 2
    c4 \2 c4 \2 c4 \2 c4 \2 \bar "|."
    }


% The score definition
\new StaffGroup <<
    \new TabStaff \with { stringTunings = #'( 4 -1 -5 -10 -15 -20 ) } <<
        \set TabStaff.instrumentName = "Guitar"
        \set TabStaff.shortInstrumentName = "Gtr."
        \context TabStaff << 
            \context TabVoice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
            >>
        >>
    \new TabStaff \with { stringTunings = #'( 4 -1 -5 -10 -15 -20 ) } <<
        \set TabStaff.instrumentName = "Guitar"
        \set TabStaff.shortInstrumentName = "Gtr."
        \context TabStaff << 
            \context TabVoice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
            >>
        >>
    \new TabStaff \with { stringTunings = #'( 4 -3 -6 -10 -15 -22 ) } <<
        \set TabStaff.instrumentName = "Guitar"
        \set TabStaff.shortInstrumentName = "Gtr."
        \context TabStaff << 
            \context TabVoice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
            >>
        >>
    \new TabStaff \with { stringTunings = #'( 2 -1 -5 -10 -15 -22 ) } <<
        \set TabStaff.instrumentName = "Guitar"
        \set TabStaff.shortInstrumentName = "Gtr."
        \context TabStaff << 
            \context TabVoice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
            >>
        >>
    \new TabStaff \with { stringTunings = #'( -17 -22 -27 -32 ) } <<
        \set TabStaff.instrumentName = "Bass Guitar"
        \set TabStaff.shortInstrumentName = "Bass"
        \context TabStaff << 
            \context TabVoice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
            >>
        >>
    \new TabStaff \with { stringTunings = #'( 2 0 -5 -10 7 ) } <<
        \set TabStaff.instrumentName = "Banjo"
        \set TabStaff.shortInstrumentName = "Bjo."
        \context TabStaff << 
            \context TabVoice = "PartPSixVoiceOne" { \PartPSixVoiceOne }
            >>
        >>
    \new TabStaff \with { stringTunings = #'( 7 2 -3 -7 -12 -17 ) } <<
        \set TabStaff.instrumentName = "Lute"
        \set TabStaff.shortInstrumentName = "L."
        \context TabStaff << 
            \context TabVoice = "PartPSevenVoiceOne" { \PartPSevenVoiceOne }
            >>
        >>
    \new TabStaff \with { stringTunings = #'( 7 0 4 9 ) } <<
        \set TabStaff.instrumentName = "Ukulele"
        \set TabStaff.shortInstrumentName = "Uk."
        \context TabStaff << 
            \context TabVoice = "PartPEightVoiceOne" { \PartPEightVoiceOne }
            >>
        >>
    
    >>




% ****************************************************************
% end ly snippet
% ****************************************************************
