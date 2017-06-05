\version "2.14.2"

songDedication = \markup {for J.C.}
songTitle = "I Would Like"
songPoet = "S.W. Black"

tuneArranger = \markup {tune of \italic { O Little Town of Bethlehem } }
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
  \set stanza = #"1. "
  O lit -- tle town of Beth -- le -- hem,
  How still we __ _ see thee lie!
  A -- bove thy deep and dream -- less sleep
  The si -- lent _ stars go by;
  Yet in thy dark streets shin -- eth
  The ev -- er -- last -- ing Light;
  The hopes and fears of all the years
  Are met in thee to -- night.
}

lyricsA = \lyricmode {
  \set stanza = #"1. "
Once up -- on a time I thought I might eat lit -- tle pick -- les nice.
Once up -- on a time I thought I'd eat them with __ _ knives.
Pick -- les and knives they are sub -- lime. I hope that you try them twice.
They are just the thing that you need, if you are eat -- ing rice.
}

lyricsB = \lyricmode {
  \set stanza = #"2. "
I hope that you like to eat fish but per -- haps __ _ not~fish, some chow~der.
It's made with fish and that's not all. It's al -- so made with pow -- der.
I hope you like to eat it. I've a gal -- lon or five.
I think it's good e -- nough to say that I could eat it thrice.
}

lyricsC = \lyricmode {
  \set stanza = #"3. "
I would like to sing some -- thing a -- bout the beast that dwells here now.
I think this beast is real -- ly swell. I think I will call him Al.
Al may be a sas -- quatch, but he's al -- so my big pal.
I want to sing to him all day or may -- be swim~the can -- al.
}

lyricsD = \lyricmode {
  \set stanza = #"4. "
I would like to do some -- thing here per -- haps I could knit~him a hood.
Per -- haps I could of -- fer him some -- thing like a mys -- ter -- i~ous wood.
I think he might like to eat some -- thing love -- ly and brown.
He might real -- ly like to eat cho -- co -- late right from the town.
}

lyricsE = \lyricmode {
  \set stanza = #"5. "
I thought he might like cho -- co -- late but he~seems more a ca -- rob guy.
Per -- haps it's be -- cause he~likes the woods and to see you out. Good bye.
I think he might like too eat love -- ly green fronds of shoots.
Your camp -- fire is just po -- lu -- tion, so see, it's you that's rude.
}

lyricsF = \lyricmode {
  \set stanza = #"6. "
I would like to eat some -- thing, yes, some -- thing per -- _ haps not right.
I'd like smash my knuck -- les and per -- haps make me __ _ some rice.
I thought I might want to drink some cho -- co -- late or some tea.
I made all this stuff yes -- ter -- day and now I must go pee.
}



tenorMusic = \relative c' {
  g4 |
  g g g g |
  \slurDotted gis( a) a c |
  \slurSolid b a8[ b] c4 c |
  b2. g4 |

  g b b e |
  e e e c |
  b a8[ b] d4 c |
  b2. d4 |

  d b c cis |
  dis2 dis4 b |
  e, fis g e' |
  dis2. d4 |

  d b g g |
  gis a a a |
  b a8[ g] g4 fis |
  g2. \bar "|."
}

bassMusic = \relative c' {
  g4 |
  g g g g |
  \slurDotted c,( c) c c |
  d d d d |
  g,2. g'4 |

  g f e e |
  a a a, c |
  d4. d8 d4 d |
  g2. g4 |

  g g a ais |
  b2 b4 b, |
  e fis g c |
  b2. g4 |

  g g g g |
  c, c c c |
  d e d4 d |
  g,2. \bar "|."
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

