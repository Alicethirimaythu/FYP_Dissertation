% Class style (c) 2010: Johann A. Briffa <j.briffa@ieee.org>
% $Id: surreydissertation.cls 4436 2013-02-19 08:44:00Z jabriffa $

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{surreydissertation}[2010/09/27]

% Base class

\LoadClass[a4paper,11pt,oneside]{report}

% Package requirements

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{multicol}

\RequirePackage[left=1.0in,right=1.0in,top=1.0in,bottom=1.0in,
   head=0.5in,foot=0.5in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage{hyperref}
% \RequirePackage{IEEEtran}
\RequirePackage{harvard}
\RequirePackage[centertags,reqno]{amsmath}

\RequirePackage{listings}

\RequirePackage{xcolor}

%New colors defined below
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
  backgroundcolor=\color{backcolour}, commentstyle=\color{codegreen},
  keywordstyle=\color{magenta},
  numberstyle=\tiny\color{codegray},
  stringstyle=\color{codepurple},
  basicstyle=\ttfamily\footnotesize,
  breakatwhitespace=false,         
  breaklines=true,                 
  captionpos=b,                    
  keepspaces=true,                 
  numbers=left,                    
  numbersep=5pt,                  
  showspaces=false,                
  showstringspaces=false,
  showtabs=false,                  
  tabsize=2
}

% \Requirepackage[numbers]{natbib}
% Fix for harvard package use with MikTeX and LyX
\renewcommand{\harvardurl}{URL: \url}
% \RequirePackage[breaklinks]{hyperref}
% Layout settings

\setlength{\parindent}{0in}
\setlength{\parskip}{6pt}

\newcommand{\doublespaced}{
   \renewcommand{\baselinestretch}{1.6}
   \renewcommand{\arraystretch}{0.75}
   \selectfont
   }
\newcommand{\singlespaced}{
   \renewcommand{\baselinestretch}{1.0}
   \renewcommand{\arraystretch}{1.0}
   \selectfont
   }

% Float handling

\renewcommand{\topfraction}{1.0}
\renewcommand{\bottomfraction}{1.0}
\renewcommand{\textfraction}{0.2}
\renewcommand{\floatpagefraction}{0.7}
\setlength{\floatsep}{0.3in}
\setlength{\textfloatsep}{\floatsep}
\setlength{\intextsep}{\floatsep}

% Table of contents and section numbering

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

% Headers and Footers

\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{\thepage}
\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\pagestyle{headings}

% Title page

\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\urn}[1]{\def\@urn{#1}}

\renewcommand{\maketitle}{
   \singlespaced
   \begin{titlepage}
   \begin{center}
   \vspace*{\stretch{1.5}}

   {\LARGE \MakeUppercase{\@title}}

   \vspace{\stretch{1}}

   by

   \vspace{\stretch{1}}

   {\Large \MakeUppercase{\@author}}\\
   URN: \@urn

   \vspace{\stretch{1.5}}

   A dissertation submitted in partial fulfilment of the\\
   requirements for the award of

   \vspace{\stretch{1}}

   {\Large \MakeUppercase{\@degree}}

   \vspace{\stretch{1}}

   \@date

   \vspace{\stretch{1}}

   Department of Computer Science\\
   University of Surrey\\
   Guildford GU2 7XH
   \end{center}

   \vspace{\stretch{1.5}}

   Supervised by: \@supervisor
   \end{titlepage}
   \newpage
   \pagestyle{empty}
   \vspace*{\stretch{1}}
   % statement of originality
   I confirm that the submitted work is my own work.
   No element has been previously submitted for assessment, or where it has, it has been correctly referenced.
   I have clearly identified and fully acknowledged all material that is entitled to be attributed to others (whether published or unpublished) using the referencing system set out in the program handbook.

   I agree that the University may submit my work to means of checking this, such as the plagiarism detection service Turnitin® UK and the Turnitin® Authorship Investigate service.
   I confirm that I understand that assessed work that has been shown to have been plagiarised will be penalised.\\[12pt]
   \@author\\
   \@date
   \vspace*{\stretch{2}}
   \newpage
   \pagestyle{empty}
   % copyright statement
   \vspace*{\stretch{1}}
   \begin{center}
   \textcopyright\ Copyright \@author, \@date
   \end{center}
   \vspace*{\stretch{2}}
   \doublespaced
   \newpage
   \pagestyle{fancy}
   % remainder
   }

% Special sections

\newenvironment{dictionary}[1]
   {%
   \chapter*{#1}
   \markright{\MakeUppercase{#1}}
   \begin{list}{}{
   \setlength{\topsep}{0pt}
   \setlength{\partopsep}{0pt}
   \setlength{\itemsep}{0pt}
   \setlength{\parsep}{0pt}
   \setlength{\listparindent}{0pt}
   \setlength{\labelsep}{0pt}
   \setlength{\labelwidth}{0.75in}
   \setlength{\rightmargin}{0pt}
   \setlength{\itemindent}{0pt}
   \setlength{\leftmargin}{0.75in}
   \renewcommand{\makelabel}[1]{##1\hfill}
   }}
   {%
   \end{list}
   }

% Symbols

\def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX }}

\newcommand{\ceil}[1]{\ensuremath{\left\lceil#1\right\rceil}}
\newcommand{\floor}[1]{\ensuremath{\left\lfloor#1\right\rfloor}}
\newcommand{\abs}[1]{\ensuremath{\left|#1\right|}}
\newcommand{\expect}[1]{\ensuremath{\E\left\{#1\right\}}}
\newcommand{\prob}[1]{\ensuremath{\Pr\left\{#1\right\}}}
\renewcommand{\vec}[1]{\ensuremath{\mathbf{#1}}}

% User pacifier

\AtBeginDocument{%
   \typeout{..............................................................}
   \typeout{You are using the surrey dissertation style (Johann A. Briffa)}
   \typeout{..............................................................}
}
