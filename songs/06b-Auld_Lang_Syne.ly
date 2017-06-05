\version "2.14.2"

songDedication = \markup {for C.A.}
songTitle = "Some Cheese With my Crackers"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{Auld Lang Syne} }
tuneComposer = "Traditional"
tuneSource = \markup {from \italic {Favorite Songs and Hymns for School and Home}, 1899}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key g \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 60
}

sopMusic = \relative c' {
    \partial 8 d8^\p |
    g8. g16 g8 b | a8. g16 a8 b | g8. g16 b8 d | e4.  e8 | d8. b16 b8 g |
    a8. g16 a8 b | g8. e16 e8 d | g4 b8\rest

    e8 | d8. b16 b8 g | a8. g16 a8 b16\rest b |
    b8. g16 b8. d16 | e4.  e8 | d8. b16 b8 g |
    a8. g16 a8 b | g8. e16 e8 d | g4  b8\rest
}

altoMusic = \relative c' {
  d8 |
  d8. d16 d8 g |
  fis8. e16 fis8 fis |
  d8. d16 g8 g |
  g4. g8 |
  g8. g16 g8 g |

  fis8. e16 fis8 g |
  \slurDotted e8.( c16) c8( c) |
  b4 s8
  g'8 |
  g4 g |
  fis8. e16 fis8 s16 g |

  g8.[ e16] g8.[ b16] |
  c4. c8 |
  b8. g16 g8 g |
  fis8. e16 fis8 fis |
  e4 c4 |
  b4 s8 \bar ":|"
}

altoWords = \lyricmode {
  \set stanza = #"Orig. "
  Should auld ac -- quain -- tance be for -- got,
  And nev -- er brought to mind?
  Should auld ac -- quain -- tance be for -- got,
  And days of auld lang syne?

  For auld __ _ lang __ _ syne, my dear,
  For auld __ _ lang __ _ syne;
  We’ll tak’ a cup o’ kind -- ness yet
  For auld __ _ lang __ _ syne.
}

tenorMusic = \relative c' {
  b8 |
  b8. b16 b8 d |
  d8. d16 d8 d |
  b8. b16 d8 b |
  c4. c8 |
  b8. d16 d8 b |

  d8. d16 d8 d |
  \slurDotted c8.( g16) fis8( fis) |
  g4 s8
  c |
  b8.[ d16] d4 |
  d8. d16 d8 s16 d |

  d4 d |
  c4. c8 |
  d8. d16 d8 b |
  d8. d16 d8 d |
  b4 fis |
  g s8 \bar ":|"
}

bassMusic = \relative c {
  g'8 |
  g8. g16 g8 g |
  d8. d16 d8 d |
  g8. g16 g8 g |
  c,4. c8 |
  g'8. g16 g8 g |

  d8. d16 d8 g |
  \slurDotted c,8.( c16) d8( d) |
  g,4 d'8\rest
  g |
  g4 g4 |
  d8. d16 d8 d16\rest g |

  g4 g |
  c,4. c8 |
  g'8. g16 g8 g |
  d8. d16 d8 b |
  e4 d |
  g, d'8\rest \bar ":|"
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought I might eat me some cheese
with my crack -- ers and wine.
I like my wine red or white or ev -- en the blush -- y kind.
I don't whine if my wine is bad. I nev -- er, ev -- er cry.
Not be -- cause of my whine, no, but be -- cause my wine is fine.

}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought you might like cheese with your crack -- ers and my sau -- sage.
That's not a eu -- pha -- mism, but I am a eu -- pha -- mism kid.
I thought you might like a cheese ball.
It is chees -- y and fun.
And spray cheese in a cheese can,
well, you can't go wrong with one.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I thought that this year would get bet -- ter
if I add -- ed cheese.
So here you go, my chees -- y friend
some more cheese if you please.
I thought we could try
with -- out cheese,
just once or twice to -- night.
Though we'll keep
smil -- ing cheese, of course,
no more of the sliced kind.

}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought that we might eat some food
with -- out cheese for my gut.
My gut it don't like it no more
it real -- ly hurts my butt.
I thought that we could switch to some -- thing
a little higher fi -- ber.
Not too much fib -- er, just e -- nough,
I don't want to fight her.
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


