%
% Josquin: Gaude Virgo
% Sources:
%   [NJE] Josquin, and Willem (Wilhelmus Ignatius Maria) Elders.
%         “The collected works of Josquin des Prez / Vol. 24, Motets on non-biblical texts.
%         4: De beata Maria virgine. 2 / ed. by Willem Elders.” 2007.
%   [BrusBR 9126] Choirbook for Philip the Fair and Juana of Castile: ms. 9126, ff.178'-180
%         (the very last entry of the manuscript). Koninklijke Bibliotheek van België. Reference found in [NJE].
%
% Copyright: Eric Jan Malotaux <e.j.malotaux@gmail.com>, 2024
%

\language "english"
\version "2.24.1"
#(set-global-staff-size 19)
#(set-default-paper-size "a4")

\paper {
  system-count = 13
  page-count = 4
}

\header {
  title = "Gaude virgo"
  composer = "Josquin"
  tagline = \markup \smaller \smaller { Engraved by Eric Malotaux with LilyPond 2.24.1 }
  copyright = \markup \column {
    \line { " " } % More space between music and Copyright.
    \line { " " }
    \line { " " }
    \line {
      \smaller {
        \char ##x00A9 2024 by Eric Malotaux
      }
    }
  }
}

alla-breve = {
  \time 2/1
  \once \override Staff.TimeSignature.stencil =
  #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"timesig.C22" #}))
}

perfectus = #(define-music-function (parser location notes) (ly:music?)
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

superiusIncipit = \incipit { \key d \minor \time 2/2 \relative d' {d\breve d1 d} }

superiusMusic = \relative d' {
  \clef treble
  \key d \dorian
  \alla-breve

  d\breve d1 d f2. g4 a2 bf2 a bf1 a4 g a1
  d, d d f2. g4 a2 bf a bf1 a4 g a1 r2 d c d1 c4 bf c1 r1
  a a c2. d4 e f e2. c4 d e f2 e2. c4 d e f2 e2. d4 d1 cs2 d \longa

  R\longa*6
  R\breve

  r1 d f f e c d d c a bf bf a f g g f2
  c' d f1 ef4 d ef1 f2 d f e1 d1 c4 bf c2 a c b1 a2 c2. b4 gs2 a1 gs2 a\breve

  r2 a1 g4 fs g2 fs d a' b a1 g4 fs g2 fs d d' e4 d fs2. e4 d1 cs2 d1

  R\longa
  R\breve

  r2 a1 b1 cs1 d1 e1 fs2. e4 fs d e2 a, b cs d e1 cs2 b1 a r
  r e' fs d e cs d d
  r e fs d e cs2. b4 cs2 d1 cs2 d1 r

  \perfectus {
    a\breve b1 g a\breve b1 cs d\breve e1 r
    a,\breve b1 g a\breve b1 cs d\breve e1 r
    e\breve fs1 d e1. d2 d\breve cs1
  }
  d1. cs2 a1

  cs b d a cs  b2. cs4 d1 e r
  cs b d a cs b2. cs4  d1 e

  \perfectus { e\breve fs1 d e1. d2  d\breve cs1 } d\breve

  r2 d, f2. g4 a2 bf a1 r1 r2 d, f2. g4 a bf a1 g2 a f' f f1 e4 d cs\longa\fermata d\longa

  \fine
}

superiusLyrics = \lyricmode {
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
  
  Gau -- de, que post ip -- sum scan -- dis,
  Et est ho -- nor ti -- bi gran -- dis
  In ce -- li pa -- _ la -- ti -- o. _ _
  
  U -- bi fruc -- tus ven -- tris _ tu -- i
  No -- bis de -- tur per te _ fru -- i
  In per -- en -- ni _ gau -- di -- o.
  
  Al -- le -- _ _ lu -- ja, al -- le -- _ _ _ _ lu -- ja, al -- le -- lu -- _ _ _ ja.
}

altusIncipit = \incipit { \clef "mensural-c1" \key d \dorian \time 2/2 \relative d' {r\longa d\breve d1 d} }

altusMusic = \relative d' {
  \clef treble
  \key d \dorian
  \alla-breve

  R\longa

  d\breve d1 d f2. g4 a2 \once \set suggestAccidentals = ##f bf2 a bf1 a4 g a1
  d, d d f2. g4 a2 bf a bf1 a4 g  a \breve
  r1 a a c1. b2 a g  f2. e4 d2 c d1 e d\longa

  R\longa*7

  r1 a' c c bf g a a g\breve
  r1 a \once \set suggestAccidentals = ##f bf bf a f g g
  \perfectus { f1 d2 c e f g1 e2 d f g \[a1 e\] g \[f c\] d } e\breve

  cs1. b4 a b2 a r a' b a1 g4 fs g2 fs d a' b a1 g4 fs g2 fs d2. fs4 e1 d

  R\longa
  R\breve

  r1 d e fs g a b cs d2 a b cs2. b4 a1 gs2 \[ a1 d, \]
  b' cs a b g a a r
  b cs a b g a a\breve
  \perfectus {
    fs\breve.
    r1 d\breve  e1 cs d\breve e1 fs g1. fs2 a1
    r1 d,\breve e1 cs d\breve e1 fs g1. fs2 a1
    r a\breve b1 g a a a\breve
  }
  fs1 r
  fs e g d fs e2. fs4 g1 a r
  fs e g d fs e2. fs4 g1 a\breve
  \perfectus { r1 a\breve b1 g a a a\breve } fs1
  r2 d f2. g4 a2 bf a d, f2. g4  a bf a1 g2 a\breve
  r2 d, f2. g4 a bf a1 g2 a\longa\fermata a\longa

  \fine
}

