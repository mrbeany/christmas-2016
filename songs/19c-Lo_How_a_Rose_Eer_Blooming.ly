\version "2.14.2"

songDedication = \markup {for D.B}
songTitle = "A Crappity Crap-crap Song"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Lo, How a Rose E’er Blooming } }
tuneComposer = "Arranged by Michael Praetorius (1571–1621)"
tuneSource = \markup { from {\italic {Christmas Carols and Hymns for School and Choir}, 1910}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key g \major
    \time 4/4
    \tempo 4 = 100
}

sopMusic = \relative c'' {
  d2 d4 d | e d d2 | b c |  b4 a2 g4  |
  g  fis g2 | d' d4 d | e d d2 | b c |
  b4 a2 g4 | g fis g2 | b4\rest b4 a fis | g e d2 |
  b'4\rest d4 d d | e d d2 |  b c |  b4 a2 g4 |  g fis g2 \bar "|."
}

altoMusic = \relative c'' {
  b2 b4 g |  g g fis2 |  e e |  d4 d e4.( b8 |
  d4) d4 d2 |  b'2 b4 g |  g g fis2 |  e e |
  d4 d e4.( b8 |  d4) d d2 |  s4 g e d |  d cis d2 |
  s4 fis a g |  g g fis2 |  e e |  g4 e fis2( |  d4) d d2 \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  Lo, how a Rose e’er bloom -- ing
  From ten -- der stem __ _ has sprung!
  Of Jes -- se’s lin -- eage com -- ing
  As men of old __ _ have sung.
  It came, a flow’r -- et bright,
  A -- mid the cold of win -- ter
  When half -- spent was __ _ the night.
}


tenorMusic = \relative c' {
  d2 d4 b |
  c b a2 |
  g g |
  b4 d c( b~ |

  b) a b2 |
  d d4 b |
  c b a2 |
  g g |

  b4 d c( b~ |
  b) a b2 |
  s4 d4 c b |
  b a fis8[( g] a4) |

  s4 a4 a b |
  c b a2 |
  gis a |
  d4 c b2( |
  b4) a b2 \bar "|."
}


bassMusic = \relative c {
  g'2 g4 g |
  c g d2 |
  e c |
  g'4 fis e2 |

  d2 g |
  g g4 g |
  c g d2 |
  e c |

  g'4 fis e2 |
  d g, |
  d'4\rest g a b |
  g a d,8[( e] fis4) |

  d4\rest d fis g |
  c, g' d2 |
  e a, |
  b4 c d2 |
  d g \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
    I want to sing a song that~might be a -- bout a big old crap.
    I think this song might be a -- bout my big -- gest ev -- er crap.
    I had a real big crap.
    I think you might not be -- lieve the size of my big -- est crap.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I think you might not be -- lieve that my crap it was so huge.
    I thought it might be big -- ger than my mom's Lab -- ra -- dor Hugh.
    My big old crap it~was huge.
    I think it was so huge that I might ne -- ver poop a -- gain.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    And, now I don't know how that corn it stayed so well with -- in.
    I thought I once heard that corn, you di -- gest it, just leaving skin.
    I think that my~poop, it~had skin.
    Tru -- ly, why does that corn skin feel so wrong to have with -- in?
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    Per -- haps be -- cause I stopped eat -- ing corn when I was only ten.
    I de -- cid -- ed corn was no good so I just gave it up.
    But why was it still within?
    Per -- haps that corn was a time trav' -- ling lit -- tle piece of crap.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
}

\bookpart{
    \tocItem \songTitle
    \header {
        title = \songTitle
        poet = \songPoet
        dedication = \songDedication
        %translator = \songTranslator
        composer = \tuneComposer
        arranger = \tuneArranger
        source = \tuneSource
        copyright = \albumCopyright
        tagline = \albumTagline
    }

    \score {
        <<
            \new Staff \new Voice = "sopranos" { \global \sopMusic }
            \new Lyrics \lyricsto "sopranos" \lyricsA
            \new Lyrics \lyricsto "sopranos" \lyricsB
            \new Lyrics \lyricsto "sopranos" \lyricsC
            \new Lyrics \lyricsto "sopranos" \lyricsD
            \new Lyrics \lyricsto "sopranos" \lyricsE
            \new Lyrics \lyricsto "sopranos" \lyricsF
            \new Lyrics \lyricsto "sopranos" \lyricsG
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

