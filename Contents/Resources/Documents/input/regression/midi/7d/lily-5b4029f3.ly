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
\sourcefilename "out-www/voice-4-midi.ly"
\sourcefileline 0
% Lily was here -- automatically converted by /home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/scripts/midi2ly.py from out-www/voice-4.midi
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

% included from ./out-www/voice-4.header
\header {
texidoc="midi2ly maps four voices nicely on one staff as \voiceOne, \voiceTwo, \voiceThree, \voiceFour"
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.19.65          
  
  \time 4/4 
  
  \tempo 4 = 60 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "trackB:voiceA"
  
}

trackBchannelB = {
  
  \set Staff.instrumentName = "trackB:voiceD"
  
}

trackBchannelC = {
  
  \set Staff.instrumentName = "trackB:voiceC"
  
}

trackBchannelD = {
  
  \set Staff.instrumentName = "trackB:voiceB"
  
}

trackBchannelE = \relative c {
  \voiceOne
  <c''' a >2 b 
  | % 2
  
}

trackBchannelF = \relative c {
  \voiceThree
  c''4. d8 e4 f 
  | % 2
  
}

trackBchannelG = \relative c {
  \voiceFour
  d'1 
  | % 2
  
}

trackBchannelH = \relative c {
  \voiceTwo
  c'4 c2 c4 
  | % 2
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelC
  \context Voice = voiceD \trackBchannelD
  \context Voice = voiceE \trackBchannelE
  \context Voice = voiceF \trackBchannelF
  \context Voice = voiceG \trackBchannelG
  \context Voice = voiceH \trackBchannelH
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}



% ****************************************************************
% end ly snippet
% ****************************************************************