altusLyrics = \lyricmode {
  Gau -- de vir -- go _ _  ma -- ter Chris -- _ _ ti,
  Que per au -- rem _ _ con -- ce -- pis -- _ _ ti,
  Ga -- bri -- e -- _ _ _ _ _ _ le nun -- ti -- o.
  
  Gau -- de, qui -- a tu -- i na -- ti,
  Quem do -- le -- bas mor -- tem pa -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ti,
  Ful -- _ _ _ get re -- sur -- rec -- _ _ _ ti -- o, re -- sur -- rec -- _ _ _ _ _ _ ti -- o.
  
  Et in ce -- lum te vi -- den -- te, te vi -- den -- _ _ _ te, __ _
  Mo -- tu fer -- tur pro -- pri -- o, mo -- tu fer -- tur pro -- pri -- o. _
  
  Gau -- de, que post ip -- sum scan -- _ dis,
  Et est ho -- nor ti -- bi gran -- _ dis
  In ce -- li pa -- la -- ti -- o.
  
  U -- bi fruc -- tus ven -- tris _ tu -- i
  No -- bis de -- tur per te _ fru -- i
  In per -- en -- ni gau -- di -- o.
  
  Al -- le -- _ _ lu -- ja, al -- le -- _ _ _ _ _ ja, al -- le -- _ _ _ _ lu -- _ ja.
}

tenorIncipit = \incipit {
  \clef "mensural-c4" \key d \dorian \time 2/2 \relative d {
    r\longa r\longa r\longa r\longa r\longa r\longa r\longa r\longa
    r1 d1 f g
  }
}

