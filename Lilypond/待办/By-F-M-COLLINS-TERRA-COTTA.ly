\version "2.20.0"
\language "english"

\header {
  title = "TERRA COTTA"
  subsubtitle = "POLKA."
  composer = "By F.M.COLLINS"
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
  \key f \major
  \numericTimeSignature
  \time 2/4
  \tempo "Intro." 4=60
}

right = \relative c'' {
  \global
  <c-> c,>4 <c-> c,> <c-> c,>2
  \acciaccatura a'8 <e g>4 \p \> \acciaccatura a8 <ds, fs>4
  \acciaccatura a'8 <e g>4  c'8-. r \!
  \bar "|."
  \break
  \tempo "Polka."
  \acciaccatura d,8 <a c>4 \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>4 \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>8 <a a'> <a f'> <a d>
  <a~ c~>4 <a c>8 r
  \acciaccatura d8 <bf c> <bf c> <bf d>4
  \break
  \acciaccatura d8 \< <a c> <a c> <a-> c a'>4 \!
  <b g'>8 <b f'> <b e> <b d>
  <b-> e> \< <b-> d>  <b-> c>4 \>
  \acciaccatura d8 \! <a c>4 \mf \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>4 \acciaccatura d8 <gs, b>4
  \break
  \acciaccatura d'8 <a c>8 <a a'> <a f'> <a d>
  <a~ c~>4 <a c>8 r
  <bf d> \f <bf d> <bf d a'>4
  <a c>8 <a c> <a c g'>4
  <c g'>8 <bf f'> <bf d> <bf e>
  <a-> c f> \< [<a-> c f> <a-> c f>] \! r
  \bar "|."
  \key bf \major
  \break
  d,8. ef16 e8 f8
  fs g c8. bf16
  a8-> [<ef' g>] \< a,-> <ef' f>
  bf-> [<d g>] bf-> <d f> \!
  d,8. ef16 e8 f
  \break
  a8. bf16 b8 c
  <bf c> \f \< <bs c> <bf d> <bf e>
  <a-> f'> [<a-> f'> <a-> f'>] r \!
  ef8. f16 f8 g
  gs a c8. bf16
  \break
  a8-> [<ef' g>] \< a,-> <ef' f>
  bf-> [<d g>] bf-> <d f> \!
  d,8. \mf ef16 e8 f
  fs8 g c8. bf16
  a8 \<  <ef' g> a, <e' f>
  <bf-> d bf'>8 \f [<bf-> d bf'> <bf-> d bf'>] r \!
  \bar "|."
  \key f \major
  \break
  \acciaccatura d8 <a c>4 \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>4 \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>8 <a a'> <a f'> <a d>
  <a~ c~>4 <a c>8 r
  \acciaccatura d8 <bf c> <bf c> <bf-> d>4
  \break
  \acciaccatura d8 \< <a c> <a c> <a-> c a'>4 \!
  <b g'>8 <b f'> <b e> <b d>
  <bf-> e> \< <bf-> d> <bf-> c>4 \!
  \acciaccatura d8 <c a>4
  \acciaccatura d8 <b gs>4
  \acciaccatura d8 <c a>4
  \acciaccatura d8 <b gs>4
  \break
  \acciaccatura d8 <a c>8 <a a'> <a f'> <a d>
  <a~ c~>4 <a c>8 r
  <bf d> <bf d> <bf-> d bf'>4
  <bf d>8 <bf d> <bf-> d bf'>4
  <d bf'>8 \< <c a'> <c e> <c f> \!
  <bf-> d g> [<bf-> d g> <bf-> d g>] r
  \bar "|."
  \key bf \major
  
  f-> bf16 (c d c bf c)
  d8 bf f fs
  g-> \mf c16 (d e d c \< d)
  e8 c g g \!
  a-> g'16 (f e d e c)
  \break
  bf8 d f,-> bf16( a
  g8->) c c-> \< c16 ( bf
  a8-> ) [<f-> f'> <f-> f'>] r \!
  f-> \mf bf16 (c d c bf c)
  d8 bf f fs
  \break
  g-> c16 (d ef \< d c d)
  ef8 c g gs \!
  a-> g'16 (f ef d ef c)
  bf8 d f, bf16 (a
  g8->) \< c16 (bf a8->) f' \!
  bf,4-> <bf-> d f bf>8 \fz r
  \bar "||"
  \break
  r \ff \< <f-> ef' f> [<g-> d' f> <a-> c f>] \!
  bf8.-> (d16 g8 f)
  a,8.-> (ef'16 \< g8 f)
  bf,8.-> (d16 g8 \! f)
  r \ff \< <f,-> ef' f> [<g-> d' f> <a-> c f>] \!
  
  bf8.-> (d16 g8 f)
  f16 \< (e ds e) a8 a, \!
<<
  { d4~-> d8 }
  \\
  { r8 \> <f, a> [<f a>] \! }
>>
  r
  r \ff \< <f-> ef' f> [<g-> d' f> <a-> c f>] \!
  bf8.-> (d16 g8 f)
  \break
  a,8. \< (e'16 g8 f)
  bf,8. (d16 g8 f) \!
  r \ff \< <f,-> ef' f> [<g-> d' f> <a-> c f>]
  bf8.-> \! (d16 \< g8 f)
  a,16 ef' a g f ef d c \!
  
<<
  { bf4~-> bf8 }
  \\
  { r8 \fz <d, f> [<d f>] }
>>
  r
  \bar ".."
}

