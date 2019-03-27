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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/musicxml/72b-TransposingInstruments-Full.xml"
\sourcefileline 0
\version "2.19.81"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    texidoc = 
    "Various transposition. Each
          part plays a c'', just displayed in different display pitches.
          The second-to-last staff uses a transposition where the displayed c'
          is an actual f''' concert pitch. The final staff is an untransposed
          instrument."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a' {
    \transposition es' \clef "treble" \key e \major \time 4/4 | % 1
    a1 \bar "|."
    }

PartPTwoVoiceOne =  \relative d'' {
    \transposition bes \clef "treble" \key a \major \time 4/4 | % 1
    d1 \bar "|."
    }

PartPThreeVoiceOne =  \relative es'' {
    \transposition a \clef "treble" \key bes \major \time 4/4 | % 1
    es1 \bar "|."
    }

PartPFourVoiceOne =  \relative g'' {
    \transposition f \clef "treble" \key d \major \time 4/4 | % 1
    g1 \bar "|."
    }

PartPFiveVoiceOne =  \relative a'' {
    \transposition es \clef "treble" \key e \major \time 4/4 | % 1
    a1 \bar "|."
    }

PartPSixVoiceOne =  \relative es' {
    \transposition a' \clef "treble" \key bes \major \time 4/4 | % 1
    es1 \bar "|."
    }

PartPSevenVoiceOne =  \relative d'' {
    \transposition bes \clef "treble" \key a \major \time 4/4 | % 1
    d1 \bar "|."
    }

PartPEightVoiceOne =  \relative c'' {
    \clef "treble" \key g \major \time 4/4 | % 1
    c1 \bar "|."
    }

PartPNineVoiceOne =  \relative bes' {
    \transposition d' \clef "treble" \key f \major \time 4/4 | % 1
    bes1 \bar "|."
    }

PartPOneZeroVoiceOne =  \relative fis,, {
    \transposition fis'''' \clef "bass_8" \key cis \major \time 4/4 | % 1
    fis1 \bar "|."
    }

PartPOneOneVoiceOne =  \relative c'' {
    \clef "treble" \key g \major \time 4/4 | % 1
    c1 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Clarinet in Eb"
            \set Staff.shortInstrumentName = "Eb Cl."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Clarinet in Bb"
            \set Staff.shortInstrumentName = "Bb Cl."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Clarinet in A"
            \set Staff.shortInstrumentName = "A Cl."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Horn in F"
            \set Staff.shortInstrumentName = "Hn."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPFourVoiceOne" {  \PartPFourVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Horn in Eb"
            \set Staff.shortInstrumentName = "Hn."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPFiveVoiceOne" {  \PartPFiveVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Piccolo Trumpet in A"
            \set Staff.shortInstrumentName = "Picc.Tpt."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPSixVoiceOne" {  \PartPSixVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Trumpet in Bb"
            \set Staff.shortInstrumentName = "Bb Tpt."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPSevenVoiceOne" {  \PartPSevenVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Trumpet in C"
            \set Staff.shortInstrumentName = "C Tpt."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPEightVoiceOne" {  \PartPEightVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Trumpet in D"
            \set Staff.shortInstrumentName = "D Tpt."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPNineVoiceOne" {  \PartPNineVoiceOne }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "displayed c'=fis'''"
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneZeroVoiceOne" {  \PartPOneZeroVoiceOne }
                >>
            >>
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneOneVoiceOne" {  \PartPOneOneVoiceOne }
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
