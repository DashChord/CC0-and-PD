% 几个比较现实的问题
% 对于符号p，目前未找到相应语法，以至于排版出现问题

 \version "2.20.0"
 \language "english"

 \header {
  dedication = "Respectfully dedicated to Miss Mary V. Keerl"
  title = "ITALIAN POLKA"
  subtitle = "Performed by the Band at Newport"
  instrument = "Piano"
  composer = "F. D. Benteen"
  arranger = "A lady in Baltimore"
  % Remove default LilyPond tagline
  tagline = ##F
}

 \paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
  \partial 1.
  \tempo "Moderato"
}

right = \relative {
  \global
  \stemUp
  f'8-.[f'-. f-. d-.]
  \appoggiatura d16 c8-.[f,-. f-. d'-.]
  \appoggiatura d16 c8-.[f,-. f-. d'-.]
  c8-.[f,-. f8. f16]
  f8-.[<f-. f'> <f-. f'> d'-.]
  \appoggiatura d16 c8-.[f,-. f-. a-.]
  c[bf g e]
  g-. f-. f-. r8
  % 第一行结束
  
  \ottava #1
  f'[<f f'> <f d' f> <d' bf>]
  \appoggiatura d16 c8[f, f d']
  \appoggiatura d16 c8[f, f d']
  \appoggiatura d16 c8[f, f8. f16]
  f8[<f f'> <f d' f> <d' bf>]
  \appoggiatura d16 c8[f, f a]
  <c f,>[bf <g c,> e]
  <bf-. g'>[<a-. f'> <a-. f'>] \ottava #0 r8
  % 第二行结束
  
  <f a>16 \f(^ \markup {loco.} <g bf> <f a> <g bf>)<a c>( f a c)
  <f,-. a c f>8[<f-. bf d> <f-. a c>] r
  <f-. bf d f>16[<f-. bf d f> <f-. bf d>8] <f-. a c>8 <f-. bf d>
  <f-. bf d>8[<f-. a c> <f a c>8. f16]
  e(f g a) \stemDown bf8. d16
  d8([c f8.)a,16]
  \appoggiatura d16 c8(bf16 c)bf8(g )
  \stemUp <g bf,-.>[<f a,-.> <f a,-.>] r8
  % 第三行结束
  
  \ottava #1
  <f' a>16 \f(<g bf> <f a> <g bf>)<a c>(f a c)
  f8[<f, bf d> <f a c>] r8
  <f bf d f>16 <f bf d f> <f bf d>8 <f a c> <f bf d>
  <f bf d>[<f a c> <f a c>8. f16]
  e f g a bf8. d16
  d8[(c f8.) a,16]
  c8[bf bf e,]
  <g bf,-.>[<f a,-.> <f a,-.>] \ottava #0 r8
  % 第四行结束
  
  <c, e g c>4 ^ \markup {loco.} \arpeggio e16(f g a )
  bf8-.[d-. d-. c-.]
  <c, f a c>4 \arpeggio f16 e f a
  \appoggiatura d16 c(bf c a) f8 r8
  <c e g c>4 \arpeggio e16(f g a )
  bf8[d d c]
  <a f'>16 f <a f'> f
  <b f'>16 g <b f'> g
  <e g c e>4. \fermata r8
  %第一段结束
  
  \ottava #1
  <f' a>16( <g bf> <f a> <g bf>)<a c>(f a c)
  f8 <f, bf d> <f a c>4
  <f bf d f>16 <f bf d f> <f bf d>8 <f a c> <f bf d>
  <f bf d>[<f a c> <f a c>8. f16]
  e(f g a)bf8. d16
  d8[c f8. a,16]
  c8[bf bf e,]
  <bf-. g'>[<a-. f'> <a f'>] r \bar ".."
  \ottava #0
  % 第六行结束
  
  f-.^ \markup {loco.} [<f'-. a> <f-. a> <e-. g>]
  <d f> [ <bf d> <bf d>8. <c e>16 ]
  <d-. f>8 <bf-. d f> <bf d>16 <a c> <bf d> <g e'>
  <a-. f'>8 <f-. a> <c e g c>4
  \appoggiatura d'16 c8[ e, c'8. d16]
  \appoggiatura d16 c8[ f, c'8. f16]
  f (e d c) c' (bf d, e)
  f8-. <a-. c,> <f a,>4
  % 第七行结束
}

left = \relative {
  \global
  <f f,>4 <bf d>
  <f f,>4 <a c>
  <c, c,>4 <g' bf>
  <f f,>4 <a c>
  <f f,>4 <bf d>
  <f f,>4 <a c>
  <c, c,>4 <c g' bf>
  <f f,>4 <f f,>8 r8
  % 第一行结束
  
  <f f,>4 <bf d>
  <f f,>4 <a c>
  <c, c,>4 <g' bf>
  <f f,>4 <a c>
  <f f,>4 <bf d>
  <f f,>4 <a c>
  <c, c,>4 <c g' bf>
  <f f,>4 <f f,>8 r8 \bar ".."
  % 第二行结束
  
  <f, f'>[<a' c> <f, f'> <a' c>]
  <f, f'>[<bf' d> <f, f'> <a' c>]
  <f, f'>[<bf' d> <f, f'> <bf' d>]
  <f, f'>[<a' c> <f, f'> <a' c>] \bar "|"
  <g bf> [c, <g' bf> c,]
  <f a>[c <f a> c]
  <g' bf>[c, <g' bf> c,]
  <f, f'>[<f f'> <f f'>] r
  % 第三行结束
  
  <f f'>[<a' c> <f, f'> <a' c>]
  <f, f'>[<bf' d> <f, f'> <a' c>]
  <f, f'>[<bf' d> <f, f'> <bf' d>]
  <f, f'>[<a' c> <f, f'> <a' c>]
  <g bf>[c, <g' bf> c,]
  <f a>[c <f a> c]
  <g' bf>[c, <g' bf> c,]
  <f f,> <f f,> <f f,> r \bar ".."
  % 第四行结束
  
  <c, e g c>4 \ff \arpeggio r8 \p s
  <g'-. g'> <e-. e'> <c-. c'>4
  <c f a c>4 \ff r8 \p s
  <c'-. c'> <a-. a'> <f-. f'> r
  <c e g c>4 \ff \arpeggio r8 \p s
  <bf'' g>[c, <a' f> c,]
  <f f,>4 <g g,>
  <c,, e g c>4. \fermata r8
  % 第五行结束
  
  <f f'>[<a' c> <f, f'> <a' c>]
  <f, f'>[<bf' d> <f, f'> <a' c>]
  <f, f'>[<bf' d> <f, f'> <bf' d>]
  <f, f'>[<a' c> <f, f'> <a' c>]
  <g bf>[c, <g' bf> c,]
  <f a>[c <f a> c]
  <g' bf>[c, <g' bf> c,]
  <f f,>[<f f,> <f f,>] r
  % 第六行结束
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
