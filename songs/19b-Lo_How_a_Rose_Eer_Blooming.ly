\version "2.14.2"

songDedication = \markup {for J.E.}
songTitle = "Lumpystilskin"
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
  d2 d4 d |  e d d2 |  b c |  b4 a2 g4 |
  g fis g2 |  d' d4 d |  e d d2 |  b c |
  b4 a2 g4 |  g fis g2 |  b4\rest b4 a fis |  g e d2 |
  b'4\rest d4 d d |  e d d2 |  b c |  b4 a2 g4 |  g fis g2 \bar "|."
}

altoMusic = \relative c'' {
  b2 b4 g |
  g g fis2 |
  e e |
  d4 d e4.( b8 |

  d4) d4 d2 |
  b'2 b4 g |
  g g fis2 |
  e e |

  d4 d e4.( b8 |
  d4) d d2 |
  s4 g e d |
  d cis d2 |

  s4 fis a g |
  g g fis2 |
  e e |
  g4 e fis2( |
  d4) d d2 \bar "|."
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

altoWordsII = \lyricmode {
    \set stanza = #"2. "
    I -- sa -- iah ’twas fore -- told it,
    The Rose I had __ in mind;
    With Ma -- ry we be -- hold it,
    The Vir -- gin Moth -- er kind.
    To show God’s love a -- right
    She bore to men a Sav -- ior,
    When half -- spent was __ the night.
}

altoWordsIII = \lyricmode {
  \set stanza = #"3. "
  O Flow’r, whose fra -- grance ten -- der
  With sweet -- ness fills __ the air,
  Dis -- pel with glo -- rious splen -- dor
  The dark -- ness ev -- ’ry -- where;
  True man, yet ve -- ry God,
  From Sin and death now save us,
  And share our ev -- ’ry load.
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
    Lump -- y, yes, Lump -- y -- stils -- kin,
    will you sing and dance to -- night? __
    Would you like to con -- tin -- ue to
    sing about lumps in the woods. __
    But the woods, they have none.
    No lumps that I can see now.
    That tree doc -- tor did his job.

}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I know you thought those trees
    were lump -- y. That's why he was called. __
    But that tree doct -- or
    he healed them. Yes, he healed all the lumps. __
    Those trees they aren't lump -- y.
    We don't need to burn the trees.
    Birds and bugs live in the trees.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    Lump -- y, yes, Lump -- y -- stils -- kin,
    I real -- ly like all~of your lumps. __
    Lump -- y __ Lump -- y -- stils -- kin,
    you have such ve -- ry fine lump lumps. __
    Lump -- y, lump -- y lump lumps.
    I would like to see some truth a -- bout
    your magic lump -- y lumps.

}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    I think it is folk -- lore keep -- ing
    your lump -- y lump -- y lumps. __
    I would like to tell you some -- thing
    true a -- bout your fae lumps. __
    I don't think they ex -- ist.
    They are just your per -- cep -- tion
    of how you go a -- bout town.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
    Lump -- y, oh, Lump -- y -- stils -- kin,
    please don't cry a -- but your lumps. __
    Dear, sweet Lump -- y -- stils -- kin,
    we all still love your fae lump lumps. __
    E -- ven if they're most -- ly,
    yes, e -- ven if they're most -- ly
    or true -- ly just in your mind.
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

