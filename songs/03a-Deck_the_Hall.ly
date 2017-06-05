\version "2.14.2"

songDedication = \markup {for A.F.}
songTitle = "Spiro the Dragon"
songPoet = "S.W. Black"

tuneArranger = \markup {tune of \italic {Deck the Hall}}
tuneComposer = "16th Century Welsh Tune"
tuneSource = \markup {from \italic {Favorite Songs and Hymns for School and Home}}

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
  c4. bes8 a4 g |  f g a f      | g8 a bes g a4. g8  | f4 e f2 |
 c'4. bes8 a4 g |  f g a f      | g8 a bes g a4. g8  | f4 e f2 |
  g4. a8 bes4 g | a4. bes8 c4 g | a8 b c4 d8 e f4    | e d c2  |
  c4. bes8 a4 g |  f g a f      | d'8 d d d c4. bes8 | a4 g f2 \bar "|."
}

altoMusic = \relative c' {
  a'4. g8 f4 e | d e f c     | e8 f g e f4. e8         | d4 c c2 |
  a'4. g8 f4 e | d e f f     | e8 f g e f4. e8         | d4 c c2 |
  e4. f8 g4 e  | f4. g8 f4 c | f8 f f4 a8 a a4         | g f e2  |
  f4. g8 f4 e  | d e f f     | bes8 bes bes bes a4. g8 | f4 e f2 \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1."

Spi~ro the dra -- gon is kind~of awe -- some.
He is real -- ly a Sky -- _ land -- er.
Spi~ro the dra -- gon is real~ly awe -- some.
He is real -- ly a Sky -- _ land -- er.
He is not just from a game __ _
that was played long ag -- o, long a -- go.
Spi~ro the dra -- gon is su~per awe -- some.
He is real -- ly a Sky -- _ land -- er.
}

lyricsB = \lyricmode {
    \set stanza = #"2."
In the Leg -- end, at the start, __ _
where we see how rare is __ _ his breed.
While an egg, hunt -- ed by e -- vil,
cast a -- drift for wa -- ter's __ _ re -- prieve
Raised by dra -- gon -- flies,
and cared for by his bro -- ther __ _ Sparx,
he'd have to face the Dark Mas -- ter to save them.
at least that's how it went in the game.
}

lyricsC = \lyricmode {
    \set stanza = #"3."

Spi~ro the dra -- gon is real~ly nice. __ _
He is real -- ly kind and he helps me
pick up dish -- es when I drop them
he is real~ly nice and flies __ _ a -- round
He can put dish -- es a -- way __ _ when they
fall from such heights that~I can't reach

Spi~ro the dra -- gon is real~ly help -- ful.
Yes, he real -- ly helps, and I mean it.
}

lyricsD = \lyricmode {
    \set stanza = #"4."
At the school, __ _ in the show, __ _
when he saves the day and makes the grade,
he found that he must try and be
his ver -- y best to save __ _ the day.
He took a nap but he woke up
just in time to some -- how save the day.
Glum -- shanks had some ad -- vice
but found it was still too late to win the day.
}

lyricsE = \lyricmode {
    \set stanza = #"5."
Spi~ro the dra -- gon is a Sky -- land --
er. And I think that is real -- ly cool.
Spi~ro the dra -- gon is real~ly kind. __ _
He is real -- ly a Sky -- _ land -- er.
He is help -- ful when I need the world __ _ saved
once a -- gain, once a -- gain.

Spi~ro the dra -- gon is su~per awe -- some.
He is real -- ly a Sky -- _ land -- er.
}

tenorMusic = \relative c' {
  c4. c8 c4 bes | a c c a       | c8 c c c c4. bes8         |  a4 bes a2 |
  c4. c8 c4 bes | a c c a       | c8 c c c c4. bes8         |  a4 bes a2 |
  c4. c8 c4 c   | c4. bes8 a4 c |  c8 c c4 c8 c c4          |  c b c2    |
  a4. c8 c4 bes | a c c a       | bes8 bes bes bes c4. bes8 |  c4 bes a2
  \bar "|."
}

bassMusic = \relative c {
  f4. e8 f4 c | d c f f     |  c8 c c c f4. c8          | d4 c f2 |
  f4. e8 f4 c | d c f f     |  c8 c c c f4. c8          | d4 c f2 |
  c4. c8 c4 c | f4. f8 f4 e |  f8 g a4 f8 e d4          | g g c,2 |
  f4. e8 f4 c | d c f f     | bes,8 bes bes bes' f4. e8 | f4 c f2 \bar "|."
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
%        \midi { }
    }
}

