\version "2.14.2"

songDedication = \markup {for C.B.}
songTitle = "Pickled 'Shrooms"
songPoet = "S.W. Black"

tuneArranger = \markup { tune is \italic { Good King Wenceslas } }
tuneComposer = \markup { \italic {Tempus adest floridum,} from \italic {Piæ Cantiones,} 1582}
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
  a4 a a b |  a a e2 |  fis4 e fis gis |  a2 a |
  a4 a a b |  a a e2 |  fis4 e fis gis |  a2 a |
  e'4 d cis b |  cis b a2 |  fis4 e fis gis |  a2 a |
  e4 e fis gis |  a a b2 |
  e4^\markup\italic"poco più lento" d cis b |
  a2 d |  a1 \bar "|."
}


altoMusic = \relative c' {
  e4 e fis e |
  e fis b,2 |
  d4 e d d |
  e2 e |

  e4 e fis e |
  e fis b,2 |
  d4 e d d |
  e2 e |

  e4 fis e e |
  e e cis2 |
  d4 e d d |
  e2 e |

  e4 e d d |
  cis cis e2 |
  e4 fis e d |
  cis2( fis) |
  e1 \bar "|."
}

lyricsA = \lyricmode {
  \set stanza = #"1. "
Do you want some -- thing love -- ly like a pic -- kled 'shroom? __ _
Have you pic -- kled love -- ly shrooms? Yes, none of them rude. __ _
I would like to eat your mush~rooms. I think they are nice. __ _
Ind -- i -- a -- na grows the best mush -- rooms that are ve -- ry nice.
}

lyricsB = \lyricmode {
  \set stanza = #"2. "
Have you con -- si -- der'd some -- thing fun -- gus and quite nice? __ _
I think I have some -- thing here: Chic -- ken of the Woods. __ _
Love -- ly fun -- gus grow -- ing, yes. Quite just ov -- er there. __ _
Not quite ov -- er there, you see. I must keep the spot se -- cret.
}

lyricsC = \lyricmode {
  \set stanza = #"3. "
I think you might like some -- thing grow -- ing from the trees. __ _
I per -- fec -- ted find -- ing them and none of them green. __ _
Fun -- gus doesn't use chlor -- o -- phyll ne -- ver, not once, no. __ _
Some -- times you can find lich -- en but it is not just fun -- gus.
}

lyricsD = \lyricmode {
  \set stanza = #"4. "
Fun -- gus is quite love -- ly when it grows o -- ver there. __ _
I don't want to find fun -- gus up in -- side my hair. __ _
Fun -- gus it can be quite nice, if it's in your soup. __ _
Some -- times I like my fun -- gus dipp'd and co -- ver'd with green fruit.
}

lyricsE = \lyricmode {
  \set stanza = #"5. "
I think you might like some -- thing: fun -- gus and some wine. __ _
I've heard there are love -- ly wines, that go with the grime. __ _
Fun -- gus it does grow in grime, but not po -- li -- tics. __ _
That sort of grime does not grow fun -- gus that you poke with sticks.
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
  Gath -- ’ring win -- ter fu -- _ el.
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
%            \new Lyrics  \lyricsto "sopranos" \altoWords

        >>
        \layout { }
%       \midi { }
    }
}

