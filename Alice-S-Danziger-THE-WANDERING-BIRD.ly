\version "2.20.0"
\language "english"

\header {
  title = "THE WANDERING BIRD"
  composer = "Alice S.Danziger"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key g \major
  \time 4/4
  \partial 4
  \tempo "Allegro Moderato"
}

right = \relative c'' {
  \global
  r4 \mf
  r2 r4 d,8-. ds-.
  e16-> (c a fs) r4 r d'''8 ds
  e16-> (c a fs) d8-. ds-. e16-> (c a fs) d8-. ds-.
  \break
  \ottava #1
  \set Staff.ottavation= #"8"
  e'16-> (c a fs) d'8-. ds-. r2
  \ottava #0
  r4 \stemDown <c fs d'> \arpeggio
  \ottava #1
  \set Staff.ottavation= #"8"
  <c' fs d'>8 \arpeggio r8 \fermata
  \ottava #0
  d,4
  <b d b'>8 \arpeggio <b-. d g> \arpeggio <b-. d fs> \arpeggio <b-. d g> \arpeggio
  <b-. d a'> \arpeggio <b-. d g> \arpeggio <b-. d> b-.

  <g b~ e>2 (\arpeggio <b d>4.) d8
  (<b d a'> \arpeggio) <b-. d g> \arpeggio <b-. d fs> \arpeggio <b-. d g> \arpeggio <b-. d a'> \arpeggio <b-. d g> \arpeggio <b-. d> ds-.
  <a~-> c~ fs>2 \arpeggio (<a c e>4.) e'8 \< (
  \break
  <c e c'> \arpeggio  ) \! <c e a> <c e gs> <c e a> <c e b'> <c e a> <c e> <c e a>
  <a c g'> \< \arpeggio <a c fs> <c fs a> <fs a c> <fs~ a~ e'>4.\! (<fs a ef'>8)
  <fs a d> \arpeggio <e a c> <c fs a> <a c fs> <fs a d> <fs a ds> <fs a e'> <fs a ds>



}

left = \relative c {
  \global
  d8-. ds-.
  e16-> (c a fs) d8 d d,4 r
  r d'''8-. d-. d,4 s4
  R1

  r2 e'16-> (c a fs) d8-. d-.
  d,4 \clef treble <d'' fs> <d' fs>8 r \fermata r4 \stemDown
  e,8 [<g' b e> <g b e> <g b e>
  ]e,8 <g' b e> <g b e> <g b e>

  e,8 <g' b e> <g b e> <g b e> <g b e> <g b e> <g b e> <g b e>
  e,8 <g' b e> <g b e> <g b e> e,8 <g' b e> <g b e> <g b e>
  a,8 <a' c fs> <a c fs> <a c fs> <a c fs> <a c fs> <a c fs> <a c fs>

  a, <a' c fs> <a c fs> <a c fs>
  a, <a' c fs> <a c fs> <a c fs>
  b,, <b' d g> <b d g> <b d g>
  b, <b' d g> <b d g> <b d g>
  b, <b' d g> <b d g> <b d g>
  b, <b' d g> <b d g> <b d g>
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