left = \relative c' {
  \global
  <c,-> c,>4 <c-> c,>4 <c-> c,>2
  \clef treble <c' g' bf>4 <c fs a> <c g' bf> r
  \clef bass
  f,8 <a c> f <b d>
  f <a c> f <b d>
  f <a c> c, <a' c>
  f <a c> c, <a' c>
  e <g bf c> c, <g' bf c>
  \break
  f <a c> f <a c>
  g <b d f> g <b d f>
  <c-> e> <d-> f> <e-> g>4
  f,8 <a c> f <b d>
  f <a c> f <b d>
  \break
  f <a c> c, <a' c>
  f <a c> f <a c>
  bf, <g' bf> bf, <g' bf>
  c, <f a c> c <f a c>
  e <a c d> c, <a' c d>
  <f-> a c> [<f-> a c> <f-> a c>] r
  \key bf \major
  bf, <f' bf> d <f bf>
  e <g c> e <g c>
  f <a c e> f <a c e>
  bf, <f' bf d> <f bf d> r
  bf, <f' bf> d <f bf>
  \break
  c <f a c> c <f a c>
  c <g' bf c> c, <g' bf c>
  <f'-> c> [<f-> c> <f-> c>] r
  bf,, <f' bf> d <f bf>
  e <g c> e <g c>
  \break
  f <a c e> f <a c e> bf, [<f' bf d> <f bf d>] r
  bf, <f' bf> d <f bf>
  e <g c> e <g c>
  a <c e g> a <c e g>
  <bf-> d> [<bf-> d> <bf-> d>]  r
  \key f \major
  \break
  \grace { s8 }
  f <a c> f <b d>
  f <a c> f <b d>
  f <a c> c, <a' c>
  f <a c> c, <a' c>
  ef <g bf c> ef <g bf c>
  
  f <a c> f <a c>
  g <b d f> g <b d f>
  <c-> e> <d-> f> <e-> g>4
  f,8 <a c> f <b d>
  f <a c> f <b d>
  
  f <a c> c, <a' c>
  f <a c> f <a c>
  bf, <g' bf> bf, <g' bf>
  c, <f a c> c <f a c>
  e <g bf c> c, <g' bf c>
  <f-> a c> [<f-> a c> <f-> a c>] r
  \key bf \major
  
  <bf, bf'> [<f' bf d> <f bf d>] r
  <bf, bf'> [<f' bf d> <f bf d>] r
  <ef ef,> [<ef g c> <ef g c>] r
  <ef ef,> [<ef g c> <ef g c>] r
  <f f,> [<f a c ef> <f a c ef>] r
  
  <bf, bf'> [<f' bf d> <f bf d>] r
  <c c'> [<g' bf c e> <g bf c e>] r
  <f, f'> [<f' a c ef> <f a c ef>] r
  <bf, bf'> [<f' bf d> <f bf d>] r
  <bf, bf'> [<f' bf d> <f bf d>] r
  
  <ef ef,> [<ef g c> <ef g c>] r
  <ef ef,> [<ef g c> <ef g c>] r
  <ef ef,> [<ef g c ef> <ef g c ef>] r
  <bf bf'> [<f' bf d> <f bf d>] r
  c <g' bf c> f <a c ef>
  <bf-> d>4 <bf-> bf,>8 r
  
  r <f-> f,> [<g-> g,> <a_> a,>]
  <bf bf,> [<f bf d> <f bf d>] r
  f [<a c e> <a c e>] r
  <bf bf,> [<f bf d> <f bf d>] r
  r <f f,> [<g g,> <a a,>]
  \break
  <bf bf,> [<f bf d> <f bf d>] r
  a <cs e g> a <c e g>
<<
  { r <a c> [<a c>] }
  \\
  { d,4~ d8 }
>>
  r
  r <f f,> [<g g,> <a a,>]
  <bf bf,> [<f bf d> <f bf d>] r
  
  f [<a c ef> <a c ef>] r
  <bf bf,> [<bf d f,> <bf d f,>] r
  r <f-> f,> [<g-> g,> <a-> a,>]
  <bf bf,> [<bf d f,> <bf d f,>] r
  f <a c ef> f <a c ef>
<<
  { r <f bf> [<f bf>] }
  \\
  { bf,4~-> bf8  }
>>
  r
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
