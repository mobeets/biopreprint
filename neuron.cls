%% Class neuron
%% Copyright 2011 C Daniel Meliza, dmeliza@uchicago.edu
% Modified in 2016 by Jay Hennig, jhennig@cmu.edu
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{neuron}[06/1/2011 v1.1]
\LoadClassWithOptions{preprint}

\RequirePackage{natbib}
\RequirePackage[singlelinecheck=off,justification=raggedright]{subcaption}
\RequirePackage[labelfont={color=Mahogany, bf},labelsep=period]{caption} % colors 'Figure 1' in caption, but unfortunately this also colors subcaptions: 'A', 'B', etc.

\RequirePackage[dvipsnames]{xcolor}

% Coloring for references (n.b. cite with \citep{...})
\RequirePackage[colorlinks=true,linkcolor=black,citecolor=RoyalBlue,urlcolor=black]{hyperref}
% include 'Figure' in link formatting above
\RequirePackage[capitalize,noabbrev,nameinlink]{cleveref}
\crefformat{equation}{\color{RoyalBlue}Equation~\textup{#2#1#3}}
% Figure labels like 'A' and not '(A)'; 'none' would hide it entirely
\captionsetup[subfigure]{labelformat=simple}

%% Set the citation and bibliography style
%\bibliographystyle{neuron}
\bibliographystyle{/Users/mobeets/texmf/tex/biopreprint/neuron.bst}

\newcommand{\figtitle}[1]{{\bfseries\color{Mahogany}#1}}
\renewcommand\abstracttitle{Summary}
\renewcommand\methodstitle{Experimental Procedures}

% Sections and subsection formatting
\renewcommand{\section}{\@startsection {section}{1}{\z@}%
             {-3.5ex \@plus -1ex \@minus -.2ex}%
             {2.3ex \@plus .2ex}%
             {\color{Mahogany}\sffamily\scshape\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
             {-3.25ex\@plus -1ex \@minus -.2ex}%
             {1.5ex \@plus .2ex}%
             {\color{Mahogany}\sffamily\bfseries}}

% Highlights bulleted section
\newenvironment{highlights}{%
  \sffamily
  \setlength{\parindent}{0in}%
  \section*{\Large\upshape\color{RoyalBlue}Highlights}\par\vspace{-6pt}%
  \begin{list}{$\bullet$ }{%
      \setlength{\topsep}{0in}%
      \setlength{\leftmargin}{0in}%
      \setlength{\listparindent}{0in}%
      \setlength{\labelsep}{0em}%
      \setlength{\labelwidth}{0in}%
      \setlength{\itemsep}{0pt}}
}{\end{list}}

% In Brief section
\newenvironment{brief}{%
  \sffamily
  \setlength{\parindent}{0in}%
  \section*{\Large\upshape\color{RoyalBlue}In Brief}\par\vspace{-6pt}%
}

% for referring to methods in text
\newcommand{\methodsref}{{\color{RoyalBlue}\methodstitle}}

%
% Figures
%
% capitalize subfigure, e.g. 'A' and not 'a'
\renewcommand{\thesubfigure}{\Alph{subfigure}}
% refer to 'Figure'
\renewcommand{\figurename}{Figure}
\newcommand{\figurenamedrop}{\figurename~}
\renewcommand*\numberline[1]{#1.\space}
\renewcommand*{\l@figure}[2]{%
  \setlength\@tempdima{2.3em}%
  \noindent \figurenamedrop #1\hfil\newline\newline }
% Figure captions continue onto next page if necessary
\makeatletter
\renewenvironment{figure}
{\def\@captype{figure}}
{}
\makeatletter

% all text is sans-serif
\renewcommand\familydefault{\sfdefault} % sans-serif all the way through
