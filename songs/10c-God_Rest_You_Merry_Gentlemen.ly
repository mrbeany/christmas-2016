\version "2.14.2"

songDedication = \markup {for T.B.}
songTitle = "Lovely Giant Dragons"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ God Rest You Merry, Gentlemen } }
tuneComposer = "Traditional"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key g \major
    \time 2/2
    \tempo 4 = 130
}

sopMusic = \relative c' {
    \partial 4
    e4 |
    e b' b a |
    g fis e d |
    e fis g a |
    b2.  e,4 |

    e b' b a |
    g fis e d |
    e fis g a |
    b2 b4\rest  b |

    c a b c |
    d e b a |
    g e fis g |
    a2

    g4 a |
    b2 c4 b |
    b a g fis |
    e2 g8\noBeam fis e4 |
    a2 g4 a |
    b c d e |
    b a g fis |
    e2.
}


bassMusic = \relative c {

}

altoMusic = \relative c' {
  e4 |
  e g fis dis |
  e( d?) c b |
  e dis e e |
  dis2. e4 |

  e g fis dis |
  e( d?) c b |
  e dis e e |
  dis2 s4 e |

  e d d g |
  f( e) d dis |
  e cis d g |
  fis2

  g4( d) |
  d2 e4 d |
  g( fis) e dis |
  e2 b8\noBeam b cis4 |
  d2 e4( fis) |
  g2 g4 g |
  g( fis) e dis |
  e2.
}

altoWords = \lyricmode {
    \set stanza = #"Orig. "
    God rest you mer -- ry, \set ignoreMelismata = ##t
    gen -- tle -- men,
    \unset ignoreMelismata
    Let noth -- ing you dis -- may,
    Re -- mem -- ber Christ our Sav -- ior Was born on Christ -- mas Day,
    To save us all from
    \set ignoreMelismata = ##t
    Sa -- tan’s
    \unset ignoreMelismata
    pow’r When we were gone a -- stray;
  \set stanza = \markup\dynamic"ff  "
    O __ _ ti -- dings of com -- _ fort and joy, com -- fort and joy, O __ ti -- dings of com -- fort and joy.
}

tenorMusic = \relative c {
  e4 |
  g e fis b |
  \slurDotted b( b) g g |
  \slurSolid
  g b b e, |
  fis2. e4 |

  g e fis b |
  \slurDotted b( b) g g |
  \slurSolid
  g b b e, |
  fis2 s4 g |

  a a g g |
  \slurDotted g( g) g fis |
  \slurSolid
  g g a d |
  d( c)

  b( a) |
  g2 g4 g |
  d'( c) b b |
  g2 g8\noBeam g g4 |
  fis( a) d( c) |
  b( g) d' c |
  d( c) b b |
  g2.
}


bassMusic = \relative c {
  e4 |
  e e dis b |
  \slurDotted e( b) c g |
  \slurSolid
  c b e c |
  b2. e4 |

  e e dis b |
  \slurDotted e( b) c g |
  \slurSolid
  c b e c |
  b2 d4\rest e |

  a fis g e |
  \slurDotted b( c) g b |
  \slurSolid
  e e d b |
  d2

  e4( fis) |
  g2 c,4 g' |
  g,( a) b b |
  e2 e8\noBeam e e4 |
  d( c) b( a) |
  g( e') b c |
  g( a) b b |
  e2.
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
Dra -- gons they are love -- ly __ _ things, love -- ly things for me __ _
Dra -- gons they are love -- ly __ _ things love -- ly things for you __ _
I would like a dra -- gon __ _ if it danced up -- on this stool
but it would be so small that it could not gob -- ble up you.
Yes, __ _ it __ _ could not gob -- _ ble up you.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
Have you thought of a big __ _ dra -- gon as big as a car?
You could still climb on top __ _ and ride it like at a bar.
It might be only slight -- ly __ _ lar -- ger than a love -- ly horse.
It might only be lar -- ger than a lit -- tle horse.
It might only be __ _ lar -- _ ger than a __ _ lit -- tle horse.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Have you thought of may -- be dra -- gons
as big as gi -- ant houses?
Love -- ly big dra -- gons,
and they would be fright -- ful when they pout.
But those drag -- ons, don't you see, they would be hard to keep full.
You would need to feed towns to keep their bel -- lies full.
You would need to feed __ _ them towns to __ _ keep them full.

}

lyricsD = \lyricmode {
    \set stanza = #"4. "
Have you thought of may -- be the whole pla -- net is a dra -- gon?
A gi -- ant dra -- gon poop -- ing hu -- mans and war and de -- light.
It's full of fire, true, just like
the heart of the pla -- net Earth that we're on, yes, it is just a dra -- gon.
Yes, the whole pla -- net __ _ is __ _ just a love -- _ ly dra -- gon.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
Have you thought of may -- be the whole un -- i -- verse is one? __ _
The whole en -- tire un -- i -- verse is act' -- al -- ly a dra -- gon.
A gi -- ant dra -- gon, yes, it's true but it might be one still.
Full of fire and mar -- vel -- ous del -- ights to see but not share.
Full of mar -- vel -- ous de -- lights to drive you scared.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
}

lyricsI = \lyricmode {
    \set stanza = #"9. "
}

lyricsJ = \lyricmode {
    \set stanza = #"10. "
}


lyricsK = \lyricmode {
    \set stanza = #"11. "
}

lyricsL = \lyricmode {
    \set stanza = #"12. "
}

lyricsM = \lyricmode {
    \set stanza = #"13. "
}

lyricsN = \lyricmode {
    \set stanza = #"14. "
}

lyricsO = \lyricmode {
    \set stanza = #"15. "
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
            \new Lyrics \lyricsto "sopranos" \lyricsH
            \new Lyrics \lyricsto "sopranos" \lyricsI
            \new Lyrics \lyricsto "sopranos" \lyricsJ
            \new Lyrics \lyricsto "sopranos" \lyricsK
            \new Lyrics \lyricsto "sopranos" \lyricsL
            \new Lyrics \lyricsto "sopranos" \lyricsM
            \new Lyrics \lyricsto "sopranos" \lyricsN
            \new Lyrics \lyricsto "sopranos" \lyricsO
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi {}
    }
}

