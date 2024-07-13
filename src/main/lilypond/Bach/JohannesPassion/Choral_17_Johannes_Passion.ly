%
% J.S. Bach: Koraal 17 - "Ach großer König. Uit de Johannes Passion. Met nederlandse tekst, vertaald door
% Eva-Maria Kintzel - van Stokkum
%

\version "2.24.1"
#(set-default-paper-size "a4")

\paper {
}

\header {
  subtitle = "17. Choral"
  title = "Johannes Passion"
  composer = "J.S. Bach"
  opus = "BWV 245"
  tagline = \markup \smaller \smaller { Engraved by Eric Malotaux with LilyPond 2.24.1 }
}


superiusMusic = \relative a' {
  \clef treble
  \key a \minor

  \repeat volta 2 {
    \partial 4 a a a gis e a b c c d( c16 b c8) b4\fermata
    b  c d8( e16 f) e4 c f f e8([ d)] c d d2 c4\fermata
    c b a g8[ fis] e[ fis] g4 g a g f2 e4\fermata
    e' d c8[ b] b2 a2.\fermata
  }
  \fine
}

superiusLyrics = \lyricmode {
  <<
    {
      \override LyricText.self-alignment-X = #LEFT
      Ach, gro -- te Ko -- ning, groot te al -- len tij -- de,
      Hoe kan ik toch uw trouw nog meer ver _ -- sprei -- den?
      Geen men -- sen -- hart _ zou _  ooit kun -- nen be -- den -- ken,
      Wat u te _ schen -- ken.
    }
    \new Lyrics
    {
      \override LyricText.self-alignment-X = #LEFT
      Met mijn ver -- stand zal ik het niet be -- grij -- pen.
      Kan ik uw goed -- heid er -- gens mee ver -- ge  -- lij  -- ken?
      Hoe kan ik toch _ uw _ gro -- te lief -- des -- da -- den
      ooit terug -- be - ta -- len?
    }
  >>
}

altusMusic = \relative d' {
  \clef treble
  \key a \minor

  \repeat volta 2 {
    \partial 4 c8[ d] e4 e e b e8[ fis] gis4 a a a2 gis4\fermata
    gis a g g f a a a e a(g) g\fermata
    a a8[( g]) g[( fis]) e4 e e8[( d]) cis[( d]) e4 e e( d) cis\fermata
    a' a8[( b]) e,[( d]) f4( e8[d]) cis2.\fermata
  }
  \fine
}

altusLyrics = \lyricmode {
  <<
    {
      \override LyricText.self-alignment-X = #LEFT
      Ach, _ gro -- te Ko -- ning, groot _ te al -- len tij -- de,
      Hoe kan ik toch uw trouw nog meer ver -- sprei -- den?
      Geen men -- sen -- hart zou ooit kun -- nen be -- den -- ken,
      Wat u te schen -- ken.
    }
    \new Lyrics
    {
      \override LyricText.self-alignment-X = #LEFT
      Met _ mijn ver -- stand zal ik _ het niet be -- grij -- pen.
      Kan ik uw goed -- heid er -- gens mee verge  -- lij  -- ken?
      Hoe kan ik toch uw gro -- te lief -- des -- da -- den
      ooit terug -- be -- ta -- len?
    }
  >>
}

tenorMusic = \relative a {
  \clef "treble_8"
  \key a \minor

  \repeat volta 2 {
    \partial 4 a8 b c4 c b gis a d e e f( a,) e'\fermata
    e e b c a d d c c c( b) e\fermata
    e fis8( e) c4 b b b bes a a a2 a4\fermata
    c c8 b a4 a( gis) e2.\fermata
  }
  \fine
}

tenorLyrics = \lyricmode {
  <<
    {
      \override LyricText.self-alignment-X = #LEFT
      Ach, _ gro -- te Ko -- ning, groot te al -- len tij -- de,
      Hoe kan ik toch uw trouw nog meer ver -- sprei -- den?
      Geen men -- sen -- hart zou ooit kun -- nen be -- den -- ken,
      Wat u _ te schen -- ken.
    }
    \new Lyrics
    {
      \override LyricText.self-alignment-X = #LEFT
      Met _ mijn ver -- stand zal ik het niet be -- grij -- pen.
      Kan ik uw goed -- heid er -- gens mee verge  -- lij  -- ken?
      Hoe kan ik toch uw gro -- te lief -- des -- da -- den
      ooit terug _ -- be -- ta -- len?
    }
  >>
}

bassusMusic = \relative a {
  \clef bass
  \key a \minor

  \repeat volta 2 {
    \partial 4 a4 a,8[ b] c[ d] e[ f] e[ d] c[ d] c[ b] a[ e']a g f e f d e4\fermata
    e a8[ g] f[ g] c,[ d] e[ f] d[ e] f[ g] a[ b] a[ g] f e f g c,4\fermata
    a' dis,8[ e] fis[ dis] e[ fis] g[ fis] e[ f] e[ d] cis[ a] b[ cis] d e f g a4\fermata
    a8 g fis[ gis] a[ f] d[ b] e4 a,2.\fermata
  }
  \fine
}

bassusLyrics = \lyricmode {
  <<
    {
      \override LyricText.self-alignment-X = #LEFT
      Ach, gro _ -- te _ Ko _ -- ning, _ groot _ te _ al _ -- len _ tij _ _ _ -- de,
      Hoe kan _ ik _ toch _ uw _ trouw _ nog _ meer _ ver _ -- sprei _ _ _ -- den?
      Geen men _ -- sen _ -- hart _ zou _ ooit _ kun _ -- nen _ be _ -- den _ _ _ -- ken,
      Wat _ u _ te _ schen _ _ -- ken.
    }
    \new Lyrics
    {
      \override LyricText.self-alignment-X = #LEFT
      Met mijn _ ver - stand _ zal _ ik _ het _ niet _ be _ -- grij _ _ _ -- pen.
      Kan ik _ uw _ goed _ -- heid _ er - gens _ mee _ ver -- ge -- lij _ _ _ -- ken?
      Hoe kan _ ik _ toch _ uw _ gro - te _ lief _ -- des - da _ _ _ -- den
      ooit _ terug _ -- be _ -- ta _ - len?
    }
  >>
}

musicDefinition = \new ChoirStaff <<

  \new Staff \with {
    instrumentName = "Soprano"
    midiInstrument = "choir aahs"
  } <<
    \accidentalStyle choral-cautionary
    \new Voice = superius {
      \superiusMusic
    }
  >>
  \new Lyrics \lyricsto superius \superiusLyrics

  \new Staff \with {
    instrumentName = "Alto"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = altus {
      \altusMusic
    }
  >>
  \new Lyrics \lyricsto altus \altusLyrics

  \new Staff \with {
    instrumentName = "Tenore"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = tenor {
      \tenorMusic
    }
  >>
  \new Lyrics \lyricsto tenor \tenorLyrics

  \new Staff \with {
    instrumentName = "Basso"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = bassus {
      \bassusMusic
    }
  >>
  \new Lyrics \lyricsto bassus \bassusLyrics

>>

layoutDefinition = \layout {
}

midiDefinition = \midi {
  \tempo 4=75
}

\book {
  \score {
    \musicDefinition
    \layoutDefinition
    \midiDefinition
  }
}
