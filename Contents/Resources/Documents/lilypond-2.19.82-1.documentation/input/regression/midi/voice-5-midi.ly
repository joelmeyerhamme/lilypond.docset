% Lily was here -- automatically converted by /home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/scripts/midi2ly.py from out-www/voice-5.midi
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

% included from ./out-www/voice-5.header
\header {
texidoc="midi2ly still produces output for a staff with five voices.  However, in such cases, most probably the the correct \voiceOne, \voiceX... mapping is lost."
options=""
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.19.82          
  
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
  
  \set Staff.instrumentName = "trackB:voiceE"
  
}

trackBchannelC = {
  
  \set Staff.instrumentName = "trackB:voiceD"
  
}

trackBchannelD = {
  
  \set Staff.instrumentName = "trackB:voiceC"
  
}

trackBchannelE = {
  
  \set Staff.instrumentName = "trackB:voiceB"
  
}

trackBchannelF = \relative c {
  \voiceOne
  <c''' a >2 b 
  | % 2
  
}

trackBchannelG = \relative c {
  \voiceThree
  c''4. d8 e4 f 
  | % 2
  
}

trackBchannelH = \relative c {
  \voiceFour
  d'1 
  | % 2
  
}

trackBchannelI = \relative c {
  \voiceTwo
  c'4 c2 c4 
  | % 2
  
}

trackBchannelJ = \relative c {
  r1 
  | % 2
  d 
  | % 3
  
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
  \context Voice = voiceI \trackBchannelI
  \context Voice = voiceJ \trackBchannelJ
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
