\version "2.14.2"

songDedication = \markup {for R.G.'s special someone}
songTitle = "Snacky Brains"
songPoet = "S.W. Black"

tuneArranger = \markup {tune of \italic { Les Anges dans nos Campagnes }}
tuneComposer = "18th Century French Carol"
tuneSource = \markup{from \italic{Carols Old and Carols New}, 1916}

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
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  b4 b b d |  d4. c8 b2 |  b4 a b d |  b4. a8 g2 |
  b4 b b d |  d4. c8 b2 |  b4 a b d |  b4. a8 g2 |
  d'2 e8 d c b |  c2 d8 c b a |  b2 c8 b a g |  a4. d,8 d2 |
  g4 a b c |  b2 a |   d2 e8 d c b |  c2 d8 c b a |
  b2 c8 b a g |  a4. d,8 d2 |  g4 a b c |  b2 a |  g2. b4\rest \bar "|."
}

altoMusic = \relative c'' {
  g4 g g g |
  fis4. fis8 g2 |
  g4 g g g |
  fis4. fis8 g2 |

  g4 fis g g |
  fis4. fis8 g2 |
  g4 g g g |
  fis4. fis8 g2 |

  g4( b8[ a] gis4 e~ |
  e a8[ g] fis4 d~ |
  d g8[ fis] e4 c~ |
  c4.) d8 d2 |

  d4 d d e |
  d( g) g( fis) |
  g4( b8[ a] gis4 e~ |
  e a8[ g] fis4 d~ |

  d g8[ fis] e4 c~ |
  c4.) d8 d2 |
  d4 d d e |
  d( g2 fis4) |
  d2. s4 \bar "|."
}

altoWords = \lyricmode {
    \set stanza = #"Orig. "
    An -- gels we have heard on high,
    Sweet -- ly sing -- ing o’er the plains;
    And the moun -- tains in re -- ply
    Ech -- o -- ing their joy -- ous strains.
    Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri --  a  in  ex --  cel --  sis  De --  o, __
    Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri --  a  in  ex --  cel --  sis  De --  _ o! __
}

tenorMusic = \relative c' {
  d4 d d d |  c d d2 |  d4 c d b |  d c b2 |
  d4 d e8[ d] c[ b]   c4 d d2 |  d4 e d b |  d c b2 |
  b2( e~ |  e d~ |  d c |  a4) g fis2 |
  g4 fis g g |  g( b) d4.( c8) |  b2( e~ |  e d~ |
  d c |  a4) g fis2 |  g4 fis g g |  g( b d4. c8) |  b2. s4 \bar "|."
}


bassMusic = \relative c' {
  g4 g g b |  a d, g2 |  g4 g g g |  d d g2 |
  g4 b e8[ d] c[ b] |  a4 d, g2 |  g4 c b g |  d d g2 |
  g2( e4 gis |  a2 d,4 fis |  g2 c,4 e |  fis) e d( c) |
  b a g c |  d2 d |  g2( e4 gis |  a2 d,4 fis |
  g2 c,4 e |  fis) e d( c) |  b a g c |  d1 |  g2. d4\rest \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I would like to eat your brains
just some lit -- tle snack -- y brains
How would you like to eat brains
just some love -- ly snack -- y brains
Brains. Love -- ly lit -- tle brains.
I just want to eat brains.
Yum -- my lit -- tle brains today.
May -- be some for din -- ner.
love -- ly lit -- tle brains.
I just want your __ _ brains.
Love -- ly lit -- tle brains for lunch.
Don't call me a sin -- ner. They're~yummy.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I would like to eat your brains.
Not yes -- ter -- day's left~ov -- er brains
I would like to eat your brains
fresh and yum -- my dar -- ling brains.
Brains. Love -- ly lit -- tle brains.
I just want to eat brains.
Per -- haps you might just try to eat a lit -- tle.
Brains __ _ _ love -- ly brains. Oh, love -- ly brains.
I just want to __ _ eat your brains.
Hav -- ing them for __ _ din -- ner please.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "

I would like to eat your brains.
Love -- ly squish -- y dar -- ling brains.
I would like to eat your brains.
Not yes -- ter -- day's old, yuck brains.
Brains. Love -- ly lit -- tle lit -- tle brains.
I just want to eat your brains.
Love -- ly lit -- tle brains to -- day.
Let me eat just some __ _ please.
Please? Love -- ly lit -- tle brains.
I'd love eat your brains to day.
Have me for __ _ din -- ner please.

}

lyricsD = \lyricmode {
    \set stanza = #"4. "

How would you like to eat brains?
With some mus -- tard or ket -- chup?
I've heard that the gar -- lic's good.
How would you like wa -- sa -- bi?
Brains. Love -- ly lit -- tle brains.
I just want to eat brains.
Yum -- my lit -- tle brains today.
Haven't you tried them yet?
Brains, love -- ly lit -- tle brains.
I just want your __ _ brains.
Love -- ly lit -- tle brains to -- day.
Have them for __ _ din -- ner, please.
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
            \new Lyrics  \lyricsto "sopranos" \lyricsA
            \new Lyrics  \lyricsto "sopranos" \lyricsB
            \new Lyrics  \lyricsto "sopranos" \lyricsC
            \new Lyrics  \lyricsto "sopranos" \lyricsD
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


