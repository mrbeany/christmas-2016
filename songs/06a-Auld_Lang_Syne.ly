\version "2.14.2"

songDedication = \markup {for B.B.}
songTitle = "Something Weird"
songPoet = "S.W. Black"

tuneArranger = \markup {tune of \italic { Auld Lang Syne } }
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

    e8 | d8.[ b16] b8[ g] | a8. g16 a8 b16\rest b |
    b8.[ g16] b8.[ d16] | e4.  e8 | d8. b16 b8 g |
    a8. g16 a8 b | g8.[ e16] e8[ d] | g4  b8\rest
}

altoMusic = \relative c' {
  d8 | d8. d16 d8 g | fis8. e16 fis8 fis | d8. d16 g8 g | g4. g8 | g8. g16 g8 g |
  fis8. e16 fis8 g | e8.( c16) c8( c) | b4 s8 g'8 | g4 g | fis8. e16 fis8 s16 g |
  g8.[ e16] g8.[ b16] | c4. c8 | b8. g16 g8 g | fis8. e16 fis8 fis | e4 c4 | b4 s8
\bar ":|"
}

altoWords = \lyricmode {
  \set stanza = #"Orig. "
  Should auld ac -- quain -- tance be for -- got,
  And nev -- er brought to mind?
  Should auld ac -- quain -- tance be for -- got,
  And days of auld lang syne?

  For auld lang syne, my dear,
  For auld lang syne;
  We’ll tak’ a cup o’ kind -- ness yet
  For auld lang syne.
}


lyricsA = \lyricmode {
_ Once up --  on a day I thought I might eat some -- thing weird.
Some -- thing weird with long ten -- ta -- cles, but not a ten~ta -- cled beard.
I hope~you thought~it might be cool. I thought~you might~like it.
This is my slight -- ly weird song for a slight~ly weird kid.
}

lyricsB = \lyricmode {
I hope you like ten -- ta -- cles in your song and it is cool.
Not slimey ten -- ta -- cles. Just ten -- ta -- cles stick -- ing in your grool.
I hope~you like~to eat your grool with ten~ta -- cles~nice and~green.
Or per -- haps you pre -- fer them mauve, it's all~okay with me.
}

lyricsC = \lyricmode {
_ I hope you like eat some -- thing and it sits well with you.
I don't want to hear that you puked all ov -- er my new shoes.
I hope~you like~to eat your food with your~forks and~your knives.
Your older now so you use knives and not just~sticks and twine.
}

lyricsD = \lyricmode {
Your old e -- nough to use the knives be -- cause you're grow -- ing nice.
You're tall and strong and kind and smart and soon you'll be -- come wise.
Or per~haps not~wise, you'll be bears. I'm not~sure how~it goes.
But how -- ev -- er you end up, I hope that~you have toes.
}

tenorMusic = \relative c' {
  b8 |  b8. b16 b8 d |  d8. d16 d8 d |  b8. b16 d8 b |
  c4. c8 |  b8. d16 d8 b |

  d8. d16 d8 d | c8.( g16) fis8( fis) |  g4 s8   c |
  b8.[ d16] d4 |  d8. d16 d8 s16 d |

  d4 d |  c4. c8 |  d8. d16 d8 b |  d8. d16 d8 d |
  b4 fis |  g s8 \bar ":|"
}

bassMusic = \relative c {
  g'8 |  g8. g16 g8 g |  d8. d16 d8 d |  g8. g16 g8 g |
  c,4. c8 |  g'8. g16 g8 g |

  d8. d16 d8 g | c,8.( c16) d8( d) |  g,4 d'8\rest   g |
  g4 g4 |  d8. d16 d8 d16\rest g |

  g4 g |  c,4. c8 |  g'8. g16 g8 g |  d8. d16 d8 b |
  e4 d |  g, d'8\rest \bar ":|"
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%       \midi { }
    }
}

