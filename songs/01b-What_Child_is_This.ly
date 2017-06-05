\version "2.14.2"

songDedication = \markup {for R.B.}
songTitle = "Stone Cat"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ What Child is This? } }
tuneComposer = "16th Century English Air"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic{Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"



global = {
    \key g \major
    \time 6/8
    \autoBeamOff
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    \tempo 4 = 60
}

sopMusic = \relative c' {
  \partial 8 e8 |
  g4 a8 b8. c16 b8 |  a4 fis8 d8. e16 fis8 |  g4 e8 e8. dis16 e8 |

  fis4. b,4  e8 |  g4 a8 b8. c16 b8 |  a4 fis8 d8. e16 fis8 |
  g8. fis16 e8 dis8. cis16 dis8 |  e4. e |

  d'4. d8. cis16 b8 |  a4 fis8 d8. e16 fis8 |
  g4 e8 e8. dis16 e8 |  fis4 dis8 b4. |

  d'4. d8. cis16 b8 |  a4 fis8 d8. e16 fis8 |
  g8. fis16 e8 dis8. cis16 dis8 |  e4. e4 \bar "|."
}


altoMusic = \relative c' {
  b8 |  e4 d8 d4 g8 |  fis4 d8 d4 c8 |  b4 b8 a4 e'8 |
  dis4. b4 b8 |  e4 d8 d4 g8 |  fis4 d8 d4 c8 |  b4 c8 b4 b8 |  b4. b |
  fis' b8.[ a16] g8 |  fis4 d8 d4 c8 |  b4 b8 a4 e'8 |  dis4 b8 b4. |
  fis'4. b8.[ a16] g8 |  fis4 d8 d4 c8 |  b4 c8 b4 b8 |  b4. b4 \bar "|."
}


altoWords = \lyricmode {
  \set stanza = #"1."
  What Child is this, __ _ Who, laid
  to rest, __ _
  On Ma -- ry’s lap __ _ is sleep -- ing?
  Whom an -- gels greet __ _ with
  an -- thems sweet, __ _
  While shep -- _ herds watch __ _ are keep -- ing?

  This, this __ _ is
  Christ the King; __ _
  Whom shep -- herds guard __ _ and an -- gels sing:

  Haste, haste __ _ to
  bring Him laud, __ _
  The Babe, __ _ the Son __ _ of Ma -- ry!
}

tenorMusic = \relative c' {
  g8 |  b4 a8 g4 b8 |  d4 a8 fis4 a8 |  g4 g8 e4 e8 |
  b'4. b4 g8 |  b4 a8 g4 b8 |  d4 a8 fis4 a8 |  g4 a8 fis4 fis8 |  g4. g |
  b4. d4 d8 |  d4 a8 fis4 a8 |  g4 g8 a4 e8 |  b'4 fis8 b4. |
  b d4 d8 |  d4 a8 fis4 a8 |  g4 a8 fis4 fis8 |  g4. g4 \bar "|."
}


bassMusic = \relative c {
  e8 |  e4 fis8 g4 g8 |  d4 d8 d4 dis8 |  e4 e8 c4 c8 |
  b4. b'4 e,8 |  e4 fis8 g4 g8 |  d4 d8 d4 dis8 |  e4 a,8 b4 b8 |  e4. e |
  b' g4 g8 |  d4 d8 d4 dis8 |  e4 e8 c4 c8 |  b4 b8 b4. |
  b' g4 g8 |  d4 d8 d4 dis8 |  e4 a,8 b4 b8 |  e4. e4 \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1."
I want to  pet this love -- ly kit -- ty
but I don't know who or __ _ what~she be.
Is she a short -- _ hair or a Sphinx
or has some -- thing __ _ hor -- ri -- ble hap -- pen'd?

Kit~ty, kit~ty, you're a stone, stone cat.
You were just __ _ pre -- tend all __ _ the time.
Kit~ty, kit -- ty,
You were just a con -- crete __ _ sta -- tue  in __ _ a sha -- dow.
}

lyricsB = \lyricmode {
    \set stanza = #"2."
I want to pet some -- thing real -- ly soft.
Like a soft kit~ty cat and __ _ not~a bird.
Birds aren't so soft __ _ and they're so fra -- gile.
I real -- ly can't just hug and squeeze them.

Kit~ty, kit~ty, I love you __ _ so.
You're a love -- ly kit-- ty, I hope you know.
Kit~ty, kit -- ty, I love you so,
and I hope __ _ that you __ _ like my song.
}

lyricsC = \lyricmode {
    \set stanza = #"3."
I want to name  a __ _ love -- ly cat.
And, I think I'd name it __ _ Pep~per -- jack.
But then, per -- haps __ _ I'd change my mind
and __ _ then change it to But -- ter -- squash Fish.

Ki~tty, kit~ty, I love you __ _ so!
Know -- ing you seems ver -- y __ _ far a -- way.
Kit~ty, Kit -- ty, I love you so!
And I want to __ _ meet __ _ you some day.
}

lyricsD = \lyricmode {
    \set stanza = #"4."
I would like to have a cat or two.
When I'm~a grown -- up or may be old~er, too.
I think it might be __ _ nice
to own a whole kit -- ty -- cat sanc -- tu - ra -- ry.
Kit~ties! Kit~ties! How I love you so!
And in front, there would be stone cat, you know.
Kit~ties! Kit -- ties! How I~love you so!
And I would name __ _ all __ _ of __ _ them.
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

