%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 1531
\score {  % 複合音楽表記の開始点
  <<  % 同時進行する譜の開始点
    \time 2/4
    \new Staff {  % create RH staff
      \clef "treble"
      \key g \minor
      \new Voice {  % 右手の音符用のボイスを作成します
        \relative {  % 右手の音符の開始点
          d''4 ees16 c8. |
          d4 ees16 c8. |
        }  % 右手の音符の終了点
      }  % 右手のボイスの終了点
    }  % 右手の譜の終了点
    \new Staff <<  % 左手の譜を作成します。2 つの同時進行するボイスを必要とします
      \clef "bass"
      \key g \minor
      \new Voice {  % 左手のボイス 1 を作成します
        \voiceOne
        \relative {  % 左手のボイス 1 の音符の開始点
          g8 <bes d> ees, <g c> |
          g8 <bes d> ees, <g c> |
        }  % 左手のボイス 1 の音符の終了点
      }  % 左手のボイス 1 の終了点
      \new Voice {  % 左手のボイス 2 を作成します
        \voiceTwo
        \relative {  % 左手のボイス 2 の音符の開始点
          g4 ees |
          g4 ees |
        }  % 左手のボイス 2 の音符の終了点
      }  % 左手のボイス 2 の終了点
    >>  % 左手の譜の終了点
  >>  % 同時進行する譜セクションの終了点
}  % 複合音楽表記の終了点



% ****************************************************************
% end ly snippet
% ****************************************************************