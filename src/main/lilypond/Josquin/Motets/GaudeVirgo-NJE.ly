\language "english"
\version "2.24.2"

\header {
  title = "Gaude virgo"
  composer = "Josquin"
  copyright = \markup { Copyright \char ##x00A9 2024 by Eric Malotaux }
}

ficta = { \set Staff.suggestAccidentals = ##t }
recta = { \set Staff.suggestAccidentals = ##f }

alla-breve = {
  \time 2/1
  \once \override Staff.TimeSignature.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob
                            #{ \markup \musicglyph #"timesig.C22" #}))
}


perfectus =
#(define-music-function (parser location notes) (ly:music?)
   (_i "Een gedeelte in drie-eende maat, die evenlang duurt als twee-eende maat")
   #{
     \scaleDurations 2/3 {
       \time 3/1
       \once \override Staff.TimeSignature.style = #'single-digit
       \set Timing.measureLength = #(ly:make-moment 2)
       #notes
     }
     \alla-breve
   #}
   )

superius =
\relative d' {
  \key d \minor
  \alla-breve
  \tempo 1=90
  \ficta

  d\breve d1 d f2. g4 a2 bf2 a bf1 a4 g a1
  d, d d f2. g4 a2 bf a bf1 a4 g a1 r2 d c d1 c4 bf c1 r1
  a a c2. d4 e f e2. c4 d e f2 e2. c4 d e f2 e2. d4 d1 cs2 d \longa

  R\longa*6
  R\breve

  r1 d f f e c d d c a bf bf a f g g f2
  c' d f1 e4 d e1 f2 d f e1 d1 c4 b c2 a c b1 a2 c2. b4 g2 a1 gs2 a\breve

  r2 a1 g4 f g2 f d a' bf a1 g4 f g2 f d d' e4 d f2. e4 d1 cs2 d1

  R\longa
  R\breve

  r2 a1 b1 c1 d1 e1 f2. e4 f d e2 a, b c d e1 c2 b1 a r
  r e' f d e c d d
  r e f d e c2. b4 c2 d1 cs2 d1 r

  \perfectus {
    a\breve b1 g a\breve b1 c d\breve e1 r
    a,\breve b1 g a\breve b1 c d\breve e1 r
    e\breve f1 d e1. d2 d\breve cs1
  }
  d1. c2 a1

  c b d a c  b2. c4 d1 e r
  c b d a c b2. c4  d1 e

  \perfectus {
    e\breve f1 d e1. d2  d\breve cs1
  }
  d\breve

  r2 d, f2. g4 a2 bf a1 r1 r2 d, f2. g4 a bf a1 g2 a f' f f1 e4 d cs\longa\fermata d\longa
  \bar "|."
}
altus =
\relative d' {
  \key d \dorian
  \alla-breve

  R\longa

  d\breve d1 d f2. g4 a2 bf2 a \ficta bf1 a4 g a1
  d, d d f2. g4 a2 bf a bf1 a4 g  a \breve
  r1 a a c1. b2 a g  f2. e4 d2 c d1 e d\longa

  R\longa*7

  r1 a' c c bf g a a g\breve
  r1 a  bf bf a f g g
  \perfectus {
    f1 d2 c e f g1 e2 d f g a1 e g f c d
  }
  e\breve

  c1. b4 a b2 a r a' bf a1 g4 f g2 f d a' bf a1 g4 f g2 f d2. f4 e1 d

  R\longa
  R\breve

  r1 d e f g a b cs d2 a b c2. b4 a1 gs2 \[ a1 d, \]
  b' c a b g a a r
  b c a b g a a\breve
  \perfectus {
    f\breve.
    r1 d\breve  e1 c d\breve e1 f g1. f2 a1
    r1 d,\breve e1 c d\breve e1 f g1. f2 a1
    r a\breve b1 g a a a\breve
  }
  f1 r
  f e g d f e2. f4 g1 a r
  f e g d f e2. f4 g1 a\breve
  \perfectus {
    r1 a\breve b1 g a a a\breve
  }
  f1
  r2 d f2. g4 a2 bf a d, f2. g4  a bf a1 g2 a\breve
  r2 d, f2. g4 a bf a1 g2 a\longa\fermata a\longa

  \bar "|."
}
tenor =
\relative d {
  \key d \dorian
  \alla-breve

  R\longa*8

  r1 d f1 g a2 d, d'2. c4 a2 c \ficta bf1 a1
  r2 d, f1 g a2 d, d'2. c4 a2 c bf1 a2 f g d4 e f g a1 g2 a1
  c d e   a,4 b c d e d f2  a,4 b c d e d f2. e4 d1 cs2 d\longa

  c1. bf4 a g\breve r2 c d f1 e4 d e2 d1 c4 bf a2 d g,\breve d'2
  a bf d1 c4 b c2 g a1 a g r2 d' e1 e d r2 a b1 b \[ a\breve d \]

  R\longa*2

  r2 a1 b c d1 e f2. e4 f d e1 d r

  R\longa*2

  r1 r2 e1 f d e c d1 b c2. a4 \[ a1 f' \] d e c d b c2. a4 f'2. e4 f d e1 d\breve

  R\longa*4

  \perfectus {
    c\breve d1 b c\breve d1 e\breve
  }
  d1 r
  d c2 e1 b d a2. b4 c2 d e f1 e2 c d2. c4 a2 e'1 b d a2. b4 c2 d e f1 e %94
  \perfectus {
    c\breve d1 b c\breve d1 e\breve
  }
  d\breve.

  r2 d f2. g4 a2 d, r f1 e4 d c2 d a f'1 e4 d c2 d a2. b4 c2 d e f1 e4 d e\breve\fermata d\longa

  \bar "|."
}
bassus =
\relative d {
  \key d \dorian
  \alla-breve

  R\longa*9

  r1 d f g a2 d, d'2. c4 a2 c \ficta bf1 a r2 d,2 f1 g a2 d, d'2. c4 a2 c bf1 a
  r2 f1 g1 a2. g4 a bf g2 a2. g4 a bf g2 a f g e1 d\longa
  r1 a' bf bf a f g g f\breve

  R\breve

  r1 d e e  d a' bf bf a r2 e f1 f e\breve

  r2 a1 g4 f g2 f d1

  R\longa*2

  r1 d e f g a b cs d\breve

  R\longa*2
  R\breve

  a1 bf g a f g \[ e a \] \[ d, d' \] g, a f g e f2. g4  a2 d, a'1 d,\longa

  R\breve*7

  \perfectus {
    a'\breve f1 g e \[ f d \] a'\breve %83
  }
  d,\breve

  r1 a' e2 g1 d d2 a'1 g2. f4 \[ d1 a' \]
  r2 d, a'2. g4 e2 g1 d d2 a'1 g2. f4 \[ d1 a' \]
  \perfectus {
    a\breve f1 g e \[ f d \] a'\breve
  }
  d,\longa

  r1 r2 d f2. g4 a2 bf a d, f2. g4 a2 bf a d, f2. g4 a2 bf a\longa\fermata d,\longa

  \bar "|."
}

music =
\new ChoirStaff
<<
  \new Staff \with {
    instrumentName = "Superius"
    shortInstrumentName = "S"
    midiInstrument = "choir aahs"
    \consists Bar_number_engraver
  }
  {
    \new Voice = superius {
      \incipit { \key d \minor \time 2/2 \relative d' {d\breve d1 d} }
      \clef treble
      \tag #'originalKey { \superius }
      \tag #'inC { \transpose d c \superius }
    }
    \addlyrics {
      Gau -- de vir -- go _ _  ma -- ter Chris -- _ _ ti,
      Que per au -- rem _ _ con -- ce -- pis -- _ _ ti, con -- ce -- pis -- _ _ ti,
      Ga -- bri -- e -- _ _ _ _ _ _ _ _ _ _ _ _ _ le _ nun -- ti -- o.
      Gau -- de, qui -- a tu -- i na -- ti,
      Quem do -- le -- bas mor -- tem pa -- ti, mor -- tem pa -- _ _ _ ti,
      mor -- tem pa -- _ _ _ ti, mor -- tem pa -- _ _ _ _ _ _ ti,
      Ful -- _ _ _ _ get re -- sur -- rec -- _ _ _ ti -- o, re -- sur -- _ rec -- _ _ ti -- o.
      Et in ce -- lum te vi -- _ _ _ den -- _ te, te vi -- den -- _ _ te,
      Mo -- tu fer -- tur pro -- pri -- o,
      mo -- tu fer -- tur pro -- _ _ _ pri -- o.
      Gau -- de, que post ip -- sim scan -- dis,
      Et est ho -- nor ti -- bi gran -- dis
      In ce -- li pa -- _ la -- ti -- o. _ _
      U -- bi fruc -- tus ven -- tris _ tu -- i
      No -- bis de -- tur per te _ fru -- i
      In per -- en -- ni _ gau -- di -- o.
      Al -- le -- _ _ lu -- ja, al -- le -- _ _ _ _ lu -- ja,
      al -- le -- lu -- _ _ _ ja.
    }
  }
  \new Staff \with {
    instrumentName = "Altus"
    shortInstrumentName = "A"
    midiInstrument = "choir aahs"
  }
  {
    \new Voice = altus {
      \incipit { \clef "mensural-c1" \key d \dorian \time 2/2 \relative d' {r\longa d\breve d1 d} }
      \clef treble
      \tag #'originalKey { \altus }
      \tag #'inC { \transpose d c \altus }
    }
    \addlyrics {
      Gau -- de vir -- go _ _  ma -- ter Chris -- _ _ ti,
      Que per au -- rem _ _ con -- ce -- pis -- _ _ ti,
      Ga -- bri -- e -- _ _ _ _ _ _ le nun -- ti -- o.
      Gau -- de, qui -- a tu -- i na -- ti,
      Quem do -- le -- bas mor -- tem pa -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ti,
      Ful -- _ _ _ get re -- sur -- rec -- _ _ _ ti -- o, re -- sur -- rec -- _ _ _ _ _ _ ti -- o.
      Et in ce -- lum te vi -- den -- te, te vi -- den -- _ _ _ te, _
      Mo -- tu fer -- tur pro -- pri -- o, mo -- tu fer -- tur pro -- pri -- o-. _
      Gau -- de, que post ip -- sum scan -- _ dis,
      Et est ho -- nor ti -- bi gran -- _ dis  In ce -- li pa -- la -- ti -- o.
      U -- bi fruc -- tus ven -- tris _ tu -- i
      No -- bis de -- tur per te _ fru -- i
      In per -- en -- ni gau -- di -- o.
      Al -- le -- _ _ lu -- ja, al -- le -- _ _ _ _ _ ja, al -- le -- _ _ _ _ lu -- _ ja.
    }
  }
  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T"
    midiInstrument = "choir aahs"
  }
  {
    \new Voice = tenor {
      \incipit {
        \clef "mensural-c4" \key d \dorian \time 2/2 \relative d {
          r\longa r\longa r\longa r\longa r\longa r\longa r\longa r\longa
          r1 d1 f g
        }
      }
      \clef "treble_8"
      \tag #'originalKey { \tenor }
      \tag #'inC { \transpose d c { \tenor } }
    }
    \addlyrics {
      Gau -- de, qui -- a _ de -- _ _ o ple -- na,
      Pe -- pe -- ris -- ti _ si -- _ _ ne pe -- na, pe -- _ _ _ _ _ _ _ na,
      Cum pu -- do -- _ _ _ _ _ _ ris li -- _ _ _ _ _ _ _ _ li -- o.
      Gau -- _ _ de, qui -- a tu -- _ _ _ _ _ _ _ i na -- ti,
      Quem do -- le -- _ _ bas mor -- tem pa -- ti,
      mor -- tem pa -- ti, mor -- tem pa -- ti-. _
      Gau -- de, Chris -- to a -- scen -- _ _ _ den -- te.
      Mo -- tu fer -- tur pro -- pri -- o, _ _ _ _
      mo -- tu fer -- tur pro-_ _ _ _ _ _ _ pri -- o.
      In ce -- li pa -- la -- ti -- o. U -- bi fruc -- tus ven -- tris _ _ tu -- _ _ i
      No -- _ _ bis de -- tur per te _ _ fru -- _ _ i
      In per -- en -- ni gau -- di -- o.
      Al le -- _ lu -- ja, al -- _ _ le -- lu -- ja, al -- _ _ le -- lu -- ja, _ _ al -- le -- lu -- _ _ _ ja.
    }
  }
  \new Staff \with {
    instrumentName = "Bassus"
    shortInstrumentName = "B"
    midiInstrument = "choir aahs"
  }
  {
    \new Voice = bassus {
      \incipit {
        \clef "mensural-c4" \key d \dorian \time 2/2 \relative d {
          r\longa r\longa r\longa r\longa r\longa r\longa r\longa r\longa r\longa
          r1 d1 f g
        }
      }
      \clef bass
      \tag #'originalKey { \bassus }
      \tag #'inC { \transpose d c { \bassus } }
    }
    \addlyrics {
      Gau -- de, qui -- a _ de -- _ _ o ple -- na,
      Pe -- pe -- ris -- ti _ si -- _ _ ne pe -- na,
      Cum pu -- do -- _ _ _ ris li -- _ _ _ _ _ _ _ li -- o.
      Gau -- de, qui -- a tu -- i na -- ti,
      Quem do -- le -- bas mor -- tem pa -- ti, mor -- tem pa -- ti,
      Ful -- _ _ _ _ get.
      Gau -- de, Chris -- to a -- scen -- den -- te,
      Mo -- tu fer -- tur pro -- pri -- o, _ _ _ mo -- tu fer -- tur pro -- _ _ _ _ pri -- o.
      In ce -- li pa -- la --  _ ti -- o. U -- bi fruc -- tus ven -- tris tu -- _ i _
      No -- bis _ _ de -- tur per te fru -- _ i _
      In per -- en -- ni gau -- _ di -- o.
      Al -- le -- _ _ lu -- ja, al -- le -- _ _ lu -- ja, al -- le -- _ _ lu -- _ ja.
    }
  }
>>

\book {
  \bookOutputSuffix "d"
  \score {
    \keepWithTag #'originalKey
    \music

    \layout {
      \enablePolymeter
      indent = 5\cm
      incipit-width = 3\cm
      \override Staff.NoteHead.style = #'baroque
      \context {
        \Staff
        \consists Ambitus_engraver
      }
      \context {
        \Score
        tempoHideNote = ##t
      }
      \context {
        \Voice
        \remove Note_heads_engraver
        \consists Completion_heads_engraver
      }
    }
    \midi {
      \enablePolymeter
    }
  }
}

\book {
  \bookOutputSuffix "c"
  \score {
    \keepWithTag #'inC
    \music

    \layout {
      \enablePolymeter
      indent = 5\cm
      incipit-width = 3\cm
      \override Staff.NoteHead.style = #'baroque
      \context {
        \Staff
        \consists Ambitus_engraver
      }
      \context {
        \Score
        tempoHideNote = ##t
      }
      \context {
        \Voice
        \remove Note_heads_engraver
        \consists Completion_heads_engraver
      }
    }
    \midi {
      \enablePolymeter
    }%
  }
}