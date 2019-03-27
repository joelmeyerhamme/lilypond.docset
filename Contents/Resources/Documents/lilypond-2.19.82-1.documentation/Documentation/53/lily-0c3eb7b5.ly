%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,relative=1]
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
}

\layout {
  
}



\relative c'
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 365
% Si tratta di un esempio forzato per simulare il comportamento precedente
\time 3/4
\override Beam.auto-knee-gap = 3
\override TupletBracket.bracket-visibility = ##t
\tuplet 3/2 4 { g8 c'' e, }
\once \override TupletBracket.bracket-visibility = ##f
\tuplet 3/2 4 { g,,8 c'' e, }
\tuplet 3/2 4 { c'8 g,, e'' }
\once \override TupletBracket.bracket-visibility = ##f
\tuplet 3/2 4 { c'8 g,, e'' }
\tuplet 2/2 4 { g,8[ e''] }
\once \override TupletBracket.bracket-visibility = ##f
\tuplet 2/2 4 { g,,8[ e''] }



% ****************************************************************
% end ly snippet
% ****************************************************************
}
