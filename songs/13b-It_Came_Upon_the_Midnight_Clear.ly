\version "2.14.2"

songDedication = \markup {for C.B.}
songTitle = "Hedgehogs at War"
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
  f8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g[ a] bes bes c d |  c4.~ c4
  f,8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g4 g8 a g f |  bes4.~bes4
  d8 |  d4 d,8 d e fis |  g4 a8 bes4 d8 |  c bes a g a g |  f4.~f4
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
  \set stanza = #"1. "
  It came up -- on __ the mid -- night clear,
  That glo -- rious song of old, __
  From an -- gels bend -- ing near the earth
  To touch their harps of gold: __
  “Peace on the earth, good -- will to men
  From heav’n’s all gra -- cious King.”
%8.5x11 __
  The world in sol -- emn still -- ness lay
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
    I want -- ed to just get one more pet,
    but then I acc~i dent'ly got more.
    I thought they were just pump -- kins,
    but no, they're act~u -- al~ly
    hedge -- hogs that roar.
    These hedge -- hogs they play their
    hedge -- wars games.
    And they fight all day and all night.
    With little caps right up -- on their heads
    that one just stabbed me with a knife.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I thought this game might be too vio -- lent.
    But then I thought about some~thing else.
    This world is built on the deaths of those
    that they, they came once be -- fore.
    So hedge -- hogs, you play your hedge hog games
    and kill and you fight and you maim.
    But no, these hedge -- hogs, they will not play
    your stink -- y pol~i -- ti -- cal games.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    These hedge -- hogs they like to throw their things
    and some -- times they __ _ use bats.
    Base -- ball bats I think that's what they're call'd,
    but they have no Cubs __ _ hats.
    Those hats are from the win -- ning team from
    some game that was played earl -- i -- er.
    But these hedge -- hogs they just use their bats
    to slap~these hedge -- hogs out the door.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    I thought that these hedge -- hogs would use dyn~a~mite
    and then boom and bomb this whole~bunch.
    But no! they just used an old dud mine
    and that, it hurt, not at all.
    I want -- ed to use my me -- lon bomb
    but I ran out last turn or so.
    So I got in my U. F. O. ship and then
    I drop'd stink -- y cheese.
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

lyricsH = \lyricmode {
    \set stanza = #"8. "
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

