\version "2.20.0"

\header {
  tagline = ##f
  title = "A SWISS WALTZ"
  subtitle = "Arranges for the Piano Forte in Limitation of a Musical Snuff Box"
  composer = "W.L.Reston"
}
\paper {
  #(set-paper-size "a4")
}

global = {
  \key a \major
  \numericTimeSignature
  \time 3/8
  
}

right = \relative c''' {
  \global
  \partial 2.
   a16( gis a)
   e8 cis16 (e a, cis)
  \stemUp gis16 (b d8 fis)
   d b16 (d gis, b)
  \stemDown a( cis e a32) gis  b [ ( a gis fis) ]
  \stemDown e8 cis16( e a, cis)
   gis( b d fis eis fis)
   d b gis e' dis e
   a,8. e'16( fis16 e16)
   
   d [ ( b gis) ]  \stemUp e (gis b)
   \stemDown d [ ( b gis) ]
   e' [ ( cis a) ]



}

left = \relative c'' {
  \global
  \partial 8.
   r16 r8
   a cis e
   \stemDown e, b' d
   e, b' d
   cis d e
   cis d e
   e, b' d
   e, b' d
   \stemUp cis a,16 \bar ".." r16 r8
   <e' b'>4 e8
   a4 \stemDown cis8
   \stemUp <e, b'>4 e8
   a4 cis8
   d d, r8
   cis \stemDown cis' r8
   d e e,
   a4 \bar ".." r8
   \stemDown a16 e' cis e cis e
   a,16 e' cis e cis e
   e, e' gis, e' b e
   e, e' gis, e' b e
   a,4 cis
   d r8
   e4 <d e,>
   <cis a> r8 \bar ".." r
   <a d> [ <a d> ] r8
   <a cis> [<a cis>] r8
   <a d> [ <a d> ] r8
   cis a r8.
   d8 \stemUp e, r8
   cis \stemDown cis' r8
   d e e,
   <a cis> [ a,16 ] \bar ".."
   
}

\score {
  \new PianoStaff \with {
    instrumentName = ""
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \left }
  >>
  \layout { }
  \midi { }
}

%\relative {
%  f'1 \bar "|"
%  f1 \bar "."
%  g1 \bar "||"
%  a1 \bar ".|"
%  b1 \bar ".."
%  c1 \bar "|.|"
%  d1 \bar "|."
%  e1
%  <c e>4
