\version "2.14.2"

songDedication = \markup {for I.O.}
songTitle = "Don't Look So Haughty"
songPoet = "S.W. Black"

tuneArranger = \markup { tune is \italic { Good King Wenceslas } }
tuneComposer = \markup { \italic {Tempus adest floridum}, from \italic {Piæ Cantiones}, 1582}
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key a \major
    \time 4/4
    \tempo "Moderato" 4 = 120
}

sopMusic = \relative c'' {
  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |

  a4 a a b |
  a a e2 |
  fis4 e fis gis |
  a2 a |

  e'4 d cis b |
  cis b a2 |
  fis4 e fis gis |
  a2 a |

  e4 e fis gis |
  a a b2 |
  e4^\markup\italic"poco più lento" d cis b |
  a2( d) |
  a1 \bar "|."
}


altoMusic = \relative c' {
  e4 e fis e |  e fis b,2 |  d4 e d d |  e2 e |
  e4 e fis e |  e fis b,2 |  d4 e d d |  e2 e |
  e4 fis e e |  e e cis2 |  d4 e d d |  e2 e |
  e4 e d d |  cis cis e2 |  e4 fis e d |  cis2( fis) |  e1 \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I would like to eat your brains
may -- be for __ _ din -- ner.
Have you con -- _ si -- der'd brains
aren't only for win -- ners?
Lo -- sers they can eat your brains
thus be -- com -- ing win -- ners.
How would you like to eat brains
of the ones who run slow -- est? __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I would like to eat your brains
may -- be you'd like to try
eat -- ing some __ _ love -- ly brains
may -- be and a thigh.
I would like to eat soem brains
may -- be o -- ther parts, too.
I've heard the vis -- u~al cor -- tex
does not taste like horse glue. __ _
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I would like to eat your brains
love -- ly for din -- ner
mash them up and co -- ver them
with some plum sauce, yum -- my
I would like to eat your brains
may -- be pan __ _ fry them.
Who am I __ _ kid -- ding, now?
I think I'll just try __ _ them. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
How would you like to eat brains
sit -- ting on a porch swing?
Have you ever thought of brains
while you're far -- ting tho -- rough -- ly.
I would like to eat some brains
co -- ver them in Hor -- sey
sauce from Ar -- by's, yes, that place.
They do not offer brains, yet. __
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
I would like to eat some brains.
Co -- ver them in mush -- rooms
Pil -- ed on a cheese piz -- za
Smo -- ther them with ba -- con.
How do you like to eat brains?
May -- be in your cof -- fee?
Brains for break -- fast can be good.
Just don't look so haugh -- ty. __
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  Good King Wen -- ces -- las look’d out
  On the Feast of Ste -- phen,
  When the snow lay round a -- bout,
  Deep and crisp and e -- ven;
  Bright -- ly shone the moon that night,
  Tho’ the frost was cru -- el,
  When a poor man came in sight,
  Gath -- ’ring win -- ter fu -- el.
}

tenorMusic = \relative c' {
  cis4 cis cis b |
  cis d gis,2 |
  a4 a a b |
  cis2 cis |

  cis4 cis cis b |
  cis d gis,2 |
  a4 a a b |
  cis2 cis |

  a4 a a gis |
  a gis a2 |
  a4 a a b |
  cis2 cis |

  a4 a a b |
  a a gis2 |
  a4 a a gis |
  a2~ a |
  cis1 \bar "|."
}


bassMusic = \relative c' {
  a4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |

  a'4 a fis gis |
  a d, e2 |
  d4 cis d b |
  a2 a |

  cis4 d e e |
  a, e' fis2 |
  d4 cis d b |
  a2 a |

  cis4 cis d b |
  fis' fis e2 |
  cis4 d e e |
  fis2( d) |
  a1 \bar "|."
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
            \new Lyrics  \lyricsto "sopranos" \lyricsE

        >>
        \layout { }
%       \midi { }
    }
}

