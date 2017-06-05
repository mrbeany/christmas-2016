\version "2.14.2"

songDedication = \markup {for E.H.}
songTitle = "I ate my door"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ I Saw Three Ships } }
tuneComposer = "Traditional English (Derbyshire)"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key g \major
    \time 6/8
    \autoBeamOff
    \tempo "Briskly" 4 = 120
}

sopMusic = \relative c' {
    \partial 8
    d8 | g4 g8 a4 b8 | d4 b8 a4 c8 |
    b4 g8 g4 b8 | a4 fis8 d4 d8 | g4 g8 a4 b8 |
    d4 b8 a4 c8 | b4 g8 g\noBeam a\noBeam b | a4. g4
}

altoMusic = \relative c' {
  d8 | d4 d8 d4 d8 | d4 d8 d4 d8 |
  d4 d8 d4 d8 | d4 d8 d4 c8 | b4 e8 d4 g8 |
  g[ fis] g8 fis4 a8 | g4 d8\noBeam e\noBeam fis\noBeam g | fis4. g4
}

altoLyrics = \lyricmode {
  \set stanza = #"Orig. "
  I saw three ships come sail -- ing in,
  On Christ -- mas day, on Christ -- mas day,
  I saw three ships come sail -- ing in,
  On Christ -- mas day in the morn -- ing.
}

tenorMusic = \relative c {
  d8 | b'4 b8 c4 b8 | a4 g8 fis4 a8 |
  g4 b8 b4 g8 | fis4 a8 fis4 fis8 | g4 b8 a4 d8 |
  d[ c] b d4 d8 | d4 b8 c\noBeam c\noBeam d | d4. b4
}

bassMusic = \relative c {
  d8 | g4 g8 g4 g8 | fis4 g8 d4 fis8 |
  g4 g8 g4 g8 | d4 d8 d4 d8 | e4 e8 fis4 g8 |
  b[ a] g d4 fis8 | g4 g8 c\noBeam a\noBeam g | d'4. g,4
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
_ One two three, I ate my door.
I like them more. My love -- ly floor.
One two three I ate my s'more.
And then __ _ I watched as a bird sang.

}

lyricsB = \lyricmode {
    \set stanza = #"2. "
How would you like to eat some -- thing
real -- ly cool, __ _ real -- ly swell. __ _
I would like to eat some -- thing
that had been some -- thing be -- fore to -- day.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Would you like to eat hu -- man flesh?
Real live flesh. __ _ Liv -- ing flesh. __ _
I would like to eat some -- thing
that had been some -- one be -- fore to -- day.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
And, I would like to eat this fish
per -- haps this dish would be my wish
I would like to eat this nice dish
a -- bout now would be __ _ just fine.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
How would you like to eat a stew
or per -- haps some glue made of shoes.
How would you like to do this thing?
And should I take my __ _ shoes off?
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
With one two three I'm out the door.
just like that floor that went be -- fore.
I would like to eat this here s'more
but I have ran out of choc' -- late.
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
I would like to eat some cho -- co -- late.
I like to eat lots of it.
It is good for my tum -- my.
And, I want to eat all the choc' -- late.
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
Would you per -- haps have some cho -- co -- late
for my tum -- my? I want some more.
Would you per -- haps have some good cho -- co -- late
to feed my sto -- mach?
}

lyricsI = \lyricmode {
    \set stanza = #"9. "
I would like to check your cup -- boards
and your floor, and per -- haps your drawers.
I would like to check all these things
for cho -- co -- late for my sto -- mach.
}

lyricsJ = \lyricmode {
    \set stanza = #"10. "
My sto -- mach would like cho -- co -- late
Yes, cho -- co -- late. And I am sure
that you have my sweet cho -- co -- late
so I can feed my __ _ sto -- mach.
}

lyricsK = \lyricmode {
    \set stanza = #"11. "
Would you per -- haps like to share
your cho -- co -- late stew? Or would you
per -- haps like to share your cho -- co -- late brew
with my love -- _ ly sto -- mach?
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
%            \new Lyrics \lyricsto "sopranos" \altoLyrics
        >>
        \layout { }
%        \midi { }
    }
}

