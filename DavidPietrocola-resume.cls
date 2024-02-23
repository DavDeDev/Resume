% Intro Options
\ProvidesClass{DavidPietrocola-resume}[2023/12/03 CV class]
\NeedsTeXFormat{LaTeX2e}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\newcommand{\setcolors}{
  \definecolor{date}{HTML}{666666}
  \definecolor{primary}{HTML}{111111}
  \definecolor{headings}{HTML}{6A6A6A}
  \definecolor{subheadings}{HTML}{333333}
}
\newcommand{\setprintcolors}{
  \definecolor{date}{HTML}{111111}
  \definecolor{primary}{HTML}{111111}
  \definecolor{headings}{HTML}{111111}
  \definecolor{subheadings}{HTML}{111111}
}

\DeclareOption{print}{
  \renewcommand{\setcolors}{\setprintcolors}
}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax

\setcolors

\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Today formatted
\usepackage[british]{babel}
\usepackage[showdow]{datetime2}
\DTMlangsetup[en-GB]{ord=raise,monthyearsep={/\space}}


% Set main fonts
\usepackage{fontspec}

\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-RegIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-Light}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}




% Name command
\newcommand{\namesection}[3]{
  \centering{
    \fontsize{40pt}{60pt}
    \fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1
    \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
  } \\[5pt]
  \centering{
    \color{headings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{13pt}{14pt}\selectfont #3}
  \noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
  \vspace{-15pt}
}


% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}
\newcommand{\smallsep}{\vspace{2pt}}
\newcommand{\mediumsep}{\vspace{3pt}}

% Headings command
\titleformat{\section}{\color{headings}
  \scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
  \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
  \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
  \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
  \color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
  \vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
    {\end{itemize}\vspace{-\topsep}}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}

% Subject Command
\newcommand{\subject}[1]{
  \descript{RE: #1}
  \sectionsep
  \sectionsep
  \sectionsep
}


% Address
\newcommand{\address}[4]{
  \sectionsep
  \sectionsep
  \sectionsep
  \textbf{#1}\\
  #2\\
  #3\\
  #4\\
  \sectionsep
  \sectionsep
  \sectionsep
}

\newcommand{\hackathon}[4]{
  \href{#4}{#3}& \textbf{#2} & #1 
}
