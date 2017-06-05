\version "2.14.2"

songDedication = \markup {for M.L.}
songTitle = "Soon They Were on to Home"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ O Little Town of Bethlehem } }
tuneComposer = "Lewis H. Redner (1831–1908)"
tuneSource = \markup {from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 95
}

sopMusic = \relative c'' {
  \partial 4 b4 |  b b ais b |   d c e, a |   g fis8 g a4 d, |  b'2.  b4 |
  b b e d |  d c e, a |  g fis8 g b4. a8 |  g2.  b4 |
  b b a g |  fis2 fis4 fis |  e fis g a |  b2.  b4 |
  b b ais b |  d c e, e' |  d g, b4. a8 |  g2. \bar "|."
}

altoMusic = \relative c' {
  d4 |
  d d cis d |
  \slurDotted f( e) c e |
  d d d d |
  d2. d4 |

  d g gis gis |
  a e c e |
  d d fis fis |
  g2. g4 |

  g g fis e |
  dis2 dis4 dis |
  e fis g e |
  fis2. g4 |

  d d cis d |
  \slurSolid e e c e8[ fis] |
  g4 cis, d4 c |
  b2. \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"Orig. "
  O lit -- tle town of Beth -- le -- hem,
  How still we __ _ see thee lie!
  A -- bove thy deep and dream -- less sleep
  The si -- lent _ stars go by;
  Yet in thy dark streets shin -- eth
  The ev -- er -- last -- ing Light;
  The hopes and fears of all the years
  Are met in thee to -- night.
}

tenorMusic = \relative c' {
  g4 |  g g g g |   gis( a) a c |   b a8[ b] c4 c |  b2. g4 |
  g b b e |  e e e c |  b a8[ b] d4 c |  b2. d4 |
  d b c cis |  dis2 dis4 b |  e, fis g e' |  dis2. d4 |
  d b g g |  gis a a a |  b a8[ g] g4 fis |  g2. \bar "|."
}

bassMusic = \relative c' {
  g4 |  g g g g |   c,( c) c c |  d d d d |  g,2. g'4 |
  g f e e |  a a a, c |  d4. d8 d4 d |  g2. g4 |
  g g a ais |  b2 b4 b, |  e fis g c |  b2. g4 |
  g g g g |  c, c c c |  d e d4 d |  g,2. \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
The Cubs they won their game
and I think that is __ _ real -- ly cool.
They played so hard and they
fi -- nal -- ly won that game with their wood.
They wacked that ball so hard
it real -- ly took off you know.
They ran the bas -- es like -- wise
and soon they were on to home.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
But Cub -- bies they fre -- quent -- ly lose
e -- ven though they try their best.
We were sur -- prised when they act -- ual -- ly
won the __ _ ti -- tle jest.
The Cubs they did win the game
though we were quite sur -- prised.
They won it by a hair or more
but I don't frank -- ly spy.

}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I thought it would be in -- ter -- est -- ing to write a base -- ball song
but I don't know much a -- bout the sport so I just ram -- ble on.
The sport it does con -- tain bats and gloves of that I'm sure.
But I don't know the com -- pos -- i -- tion of gloves or the wood.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought you might like to know that peo -- ple of -- ten play the game.
And ev -- en more peo -- ple they watch as oth -- ers __ _ do the same.
I thought might be in -- t'res -- ting so I tried watch -- ing once.
I fell a -- sleep at half time and then I fell off the couch.
}

lyricsE = \lyricmode {
  \set stanza = #"5. "
I thought I would try a -- gain
but I drank too much that time.
I spent all my time in the bath -- room
I guess there was a line.
That is how it goes when too ma -- ny
people need to go.
They queue up and down the aisles
and put on, real -- ly, quite a show.
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

