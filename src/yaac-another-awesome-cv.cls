%% Copyright 2016 Christophe Roger
%
% Author: 
% Christophe Roger (Darwiin) and Sebastin Santy
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3c
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is M. C. Roger.
%
% This work consists of the files awesome-source-cv.cls 

\ProvidesClass{yaac-another-awesome-cv}[2018/07/19  v1.9.2 'YAAC: Another Awesome CV' Class]

\LoadClass[a4paper]{article}

\newif\if@showLinks   \@showLinksfalse

\DeclareOption{green}{
  \def\@green{green}
}

\DeclareOption{red}{
  \def\@red{red}
}

\DeclareOption{indigo}{
  \def\@indigo{indigo}
}
\DeclareOption{orange}{
  \def\@orange{orange}
}

\DeclareOption{monochrome}{
  \def\@monochrome{monochrome}
}

\DeclareOption{localFont}{
  \def\@local{local}
}

\DeclareOption{alternative}{
  \def\@alternative{alternate}
}

\DeclareOption{showLinks}{ \@showLinkstrue}

\ProcessOptions

% Dependences
%A Few Useful Packages
\RequirePackage[english]{babel}
\RequirePackage[utf8]{luainputenc}
\RequirePackage{fontspec} 					                 % for loading fonts
\RequirePackage{url,parskip} 	    % other packages for formatting
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{fullpage}
\RequirePackage[margin=1.5cm]{geometry}
\RequirePackage{fontawesome}
\RequirePackage{academicons}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=linkcolor,
  filecolor=linkcolor,
  citecolor = black,
  urlcolor=linkcolor,
}
\RequirePackage{titlesec}
\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{longtable}
\RequirePackage{etoolbox}
\RequirePackage{tikz}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{fancyhdr}
\RequirePackage{pagecolor}
\RequirePackage{xifthen}
% \usepackage{colortbl}


