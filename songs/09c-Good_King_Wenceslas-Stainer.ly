\version "2.14.2"

songDedication = \markup {for J.L.'s special someone}
songTitle = "Good Enough to Eat"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Good King Wenceslas } }
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

altoWords = \lyricmode {
  \set stanza = #"Orig. "
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

lyricsA = \lyricmode {
    \set stanza = #"1. "
I would like to eat your flesh
rip it from your bones. __ _
Please would you give me your flesh
may -- be just your toes. __ _
I am ve -- ry hun -- gry, sir
or are you a ma'am. __ _
I don't care be -- cause your butt
looks good e -- nough to eat, yum.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I think that your flesh might taste
yum -- my like some peach -- es.
Have you thought of dip -- ping yourself
in plum sauce for sea -- sons.
I would like to dip your thumb
in some bar -- be -- cue sauce.
I think you might taste real good
co -- vered with nood -- les and veggies.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Have you thought of may -- be not
in -- clud -- ing those in chili.
If you're made in to a chili
you'd just need the meat and
may -- be chi -- li pep -- pers, true.
May -- be those are opt -- ional.
How would you con -- sid -- er it
if I made a soup of~your head.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
Have you thought of may -- be danc -- ing on din -- ing ta -- bles?
You could do before or after we serve you up on lad -- les.
I real -- ly want to eat you.
I think you are sweet. __ _
Sweet e -- nough to put on my lit -- tle fork
and spoon and knife.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
Have you thought of may -- be that
you could be -- come din -- ner?
Wrap you up and store you tight
you'd be such a win -- ner.
I could eat you for more days
but I do like to eat
so I'd stuff my -- self while fresh
and you would not go to waste.
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
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