tenorMusic = \relative d {
  \clef "treble_8"
  \key d \dorian
  \alla-breve

  R\longa*8

  r1 d f1 g a2 d, d'2. c4 a2 c bf1 a1
  r2 d, f1 g a2 d, d'2. c4 a2 c bf1 a2 f g d4 e f g a1 gs2 a1
  c d e   a,4 bf c d e d f2  a,4 bf c d e d f2. e4 d1 cs2 d\longa

  c1. bf4 a g\breve r2 c d f1 ef4 d ef2 d1 c4 bf a2 d g,\breve d'2
  a bf d1 c4 bf c2 g a1 a g r2 d' e1 e d r2 a b1 b \[ a\breve d \]

  R\longa*2

  r2 a1 b cs d1 e fs2. e4 fs d e1 d r

  R\longa*2

  r1 r2 e1 fs d e cs d1 b cs2. a4 \[ a1 fs' \] d e cs d b cs2. a4 fs'2. e4 fs d e1 d\breve

  R\longa*4

  \perfectus { cs\breve d1 b cs\breve d1 e\breve } d1 r
  
  d cs2 e1 b d a2. b4 cs2 d e fs1 e2 cs d2. cs4 a2 e'1 b d a2. b4 cs2 d e fs1 e %94
  
  \perfectus { cs\breve d1 b cs\breve d1 e\breve } d\breve.

  r2 d f2. g4 a2 d, r f1 ef4 d c2 d a f'1 ef4 d c2 d a2. b4 c2 d e f1 e4 d e\breve\fermata d\longa

  \fine
}

tenorLyrics = \lyricmode {
  Gau -- de, qui -- a _ de -- _ _ o ple -- na,
  Pe -- pe -- ris -- ti _ si -- _ _ ne pe -- na, pe -- _ _ _ _ _ _ _ na,
  Cum pu -- do -- _ _ _ _ _ _ ris li -- _ _ _ _ _ _ _ _ li -- o.
  
  Gau -- _ _ de, qui -- a tu -- _ _ _ _ _ _ _ i na -- ti,
  Quem do -- le -- _ _ bas mor -- tem pa -- ti,
  mor -- tem pa -- ti, mor -- tem pa -- ti. __ _
  
  Gau -- de, Chris -- to a -- scen -- _ _ _ den -- te.
  Mo -- tu fer -- tur pro -- pri -- o, _ _ _ _
  mo -- tu fer -- tur pro-_ _ _ _ _ _ _ pri -- o.
  
  In ce -- li pa -- la -- ti -- o. U -- bi fruc -- tus ven -- tris _ _ tu -- _ _ i
  No -- _ _ bis de -- tur per te _ _ fru -- _ _ i
  In per -- en -- ni gau -- di -- o.
  
  Al le -- _ lu -- ja, al -- _ _ le -- lu -- ja, al -- _ _ le -- lu -- ja, _ _ al -- le -- lu -- _ _ _ ja.
}

bassusIncipit = \incipit {
  \clef "mensural-c4" \key d \dorian \time 2/2 \relative d {
    r\longa r\longa r\longa r\longa r\longa r\longa r\longa r\longa r\longa
    r1 d1 f g
  }
}

bassusMusic = \relative d {
  \clef bass
  \key d \dorian
  \alla-breve

  R\longa*9

  r1 d f g a2 d, d'2. c4 a2 c bf1 a r2 d,2 f1 g a2 d, d'2. c4 a2 c b1 a
  r2 f1 g1 a2. g4 a bf g2 a2. g4 a bf g2 a f g e1 d\longa
  r1 a' bf bf a f g g f\breve

  R\breve

  r1 d ef ef  d a' bf bf a r2 e f1 f e\breve

  r2 a1 g4 fs g2 fs d1

  R\longa*2

  r1 d e fs g a b cs d\breve

  R\longa*2
  R\breve

  a1 b g a fs g \[ e a \] \[ d, d' \] g, a fs g e fs2. g4  a2 d, a'1 d,\longa

  R\breve*7

  \perfectus { a'\breve fs1 g e \[ fs d \] a'\breve } d,\breve

  r1 a' e2 g1 d d2 a'1 g2. fs4 \[ d1 a' \]
  r2 d, a'2. g4 e2 g1 d d2 a'1 g2. fs4 \[ d1 a' \]
  \perfectus { a\breve fs1 g e \[ fs d \] a'\breve } d,\longa

  r1 r2 d f2. g4 a2 bf a d, f2. g4 a2 bf a d, f2. g4 a2 bf a\longa\fermata d,\longa

  \fine
}

bassusLyrics = \lyricmode {
  Gau -- de, qui -- a _ de -- _ _ o ple -- na,
  Pe -- pe -- ris -- ti _ si -- _ _ ne pe -- na,
  Cum pu -- do -- _ _ _ ris li -- _ _ _ _ _ _ _ li -- o.
  
  Gau -- de, qui -- a tu -- i na -- ti,
  Quem do -- le -- bas mor -- tem pa -- ti, mor -- tem pa -- ti,
  Ful -- _ _ _ _ get.
  
  Gau -- de, Chris -- to a -- scen -- den -- te,
  Mo -- tu fer -- tur pro -- pri -- o, __ _ _ _ mo -- tu fer -- tur pro -- _ _ _ _ pri -- o.
  
  In ce -- li pa -- la --  _ ti -- o. U -- bi fruc -- tus ven -- tris tu -- _ i __ _
  No -- bis _ _ de -- tur per te fru -- _ i __ _
  In per -- en -- ni gau -- _ di -- o.
  
  Al -- le -- _ _ lu -- ja, al -- le -- _ _ lu -- ja, al -- le -- _ _ lu -- _ ja.
}

musicDefinition = \new ChoirStaff <<

  \new Staff \with {
    instrumentName = "Superius"
    shortInstrumentName = "S"
    midiInstrument = "voice oohs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \superiusIncipit
      \tag #'dDorian \superiusMusic
      \tag #'cDorian \transpose d c \superiusMusic
    }
  >>
  \new Lyrics \lyricsto superius \superiusLyrics

  \new Staff \with {
    instrumentName = "Altus"
    shortInstrumentName = "A"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = altus {
      \altusIncipit
      \tag #'dDorian \altusMusic
      \tag #'cDorian \transpose d c \altusMusic
    }
  >>
  \new Lyrics \lyricsto altus \altusLyrics

  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = tenor {
      \tenorIncipit
      \tag #'dDorian \tenorMusic
      \tag #'cDorian \transpose d c \tenorMusic
    }
  >>
  \new Lyrics \lyricsto tenor \tenorLyrics

  \new Staff \with {
    instrumentName = "Bassus"
    shortInstrumentName = "B"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = bassus {
      \bassusIncipit
      \tag #'dDorian \bassusMusic
      \tag #'cDorian \transpose d c \bassusMusic
    }
  >>
  \new Lyrics \lyricsto bassus \bassusLyrics

>>

layoutDefinition = \layout {
  \enablePolymeter
  indent = 5\cm
  incipit-width = 3\cm
  \override Staff.NoteHead.style = #'baroque
  \context {
    \Staff
    \consists Ambitus_engraver
    \RemoveEmptyStaves
    suggestAccidentals = ##t
  }
  \context {
    \Voice
    \remove Note_heads_engraver
    \consists Completion_heads_engraver
  }
}

midiDefinition = \midi {
  \enablePolymeter
  \tempo 1=75
}

\book {
  \bookOutputSuffix "d-dorian"
  \score {
    \keepWithTag #'dDorian
    \musicDefinition
    \layoutDefinition
    \midiDefinition
  }
}

\book {
  \bookOutputSuffix "c-dorian"
  \score {
    \keepWithTag #'cDorian
    \musicDefinition
    \layoutDefinition
    \midiDefinition
  }
}
