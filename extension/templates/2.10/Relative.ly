% use relative input mode
% Custom1: absolute pitch used as reference for first relative note

\include "lilypond-book-preamble.ly"
#(set-global-staff-size %{OOoLilyPondStaffSize%}20%{OOoLilyPondEnd%})

\paper {
  #(define dump-extents #t)
  ragged-right = ##t
  line-width = %{OOoLilyPondLineWidth%}17\cm%{OOoLilyPondEnd%}
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\transpose %{OOoLilyPondCustom1%}c c%{OOoLilyPondEnd%}
\relative %{OOoLilyPondCustom2%}g,%{OOoLilyPondEnd%} {
%{OOoLilyPondCode%}% This templates let's you enter notes in relative mode.
% See the LilyPond documentation:
% http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Writing-pitches#index-_005crelative
% The start pitch you can specify in the "Custom 2" field.

\key g \major
\clef bass
g8 a b g c a d d, | g2 \bar "|."%{OOoLilyPondEnd%}
}








