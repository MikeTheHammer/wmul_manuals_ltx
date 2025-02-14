%% wmul-manual.cls
%% Copyright 2025 Michael Stanley
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Michael Stanley
% stanley50@marshall.edu
%
% This work consists of the file wmul-manual.cls

% This template was based upon ol-softwaremanual 2021/05/17 v1.1 Overleaf 
% Software Manual Template which was also LPPL v1.3c, when accessed on 
% 2025/01/11
% https://www.overleaf.com/latex/templates/technical-document-template/mdgftpdfbvbs


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wmul-manual}[2025/01/11 v0.0.4 Template for WMUL-FM's Manuals]

\LoadClass[12pt, letterpaper, extrafontsizes, twoside]{memoir}

% Set margins and design headers/footers
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
	\newgeometry{
		inner=0.75in,
		textwidth=6.00in,
		top=1.0in,
		bottom=1.1in,
		headheight=15pt,
		headsep=12pt,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[RO]{\nouppercase\rightmark}
	\fancyhead[LE]{\nouppercase\leftmark}
	\fancyfoot[LE, RO]{\@pagenumberlead Page \thepage}
	\fancyfootoffset[LE, RO]{1.2in}
	\renewcommand{\headrulewidth}{0pt}
	\hypersetup{
		linkcolor=BrickRed
	}
}

\fancypagestyle{fancy}{
	\newgeometry{
		inner=0.75in,
		textwidth=6.00in,
		top=1.0in,
		bottom=1.1in,
		headheight=15pt,
		headsep=12pt,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[RO]{\nouppercase\rightmark}
	\fancyhead[LE]{\nouppercase\leftmark}
	\fancyfoot[LE, RO]{\@pagenumberlead Page \thepage}
	\fancyfootoffset[LE, RO]{1.2in}
	\renewcommand{\headrulewidth}{1pt}
	\raggedright
	\raggedbottom
	\setlength{\parindent}{3em}
	\hypersetup{
		linkcolor=BrickRed
	}
}

\fancypagestyle{cover}{%
	\newgeometry{
		inner=0in,
		outer=0in,
		top=1.0in,
		bottom=1.0in,
		heightrounded
	}
	\fancyhf{}%
	\renewcommand{\headrulewidth}{0pt}
}

\fancypagestyle{frontmatter}{%
	\newgeometry{
		inner=0.5in,
		outer=0.5in,
		top=1.0in,
		bottom=1.0in,
		heightrounded
	}
	\fancyhf{}%
	\renewcommand{\headrulewidth}{0pt}
}

\fancypagestyle{tocstyle}{%
	\newgeometry{
		inner=0.75in,
		textwidth=6.00in,
		top=1.0in,
		bottom=1.0in,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyfoot[LE, RO]{\@pagenumberlead Page \thepage}
	\fancyfootoffset[LE, RO]{1.2in}
	\hypersetup{
		linkcolor=black
	}
}

\fancypagestyle{fullpageimage}{%
	\newgeometry{
		inner=0in,
		outer=0in,
		top=0in,
		bottom=0in
	}
	\fancyhf{}%
	\renewcommand{\headrulewidth}{0pt}
	\setlength{\parindent}{0em}
}

\fancypagestyle{landscape}{
	\setlength{\parindent}{0em}
}

\fancypagestyle{largegraphic}{
	\newgeometry{
		inner=0.5in,
		textwidth=7.25in,
		top=1.0in,
		bottom=1.1in,
		headheight=15pt,
		headsep=12pt,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[RO]{\nouppercase\rightmark}
	\fancyhead[LE]{\nouppercase\leftmark}
	\fancyfoot[LE, RO]{\@pagenumberlead Page \thepage}
	\fancyfootoffset[LE, RO]{0.2in}
	\renewcommand{\headrulewidth}{1pt}
	\raggedright
	\setlength{\parindent}{3em}
}


\RequirePackage[none]{hyphenat} % No hypenation
\RequirePackage{parskip} % Configure paragraph spacing
\linespread{1.1}
\RequirePackage{indentfirst} % Indent first paragraph of a chapter
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{CormorantGaramond} % Use the Cormorant Garamond font family
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{hyperref} 
\hypersetup{
	colorlinks=true,
	filecolor=black,
	urlcolor=black,
	pdfpagelayout=TwoPageRight
}
\RequirePackage[most]{tcolorbox} % For the note boxes
\RequirePackage[calcwidth]{titlesec} % For configuring the chapter, section, 
% etc titles
\RequirePackage{enumitem} % Format the lists
\setlist[1]{itemsep=-12pt, leftmargin=4em, itemindent=-1.5em, parsep=16pt}
\setlist[2]{itemsep=-12pt, leftmargin=3em, itemindent=-1em, parsep=16pt, topsep=-12pt, label=\alph*.}
\setlist[3]{itemsep=-12pt, leftmargin=3em, itemindent=-1em, parsep=16pt, topsep=-12pt}

\RequirePackage{tikz}

% Commands for configuring the values of the front matter pages
\DeclareRobustCommand*{\coverimage}[1]{\gdef\@coverimage{#1}}
\DeclareRobustCommand*{\organizationlogo}[1]{\gdef\@logocmd{#1}}
\DeclareRobustCommand*{\volumenumber}[1]{\gdef\@volumenumber{#1}}
\DeclareRobustCommand*{\seriestitle}[1]{\gdef\@seriestitle{#1}}
\DeclareRobustCommand*{\version}[1]{\gdef\@ver{#1}}
\DeclareRobustCommand*{\purpose}[1]{\gdef\@purpose{#1}}
\DeclareRobustCommand*{\address}[1]{\gdef\@address{#1}}
\DeclareRobustCommand*{\dedication}[1]{\gdef\@dedication{#1}}
\DeclareRobustCommand*{\frontquote}[1]{\gdef\@frontquote{#1}}
\DeclareRobustCommand*{\frontquoteattrib}[1]{\gdef\@frontquoteattrib{#1}}
\DeclareRobustCommand*{\compilationversion}[1]{%
    \gdef\compilationversion{#1}%
    \ifstrequal{#1}{public}{%
		\booltrue{BYSA}%
		\boolfalse{BYNCND}%
        \imagecolor{Color/}%
		\boolfalse{PrintNoDerivatives}
		\booltrue{PrintColor}
    }{%
        \ifstrequal{#1}{private_pdf}{%
			\boolfalse{BYSA}%
			\booltrue{BYNCND}%
			\imagecolor{Color/}%
			\booltrue{PrintNoDerivatives}
			\booltrue{PrintColor}
        }{%
			\ifstrequal{#1}{print}{
				\boolfalse{BYSA}%
				\booltrue{BYNCND}%
				\imagecolor{Grayscale/}%
				\booltrue{PrintNoDerivatives}
				\boolfalse{PrintColor}
			}{
				\boolfalse{BYSA}%
				\boolfalse{BYNCND}%
				\imagecolor{Color/}%
				\boolfalse{PrintNoDerivatives}
				\booltrue{PrintColor}
			}
        }%
    }%
}
\DeclareRobustCommand*{\imagecolor}[1]{\gdef\imagecolor{#1}}
\DeclareRobustCommand*{\imageroot}[1]{\gdef\imageroot{#1}}
\newbool{PrintNoDerivatives}
\newbool{PrintColor}
\newbool{BYNCND}
\newbool{BYSA}
\DeclareRobustCommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\subtitle{Volume \@volumenumber\space of \@seriestitle}

\DeclareRobustCommand*{\pagenumberlead}[1]{\gdef\@pagenumberlead{#1}}
\pagenumberlead{Volume \@volumenumber\space -- }

% default values for the front matter pages
\gdef\@coverimage{\@latex@warning{No cover image specified for cover. Ignoring.}}
\gdef\@logocmd{\@latex@warning{No logo command specified for cover. Ignoring.}}
\gdef\@ver{\@latex@warning{No version number specified for title page. Ignoring.}}
\gdef\@purpose{\@latex@warning{No purpose specified for title page. Ignoring.}}
\gdef\@address{\@latex@warning{No address specified for title page. Ignoring.}}
\gdef\@dedication{\@latex@warning{No dedication specified for dedication page. Ignoring.}}
\gdef\@frontquote{\@latex@warning{No frontquote specified for dedication page. Ignoring.}}
\gdef\@frontquoteattrib{\@latex@warning{No frontquoteattrib specified for dedication page. Ignoring.}}

% Format the chapter and section titles
\setsecnumdepth{subsubsection}
\setcounter{tocdepth}{3}
\titleformat{\chapter}[block]{\centering\fontsize{30}{36}\bfseries}{\thechapter.}{0.3em}{}
\titlespacing{\chapter}{0pt}{-3em}{6pt plus .2pt}
\renewcommand{\thesection}{\thechapter.\Alph{section}}
\titleformat{\section}[block]{\raggedright\fontsize{26}{31.2}\mdseries}{\thesection.}{0.3em}{}
\titlespacing{\section}{0pt}{2pt plus 1pt minus .2pt}{2pt plus .2pt}
\titleformat{\subsection}[block]{\raggedright\fontsize{22}{26.4}\bfseries}{\thesubsection.}{0.3em}{}
\titlespacing{\subsection}{0pt}{2pt plus 1pt minus .2pt}{6pt plus .2pt}
\titleformat{\subsubsection}[block]{\raggedright\fontsize{18}{21.6}\mdseries}{\thesubsubsection.}{0.3em}{}
\titlespacing{\subsubsection}{0pt}{2pt plus 1pt minus .2pt}{0pt plus .2pt}
\renewcommand{\thesubsubsection}{\thesubsection.\alph{subsubsection}}
\titleformat{\paragraph}[block]{\raggedright\fontsize{14}{16.8}\bfseries}{\theparagraph}{0.3em}{}
\titlespacing{\paragraph}{0pt}{2pt plus 1pt minus .2pt}{2pt plus .2pt}
\titleformat{\subparagraph}[block]{\raggedright\fontsize{14}{16.8}\mdseries}{\thesubparagraph}{0.3em}{\ul}
\titlespacing{\subparagraph}{0pt}{2pt plus 1pt minus .2pt}{2pt plus .2pt}

% Always start a new section at the top of a new page, unless explicitly told 
% not to with the \nbpsection command (no-page-break section).
\newcommand{\sectionbreak}{\ifnum\value{section}>1 \clearpage\fi}
\newcommand{\npbsection}[1]{%
	\renewcommand{\sectionbreak}{}%
	\section{#1}%
	\renewcommand{\sectionbreak}{\ifnum\value{section}>1 \clearpage\fi}%
}


\newcommand{\makecover}{%
\begingroup
	\centering
	{\fontsize{36}{43.2}\mdseries\@title}
	\@coverimage\par
	\@logocmd\par
	{\huge\@subtitle\par}
	{\huge\@ver\par}
\endgroup
}

\renewcommand{\maketitle}{
\begingroup
	\centering
	{\fontsize{36}{43.2}\mdseries\@title\par}
	{\huge\@subtitle\par}
	\vfill
	{\large by: \@author\par\vspace{14pt}}
	{\large\@purpose\par\vspace{14pt}}
	{\large\@address\par}
	\vfill
	{\Huge\@ver\space Edition\par}
	\newpage
\begingroup
}

\newcommand{\makededication}{%
\begingroup
	\centering
	\vspace*{2.5in}
	{\Large\@dedication}
	\vfill
	{\Large"\@frontquote"\par}
	\begin{flushright}
	{\Large--- \@frontquoteattrib}
	\end{flushright}
\endgroup
}

\newcommand{\makelicense}[1]{%
	\ifbool{BYNCND}{
		\begingroup
			\newpage
			\hspace{0pt}
			\vfill
			\begin{center}
				\begin{large}
					\includegraphics{by-nc-nd.png}

					This work is licensed under a\\
					Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.

					\myurl{creativecommons.org/licenses/by-nc-nd/4.0/}

					#1
				\end{large}
			\end{center}
			\vfill
			\hspace{0pt}
		\endgroup
	}{
		\ifbool{BYSA}{
			\begingroup
				\newpage
				\hspace{0pt}
				\vfill
				\begin{center}
					\begin{large}
						\includegraphics{by-sa.png}

						This work is licensed under a\\
						Creative Commons Attribution-ShareAlike 4.0 International License.

						\myurl{creativecommons.org/licenses/by-sa/4.0/}

						#1
					\end{large}
				\end{center}
				\vfill
				\hspace{0pt}
			\endgroup
		}{ 
			#1
		}
	}
}

\RequirePackage{soul}
\newcommand{\highlight}[1]{%
	\begingroup
	\sethlcolor{Yellow}%
	\hl{#1}%
	\endgroup
}

% Make a URL where the text is underlined and is just the URL. 
% Because these books are intended to be both printed and pdf, url's need to be 
% written out, not hidden. They also need to be formatted in a 
% grayscale-friendly way.
\newcommand{\myurl}[1]{
	\href{#1}{\ul{#1}}
}

\newcommand{\lchapter}[1]{%
	\hypertarget{#1}{}%
	\chapter{#1}%
	\label{#1}%
}
\newcommand{\lsection}[1]{%
	\hypertarget{#1}{}%
	\section{#1}%
	\label{#1}%
}
\newcommand{\lsubsection}[1]{%
	\hypertarget{#1}{}%
	\subsection{#1}%
	\label{#1}%
}
\newcommand{\lsubsubsection}[1]{%
	\hypertarget{#1}{}%
	\subsubsection{#1}%
	\label{#1}%
}

\newcommand{\xref}[1]{%
	\hyperlink{#1}{\underline{See \nameref*{#1} on page \pageref*{#1}}}
}

\newcommand{\sxref}[1]{%
	\hyperlink{#1}{\underline{\nameref*{#1} on page \pageref*{#1}}}
}

\newcommand{\fullpageimage}[2][1]{
	\thispagestyle{fullpageimage}
    \begin{tikzpicture}[remember picture,overlay]
        \node[xshift=-0.1in,yshift=0in,anchor=north west] at (current page.north west){%
        \colorbox{white}{\includegraphics[page=#1, height=11in, width=8.5in]{#2}}};
    \end{tikzpicture}
}



\AtEndPreamble{%
% set some hyperref options if it's loaded
% leave loading it to the user so they can get the order right
%\@ifpackageloaded{hyperref}{%
%\providecolor{manuallinkcolor}{HTML}{004a0e}
%\hypersetup{colorlinks,allcolors=manuallinkcolor}%
%}{}%
% let minted's listing captions use the correct font
\@ifpackageloaded{minted}{\let\@float@c@listing\@caption}{}

% Make a colored box for notes. 
\ifbool{PrintColor}{
	\newtcolorbox{notebox}[2][]{
		center,
		colback=red!5!white,
		colframe=red!75!black,
		fonttitle=\large\bfseries,
		colbacktitle=red!85!black,
		enhanced,
		top=4mm,
		attach boxed title to top center={yshift=-3mm},
		halign=flush center,
		add to width=-5em,
		title={#2},
		#1
	}
}{
	\newtcolorbox{notebox}[2][]{
		center,
		colback=black!5!white,
		colframe=black,
		fonttitle=\large\bfseries,
		colbacktitle=black,
		enhanced,
		top=4mm,
		attach boxed title to top center={yshift=-3mm},
		halign=flush center,
		add to width=-5em,
		title={#2},
		#1
	}
}


}