\version "2.14.2"

songDedication = \markup {for J.L.}
songTitle = "On a biscuit in the morning"
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

altoLyrics = \lyricmode {
  \set stanza = #"Orig. "
  I saw three ships come sail -- ing in,
  On Christ -- mas day, on Christ -- mas day,
  I saw three ships come sail -- ing in,
  On Christ -- mas day in the morn -- ing.
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought I might drink some green blood,
per -- haps blue blood or red wine blood.
Per -- haps I might eat sau -- sage blood
on a bis -- cuit in the morn -- ing.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought I want -- ed to dis -- close my on -- ions
to my sis -- ter Rose.
I thought I might give me a pose
or I thought so in the morn -- ing.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I won -- der who I thought I might
see un -- der -- wear in pick -- led blight.
I thought I might give him a fright
with on -- ions ov -- er my ear -- lobes.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I won -- der if you thought I was
a pick -- led bird, an on -- ion herb.
I thought I might be on -- ion soup.
But I'm not, I am a hu -- man.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
I won -- der if you thought a bear
could wear un -- der -- wear o -- ver there.
I wonder if you thought a pear
could do an -- y -- thing with the mourn -- ing.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
I won -- der how my on -- ions did
when they were out a -- way as kids
I won -- der how my on -- ions did
as they were sing -- ing, as we bid.
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
I thought per -- hap this song was good
but I was wrong it's just a skunk.
I thought per -- haps this song was good.
But it is just de -- fi -- cient junk.
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
I won -- der if you won -- der of my
pick -- led on -- ion lump -- y bat.
I thought I pick -- led soup -- er sack,
but I love cute lit -- tle black cats.
}

lyricsI = \lyricmode {
    \set stanza = #"9. "
I won -- der why the pick -- led shrew
left on -- ion pick -- les in my brew.
I thought a ba -- gel bub -- ble bump
but hu -- mans are a lit -- tle lump.
}

lyricsJ = \lyricmode {
    \set stanza = #"10. "
I won -- der if I was a bird,
a pick -- led crop, an on -- ion block.
I thought I might find I am heard,
if I pick -- led with the whole flock.
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
%            \new Lyrics \lyricsto "sopranos" \altoLyrics
        >>
        \layout { }
%        \midi { }
    }
}

