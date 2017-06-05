\version "2.14.2"

songDedication = \markup {for R.B.}
songTitle = "Fishes in the Cat Bowl"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ "Deck the Hall" } }
tuneComposer = "16th Century Welsh Tune"
tuneSource = \markup{from \italic{Favorite Songs and Hymns for School and Home}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key f \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 132
}

sopMusic = \relative c'' {
  c4. bes8 a4 g  |  f g a f      | g8 a bes g a4. g8  | f4 e f2 |
  c'4. bes8 a4 g |  f g a f      | g8 a bes g a4. g8  | f4 e f2 |
  g4. a8 bes4 g  | a4. bes8 c4 g | a8 b c4 d8 e f4    |  e d c2 |
  c4. bes8 a4 g  |  f g a f      | d'8 d d d c4. bes8 | a4 g f2 \bar "|."
}


altoMusic = \relative c' {
  a'4. g8 f4 e |  d e f c |  e8 f g e f4. e8 |  d4 c c2 |
  a'4. g8 f4 e |  d e f f |  e8 f g e f4. e8 |  d4 c c2 |
  e4. f8 g4 e |  f4. g8 f4 c |  f8 f f4 a8 a a4 |  g f e2 |
  f4. g8 f4 e |  d e f f |  bes8 bes bes bes a4. g8 |  f4 e f2 \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  Deck the hall with boughs of hol -- ly, Fa la la la la, la la la la.
  ’Tis the sea -- son to be jol -- ly, Fa la la la la, la la la la.
  Don we now our gay ap -- par -- el; Fa la la, la la la, la la la.
  Troll the an -- cient Yule -- tide car -- ol, Fa la la la la, la la la la.
}


tenorMusic = \relative c' {
  c4. c8 c4 bes |
  a c c a |
  c8\noBeam c\noBeam c\noBeam c\noBeam c4. bes8 |
  a4 bes a2 |

  c4. c8 c4 bes |
  a c c a |
  c8\noBeam c\noBeam c\noBeam c\noBeam c4. bes8 |
  a4 bes a2 |

  c4. c8 c4 c |
  c4. bes8 a4 c |
  c8 c c4 c8 c c4 |
  c b c2 |

  a4. c8 c4 bes |
  a c c a |
  bes8\noBeam bes\noBeam bes\noBeam bes\noBeam c4. bes8 |
  c4 bes a2 \bar "|."
}


bassMusic = \relative c {
  f4. e8 f4 c |
  d c f f |
  c8\noBeam c\noBeam c\noBeam c\noBeam f4. c8 |
  d4 c f2 |

  f4. e8 f4 c |
  d c f f |
  c8\noBeam c\noBeam c\noBeam c\noBeam f4. c8 |
  d4 c f2 |

  c4. c8 c4 c |
  f4. f8 f4 e |
  f8 g a4 f8 e d4 |
  g g c,2 |

  f4. e8 f4 c |
  d c f f |
  bes,8\noBeam bes\noBeam bes\noBeam bes'\noBeam f4. e8 |
  f4 c f2 \bar "|."
}


lyricsA = \lyricmode {
    \set stanza = #"1. "
    Look~at the fish -- es in the cat -- bowl.
    What, dear cat, might be go -- ing on here?
    I didn't think that would real~ly hap -- pen.
    But it looks like some -- thing hap -- pen'd here.
    Fish -- es there in the cat bowl
    and I don't know who to blame for this state.
    Is it fish~es that~got in the cat bowl
    or did the cat put the fish -- es here?
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I like to eat fish -- es some -- times,
    but I'm not a cat. I'm a hu -- man.
    I like to~eat my fish -- es with cats
    I like to share them so we can all
    en~joy the fish -- es on our crack -- ers,
    but you see that the cats don't eat crack~ers.
    I~like to eat my fish with mus -- tard,
    but you know that cats, they don't~eat that eith~er.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    I would like to sing and dance,
    but I think that my cat wants to~do that, too.
    I would like to sing and dance,
    and I think that my cat wants to~do that, too.
    Kit -- ty cats are nice in sun -- shine.
    And they run and they dance all the time.
    I would like to play in sun -- shine.
    But you know that I~just, I just stay~in -- side.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    I would like to dance with kit -- ty cats
    and run a -- round out -- _ side like.
    I think that would be a swell time.
    If I ran a -- round like it was out.
    For out -- side it is sun -- ny and
    I like to run and play all the time.
    But I al -- so like my com~pu -- ter,
    so I'll stay in -- side and I'll just cry.
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
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

