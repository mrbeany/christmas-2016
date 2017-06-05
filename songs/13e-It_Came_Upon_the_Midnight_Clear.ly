\version "2.14.2"

songDedication = \markup {for C.B.'s special someone}
songTitle = "At Least I Eat Them in Grams"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ It Came Upon the Midnight Clear } }
tuneComposer = "Richard S. Willis (1819–1900)"
tuneSource = \markup { from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key bes \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 65
}

sopMusic = \relative c' {
  \partial 8
  f8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g a bes bes c d |  c4.~ c4
  f,8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g4 g8 a g f |  bes4.~bes4
  d8 |  d4 d,8 d e fis |  g4 a8 bes4 d8 |  c bes a g[ a] g |  f4.~f4
  f8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g4 g8 a g f |  bes4.~bes4 \bar "|."
}

altoMusic = \relative c' {
  d8 |  d4 d8 ees4 ees8 |  d4 ees8 d4 d8 |  ees4 ees8 e4 e8 |  f4.~ f4
  d8 |  d4 d8 ees4 ees8 |  d4 ees8 d4 f8 |  ees4 ees8 ees4 ees8 |  d4.~ d4
  d8 |  d4 d8 d[ e] d |  d4 d8 d4 d8 |  f4 f8 e4 e8 |  f4.~ f4
  ees8 |  d4 d8 ees4 ees8 |  d4 ees8 d4 f8 |  ees4 ees8 ees4 ees8 |  d4.~ d4
  \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"Orig. "
  It came up -- on __ _ the mid -- night clear,
  That glo -- rious song of old, __
  From an -- gels bend -- _ ing near the earth
  To touch their harps __ _ of gold: __
  “Peace on the earth, __ _ good -- will to men
  From heav’n’s __ _ all gra -- cious King.”
  The world in sol -- _ emn still -- ness lay
  To hear the an -- gels sing. __
}


tenorMusic = \relative c {
  f8 |  f4 fis8 g4 a8 |  bes4 f8 f4 bes8 |  bes4 bes8 bes4 bes8 |  a4.~ a4
  bes8 |  f4 fis8 g4 a8 |  bes4 f8 f4 bes8 |  bes4 c8 c[ bes] a |  bes4.~ bes4
  d,8 |  d4 fis8 fis[ g] a |  g4 fis8 g4 g8 |  a[ d] c bes[ c] bes |  a4.~ a4
  a8 |  f4 fis8 g4 a8 |  bes4 f8 f4 bes8 |  bes4 c8 c[ bes] a |  bes4.~ bes4
  \bar "|."
}

bassMusic = \relative c {
  bes8 |  bes4 bes8 bes4 bes8 |  bes4 a8 bes4 bes8 |  ees[ f] g g4 c,8 |  f4.~ f4
  bes,8 |  bes4 bes8 bes4 bes8 |  bes4 a8 bes4 d8 |  ees4 c8 f4 f8 |  bes,4.~ bes4
  d8 |  d4 d8 d4 c8 |  bes4 d8 g4 bes,8 |  c4 c8 c4 c8 |  f4.~ f4
  f8 |  bes,4 bes8 bes4 bes8 |  bes4 a8 bes4 d8 |  ees4 c8 f4 f8 |  bes,4.~ bes4
  \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I saw the plant out up -- on the ground
it looked __ _ so good __ _ to eat. __
I like my plants to grow there, you know.
And a -- lso up in the trees. __
The trees are filled with plants in a way.
And in a way, they __ are plants. __
And I, I like to eat trees.
Oh, yes. At least I eat them in grams. __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I like to eat some -- thing aw -- ful strange
like pick -- _ les co -- vered in hearts.
But not an -- i -- mal hearts, yuck, you know
I pre -- fer art -- i -- choke hearts. __
They're heart -- y, yes, and they're good for me
but blood they do not ever pump. __
I'd like to see some -- thing in the trees
grow -- ing pears or may -- be plums. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I thought I could eat all of that food
but I guess I made __ _ too much.
As it's just veg't -- a -- bles, then, I guess.
If I'm in doubt, I could mulch. __
You see, you can com -- post e -- v'ry -- thing
and it's eas -- y when its veg. __
You might not want to com -- post your friend
or e -- ne -- my o -- ver here. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought the worm and de -- comp would do
to hide the smell of __ _ my meth.
That lab is mak -- ing me pro -- fit, yes,
but it is al -- so a mess. __
I thought I could switch to herbs, you know,
but it they just le -- gal -- ized.
So I'll keep mak -- ing my meth, out there,
at least while I still have eyes. __
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}