\DeclareUnicodeCharacter{00E9}{\'{e}}
% Define default accent colors
\definecolor{basecolor}{HTML}{000066}
\ifundef{\@green} {
  \ifundef{\@red} {
    \ifundef{\@indigo}{
      \ifundef{\@orange} {
        \ifundef{\@monochrome} {}
        { \definecolor{basecolor}{HTML}{000000}}
      }
      { \definecolor{basecolor}{HTML}{e68a00} }
    }
    { \definecolor{basecolor}{rgb}{0.2, 0.07, 0.48} }
  }
  { \definecolor{basecolor}{HTML}{b30000} }     %RED
}
{ \definecolor{basecolor}{rgb}{0.0, 0.62, 0.38} }

\definecolor{darkGrey}{HTML}{989898}

\definecolor{linkcolor}{HTML}{5d4305}

% Change this color for changing the link
\colorlet{linkcolor}{basecolor}
% Change this color for changing the accent
\colorlet{accentcolor}{basecolor}
\colorlet{symbolcolor}{linkcolor!85}

% Setup hyperref package, and colours for links
%\definecolor{linkcolour}{rgb}{0,0.2,0.6}

\if@showLinks
  \hypersetup{%
    breaklinks
  }%
\else
  \hypersetup{%
    pdfborder = {0 0 0},
    breaklinks
  }%
\fi

% Setup fancyhdr package
\fancyhf{}
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
%\fancyfoot[C]{\thepage}
\pagestyle{fancy}

%\pagestyle{empty}                         % non-numbered pages
%\font\fb=''[cmr10]''                      % for use with \LaTeX command

% Setup CV sections
\titleformat{\section}{\Large\raggedright}{}{0em}{}[\titlerule]
\titlespacing{\section}{0pt}{2pt}{2pt}

% Configure list
\setlist[itemize,1]{label=\faAngleRight, nosep, leftmargin=1.2em}
\setlist[itemize,2]{label=\faAngleRight, nosep, leftmargin=2em}

% Setup Array : new column type
\newcolumntype{R}[1]{>{\hfill}m{#1}}

%Italian hyphenation for the word: ''corporations''
\hyphenation{im-pre-se}

% Setup fonts
\defaultfontfeatures{Mapping=tex-text}
%

% Define font to use according to localFont option
\ifundef{\@local}
{
  %   \setmainfont{GentiumBasic-Regular}[BoldFont = Helvetica Neue, ItalicFont=Helvetica Neue Thin Italic ,SmallCapsFont = Helvetica Neue Light]

  \setmainfont{GentiumBasic-Regular}[
    Path = fonts/,
    BoldFont = GentiumBasic-Bold,
    ItalicFont = GentiumBasic-Italic]
  %   \setmainfont{Source Sans Pro Light}[
  %     BoldFont = SourceSansPro-Regular, 
  %     ItalicFont= Source Sans Pro Light Italic]
}
{
  \setmainfont{GentiumBasic-Regular}[
    Path = fonts/,
    BoldFont = GentiumBasic-Bold,
    ItalicFont = GentiumBasic-Italic]
}

%New length definition
\newlength{\rightcolumnlength}
\setlength{\rightcolumnlength}{15.3cm}

\newlength{\leftcolumn}
\setlength{\leftcolumn}{2cm}

% Font Awesome icons aliases
\newcommand{\mailSymbol}{\faAt}
\newcommand{\locationSymbol}{\faMapMarker}
\newcommand{\infoSymbol}{\faInfo}
\newcommand{\linkedinSymbol}{\faLinkedin}
\newcommand{\scholarSymbol}{\aiGoogleScholar}
\newcommand{\websiteSymbol}{\faGlobe}
\newcommand{\viadeoSymbol}{\faViadeo}
\newcommand{\mobileSymbol}{\faMobilePhone}
\newcommand{\githubSymbol}{\faGithub}
\newcommand{\videoSymbol}{\faVideoCamera}
\newcommand{\commitSymbol}{\faCodeFork}
\newcommand{\linkSymbol}{\faLink}
\newcommand{\arxivSymbol}{\aiarXiv}
\newcommand{\journalSymbol}{\faNewspaperO}
\newcommand{\doiSymbol}{\aiDoi}

\newcommand\link[2]{\color{linkcolor}\href{#1}{#2}\color{Black} }
\newcommand\important[1]{\textbf #1}

% Create a tag
% Usage: \cvtag{<tag label>}
\newcommand{\cvtag}[1]{%
  \tikz[baseline]\node[anchor=base,draw=darkGrey!70,rounded corners=0.5ex,inner xsep=1ex,inner ysep =0.55ex,text height=1.3ex,text depth=.25ex]{#1};
}

% Render author's name
% Usage: \user{<firstanme>}{<lastname>}
\newcommand\user[2]{\color{accentcolor}{\LARGE #1 \textsc{\textbf{#2}}}\color{Black}}

% Render a text with its symbol
% Usage; \socialtext{<icon>}{<label>}
\newcommand{\socialtext}[2]{\mbox{\textcolor{symbolcolor}{#1}\hspace{0.5em}#2\hspace{1em}}}

% Render a link with its symbol
% Usage; \sociallink{<icon>}{<label>}
\newcommand{\sociallink}[3]{\mbox{\textcolor{symbolcolor}{#1}\hspace{0.5em}\link{#2}{#3}\hspace{1em}}}

% Define author's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define author's tagline
% Usage: \tagline{<tag line>}
\newcommand*{\tagline}[1]{\def\@tagline{#1}}

% Define author's photo
% Usage \photo{<diameter>}{<photo>}
\newcommand{\photo}[2]{\def\@photo{#2}\def\@photodiameter{#1}}

% Render author's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\socialtext{\locationSymbol}{#1}}

% Render author's infos
% Usage: \infos{<infos>}
\newcommand*{\infos}[1]{\socialtext{\infoSymbol}{#1}}

% Render author's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\sociallink{\linkedinSymbol}{http://www.linkedin.com/in/#1}{linkedin.com/in/#1}}

\newcommand*{\website}[1]{\sociallink{\websiteSymbol}{http://www.#1}{#1}}

\newcommand*{\scholar}[1]{\sociallink{\scholarSymbol}{#1}{Google Scholar}}

% Render author's viadeo(optional)
% Usage: \viadeo{<viadeo-nick>}
\newcommand*{\viadeo}[1]{\sociallink{\viadeoSymbol}{http://www.viadeo.com/fr/profile/#1}{viadeo.com/fr/profile/#1}}

% Render author's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\sociallink{\githubSymbol}{https://www.github.com/#1}{github.com/#1}}           % Github icon + URL

% Render author's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\sociallink{\mailSymbol}{mailto:#1}{#1}}

% Render a website link (optional)
% Usage: \email{<email adress>}
% \newcommand*{\website}[2]{\sociallink{\faExternalLink}{#1}{#2}}

% Render author's mobile phone (optional)
% Usage: \smartphone{<mobile phone number>}
\newcommand*\smartphone[1]{\socialtext{\mobileSymbol}{#1}}

% Render author's tagline
\newcommand\resumetitle[1]{
  \ifundef{\@alternative}{
    \par{
      \bigskip\center{\Large \color{accentcolor}\textbf{#1}\color{Black}}\par
    }
    \bigskip
  }{
    \color{accentcolor}\textbf{\large{#1}}\color{black}
  }
}

\newcommand\idphoto{
\tikz\path[fill overzoom image={\@photo}]circle[radius=0.5\linewidth];
}

% Define social entries to print in header
\newcommand{\socialinfo}[1]{\def\@socialinfo{#1}}

% Render CV header
% Needs \@firstname, \@lastname and \@tagline to be defined
\newcommand*{\makecvheader}{
\ifundef{\@alternative}{
\ifundef{\@photodiameter}{
\begin{minipage}{\linewidth}
}{
\begin{minipage}{\dimexpr\linewidth-\@photodiameter-2em}
  }
  \color{accentcolor}\user{\@firstname}{\@lastname}\color{black}\\
  \small{\@socialinfo}
\end{minipage}
\ifdef{\@photodiameter}{
  \begin{minipage}{\@photodiameter}
    \idphoto
  \end{minipage}
}{}
\resumetitle{\@tagline}
}{
% \ifundef{\@photodiameter}{
%   \begin{minipage}{\linewidth}
% }{
%   \begin{minipage}{\dimexpr\linewidth-\@photodiameter-2em}
% }
\begin{center}
  \user{\@firstname}{\@lastname}\\
  \vskip 0.2cm
  \resumetitle{\@tagline}
  \smallskip\\
  \small{\@socialinfo}

\end{center}
% \end{minipage}
% \ifdef{\@photodiameter}{
%   \begin{minipage}{\@photodiameter}
%     \idphoto
%   \end{minipage}
% }
{}
\bigskip
}
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{#1}
  \fancyfoot[C]{#2}
  \fancyfoot[R]{#3}
}

% Resume part title definition
\newcommand\sectionTitle[2]{\section{\texorpdfstring{\color{accentcolor}#2\enspace \textsc{#1}}{#1}}}

% Define the 'keywords' environment
\newenvironment{keywords}{%
  \renewcommand{\arraystretch}{1.1}

  \begin{tabular}{>{}r>{}p{13cm}}
    }{%
  \end{tabular}
}

% Render a scholarshipentry in the scolarship environment
% Usage: \scholarshipentry{<date>}{<description>}
\newcommand\keywordsentry[2]{
  \textbf{#1} &   #2\\
}

% Define a new column type for the scholarship environment
\newcolumntype{Y}{>{\raggedleft}p{\leftcolumn}}

% Define the 'scholarship' environment
\newenvironment{scholarship}{%
  \begin{tabular}{Y p{\rightcolumnlength}}
    }{%
  \end{tabular}
}

% Render a scholarshipentry in the scolarship environment
% Usage: \scholarshipentry{<date>}{<description>}
\newcommand\scholarshipentry[2]{
  #1    &  #2 \\
}

% Define the 'skills' environment
\newenvironment{skills}{%
  \begin{longtable}{R{\leftcolumn}p{\rightcolumnlength}}
    }{%
  \end{longtable}
}

% Render a skill in the skills environment
% Usage: \skill{<skill>}{<level>}
\newcommand\skill[2]{
  \textbf{#1}    & \foreach \x in {1,...,5}{{\color{accentcolor!80} \ifnumgreater{\x}{#2}{\faCircleThin}{\faCircle}}\enspace } \\
}

\newcolumntype{E}{>{\raggedright\arraybackslash}p{\rightcolumnlength}}

% Define the 'experiences' environment
\newenvironment{experiences}{%
  \begin{longtable}{R{\leftcolumn}|E}
    }{%
  \end{longtable}
}

% Render an experience in the experiences environment
% Usage: 
% \experience
%  {<End date>}      {<Title>}{<Enterprise>}{<Country>}
%  {<Start date}     {
%                      <Experience description (Could be a list)>
%                    }
%                    {<Technology list>}
\newcommand\experience[7]{
  \textbf{#1}    & \textbf{#2}   								\\*
  \textbf{#5}    & \begin{minipage}[t]{\rightcolumnlength}
    #6
  \end{minipage}										\\*
  & \footnotesize{\foreach \n in {#7}{\cvtag{\n}}} 	\\
}

\newcommand\researchexperience[6]{
  \textbf{#1}    & \textbf{#2}  \hfill  \textbf{#3}							\\*
  \textbf{#5}    & \begin{minipage}[t]{\rightcolumnlength}
    #6
  \end{minipage}										\\*
}
% Render a consultant experience in the experiences environment
% Usage: 
% \consultantexperience
%  {<End date>}      {<Consultant title>}{<Consulting Enterprise>}{<Country>}
%  {<Start date}     {<Client title>}{<Client business unit>}
%                    {
%                      <Experience description (Could be a list)>
%                    }
%                    {<Technology list>}
\newcommand\consultantexperience[9]{
  \textbf{#1}    & \textbf{#2, \textsc{#3}, #4}   								\\*
  \textbf{#5}    & \emph{#6} pour \textsc{#7}                       				\\*
  & 	\begin{minipage}[t]{\rightcolumnlength}
    #8
  \end{minipage}										\\*
  & \footnotesize{\foreach \n in {#9}{\cvtag{\n}}} 	\\
}

\newcommand\emptySeparator{\multicolumn{2}{c}{}\\}

\newenvironment{educations}{%
  \begin{longtable}{R{\leftcolumn}|E}
    }{%
  \end{longtable}
}

\newcommand\education[6]{
  \textbf{#1}    & \textbf{#2} \hfill \textbf{#3}   					\\*
  \textbf{#5}    & \begin{minipage}[t]{\rightcolumnlength}
    #6
  \end{minipage}										\\*
}

% Define the 'projects' environment
\newenvironment{projects}{%
  \begin{longtable}{l}
    }{%
  \end{longtable}
}

% Define the 'project' entry in the 'projects' environment
% Usage:
% \project
%   {<Project name>}{<dates>}
%   {<link1> <link2>}
%   {<Project description>}
%   {<techno1>,<techno2>}
% \newcommand\project[5]{
%   \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
%     \textbf{\textsc{#1}} \hfill \textsc{#2}\smallskip\\
%     #3\\
%     #4\smallskip\\
%     \footnotesize{\foreach \n in {#5}{\cvtag{\n}}}\\
%   \end{minipage}
%   \\*
% }

\newcommand\project[4]{
  \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
    \textbf{\textbf{#1}} \hfill \textsc{#2}\smallskip \vspace{-0.8mm}\\
    \vspace{-3.3mm}
    #3\\
    #4\smallskip
    \vspace{3mm}
  \end{minipage}
  \\*
}

\newcommand\projecta[4]{
  \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
    \textbf{\textbf{#1}} ~ #3 \hfill \textsc{#2}\smallskip \vspace{-0.8mm}\\
    \vspace{-3.3mm}
    % #3\\
    #4\smallskip
    \vspace{1.2mm}
  \end{minipage}
  \\*
}

\newenvironment{talks}{%
  \begin{longtable}{l}
    }{%
  \end{longtable}
}

% \newcommand\talk[4]{
%   \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
%     \textbf{\textbf{#1}} #3 \smallskip \vspace{-0.8mm}\\
%     % \vspace{-0.3mm}
%     % \noindent
%     % #3\\
%     % #4\smallskip\\
%     \vspace{-2.2mm}
%   \end{minipage}
%   \\*
% }

% \newcommand\talk[2]{
%   \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
%     #1 \smallskip \vspace{-0.8mm}\\
%     \vspace{-0.3mm}
%     \noindent
%     #2\\
%     % #4\smallskip\\
%     \vspace{-2.2mm}
%   \end{minipage}
%   \\*
% }

\newcommand\award[4]{
  \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
    \textbf{#1}\textbf{#3} ~ #4
    % \textbf{#3}
    % \smallskip \vspace{-0.8mm}\\

    % \vspace{-0.3mm}
    % \noindent
    % #3\\
    % #4\smallskip\\
    \vspace{2mm}
  \end{minipage}
  \\*
}


\newcommand\talk[2]{
  \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
    \textbf{\textbf{#1}}\smallskip \vspace{-0.8mm}\\
    \vspace{-3.3mm}
    #2\smallskip
    \vspace{1.5mm}
  \end{minipage}
  \\*
}

\newcommand\leader[4]{
  \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
    \textbf{\textbf{#1}} \hfill #2 \smallskip \vspace{-0.8mm}\\
    \vspace{-0.3mm}
    \noindent
    #3\\
    #4\smallskip\\
    \vspace{-2.2mm}
  \end{minipage}
  \\*
}

\newenvironment{courses}{%
  \begin{longtable}{l}
    }{%
  \end{longtable}
}

\newcommand\course[1]{
  \begin{minipage}[t]{\dimexpr(\linewidth) - 1.5em}
    #1\\
  \end{minipage}
  \\*
}

\newenvironment{publications}{%
  \begin{longtable}{ll}
    }{%
  \end{longtable}
}

% \newenvironment{experiences}{%
%   \begin{longtable}{R{\leftcolumn}|E}
% }{%
%   \end{longtable}
% }

\newcommand\publication[6]{
  \textbf{\small [#6]} & \begin{minipage}[t]{\dimexpr(\linewidth) - 4em}
    \textbf{#1} {#2} \\ {#3} \\ \textit{ #5} \enspace { \ifthenelse{\isempty{#4}} {} {\hfill \small{\lbrack\textbf{{#4}}\rbrack}}} \vspace{2mm}
  \end{minipage}
  \\*
}

% Two-pass implementation for automatic reverse numbering
\usepackage{totcount}

% Define counters for each category
\newcounter{ijcounter}
\newcounter{iccounter}
\newcounter{dccounter}

% Register the counters with totcount package
\regtotcounter{ijcounter}
\regtotcounter{iccounter}
\regtotcounter{dccounter}

% First pass: Count publications by category
\newcommand{\ijpublication}[5]{
  \stepcounter{ijcounter}
  \publication{#1}{#2}{#3}{#4}{#5}{IJ.\the\numexpr\totvalue{ijcounter}-\value{ijcounter}+1\relax}
}

\newcommand{\icpublication}[5]{
  \stepcounter{iccounter}
  \publication{#1}{#2}{#3}{#4}{#5}{IC.\the\numexpr\totvalue{iccounter}-\value{iccounter}+1\relax}
}

\newcommand{\dcpublication}[5]{
  \stepcounter{dccounter}
  \publication{#1}{#2}{#3}{#4}{#5}{DC.\the\numexpr\totvalue{dccounter}-\value{dccounter}+1\relax}
}

\newcommand*\twocolumnsection[2]{
  \begin{minipage}[t]{\dimexpr(\linewidth/2) - 3em}
    #1
  \end{minipage}
  \hfill
  \begin{minipage}[t]{\dimexpr(\linewidth/2) - 3em}
    #2
  \end{minipage}
}

% Define the 'referencees' environment
\newenvironment{referees}{%
}{%
  \hfill
}

\newcommand*\referee[4]{
  \hspace{1em}
  \begin{minipage}[t]{\dimexpr(\linewidth/4) - 1em}
    \begin{tabular}{>{}l >{}l}
      \multicolumn{2}{l}{\textbf{#1}} \\
      \multicolumn{2}{l}{\emph{#2}}   \\
      \multicolumn{2}{l}{\textsc{#3}} \\
      \href{mailto:#4}{#4}            \\
    \end{tabular}
  \end{minipage}%
}

