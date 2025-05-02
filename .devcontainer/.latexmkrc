#!/usr/bin/perl

@default_files  = 'cv.tex';
$out_dir        = ('../output/');

$lualatex       = 'lualatex -synctex=1 -file-line-error -halt-on-error %O %S';
$bibtex         = 'pbibtex %O %B';
$biber          = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$makeindex      = 'mendex %O -o %D %S';
$max_repeat     = 3;
$pdf_mode       = 4;

$ENV{TZ} = 'Asia/Tokyo';
$ENV{OPENTYPEFONTS} = '/usr/share/fonts//:';
$ENV{TTFONTS} = '/usr/share/fonts//:';

$clean_ext = "bbl run.xml synctex.gz"
