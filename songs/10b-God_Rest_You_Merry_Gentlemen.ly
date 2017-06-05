\version "2.14.2"

songDedication = \markup {for E.O.}
songTitle = "Lovely Like You"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{God Rest You Merry, Gentlemen} }
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
    e4 |    e b' b a |    g fis e d |    e fis g a |    b2.  e,4 |
    e b' b a |    g fis e d |    e fis g a |    b2 b4\rest  b |
    c a b c |    d e b a |    g e fis g |    a2
    g4( a) |    b2 c4 b |    b( a) g fis |    e2 g8\noBeam fis e4 |
    a2 g4( a) |    b( c) d e |    b( a) g fis |    e2.
}

altoMusic = \relative c' {
  e4 |  e g fis dis |  e( d?) c b |  e dis e e |  dis2. e4 |
  e g fis dis |  e( d?) c b |  e dis e e |  dis2 s4 e |
  e d d g |  f( e) d dis |  e cis d g |  fis2
  g4( d) |  d2 e4 d |  g( fis) e dis |  e2 b8\noBeam b cis4 |
  d2 e4( fis) |  g2 g4 g |  g( fis) e dis |  e2.
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I would like to eat some -- thing may -- be quite lov -- ly like you.
I thought once per -- haps I might like to eat some -- one with shoes.
I've not tried shoes but they have no meat, so I'll take these in -- stead.
I would like to nib -- ble on your yum -- my toes.
Yes, I would like to eat your toes.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
Have you e -- ver con -- sid -- ered off' -- ring your arm as a snack?
Some -- thing love -- ly to snack on when you're thrown in to a sack.
I ne -- ver thought be -- ing in sacks could e -- ver be much fun.
With you near me, I would have some -- thing to snack on.
With you there, I could snack on you.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Would you e -- ver have thought I'd think that pump -- kins are tur -- nips?
I did not know that or -- ange could be green like lump and skin.
My flesh it's rot -- ting, pieces fal -- ling, and the words they do suck.
But you might like eat -- ing this chop, yum -- my slop slop.
Oh, You might like to eat this chop.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought my prob -- lem would be real -- ly small like per -- haps
I need -- ed to dance or sing at a ball
but when I ap -- proach'd they just ran a -- way scream -- ing in ter -- ror
but you stay'd here and I'm glad of that. Yes, my friend.
I am glad that you decid -- ed to stay here with me.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
Per -- haps you might con -- sid -- er snack -- ing on some -- thing for lunch.
I thought per -- haps I'd pre -- pare for you bog but -- ter bis -- cuits.
I don't know what it is but I found it in the swamp out back.
I thought that it looked like a good snack, and that
is why I brought it here to you.
}

altoWords = \lyricmode {
    \set stanza = #"Orig."
    God rest you mer -- ry,
    gen -- tle -- men,
    Let noth -- ing you dis -- may,
    Re -- mem -- ber Christ our Sav -- ior Was born on Christ -- mas Day,
    To save us all from
    Sa -- tan’s
    pow’r When we were gone a -- stray;
    O __ ti -- dings of com -- fort and joy, com -- fort and joy, O __ ti -- dings of com -- fort and joy.
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>

        \layout { }
%        \midi { }
    }
}

