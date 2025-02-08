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
\ProvidesClass{wmul-manual}[2025/01/11 v0.0.3 Template for WMUL-FM's Manuals]

\LoadClass[12pt, letterpaper, extrafontsizes, twoside]{memoir}

% Set margins and design headers/footers
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{
	\newgeometry{
		inner=0.75in,
		textwidth=6.00in,
		top=1.1in,
		bottom=1.1in,
		headheight=15pt,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[RO]{\nouppercase\rightmark}
	\fancyhead[LE]{\nouppercase\leftmark}
	\fancyfoot[LE, RO]{Volume \@volumenumber\space - Page \thepage}
	\fancyfootoffset[LE, RO]{1.2in}
	\renewcommand{\headrulewidth}{0pt}
}

\fancypagestyle{fancy}{
	\newgeometry{
		inner=0.75in,
		textwidth=6.00in,
		top=1.1in,
		bottom=1.1in,
		headheight=15pt,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[RO]{\nouppercase\rightmark}
	\fancyhead[LE]{\nouppercase\leftmark}
	\fancyfoot[LE, RO]{Volume \@volumenumber\space - Page \thepage}
	\fancyfootoffset[LE, RO]{1.2in}
	\renewcommand{\headrulewidth}{1pt}
	\raggedright
	\setlength{\parindent}{3em}
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
		top=1.1in,
		bottom=1.1in,
		headheight=15pt,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyfoot[LE, RO]{Volume \@volumenumber\space - Page \thepage}
	\fancyfootoffset[LE, RO]{1.2in}
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
		textwidth=6.5in,
		top=1.1in,
		bottom=1.1in,
		headheight=15pt,
		heightrounded
	}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[RO]{\nouppercase\rightmark}
	\fancyhead[LE]{\nouppercase\leftmark}
	\fancyfoot[LE, RO]{Volume \@volumenumber\space - Page \thepage}
	\fancyfootoffset[LE, RO]{1.0in}
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
	linkcolor=black,
	filecolor=black,
	urlcolor=black,
	pdfpagelayout=TwoPageRight
}
\RequirePackage[most]{tcolorbox} % For the note boxes
\RequirePackage[calcwidth]{titlesec} % For configuring the chapter, section, 
% etc titles
\RequirePackage{enumitem} % Format the lists
\setlist[1]{itemsep=-12pt, leftmargin=4em, itemindent=-1em, parsep=16pt}

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
		\license{by-sa}%
        \imagecolor{Color/}%
		\boolfalse{PrintNoDerivatives}
		\booltrue{PrintColor}
    }{%
        \ifstrequal{#1}{private_pdf}{%
			\license{by-nc-nd}%
            \imagecolor{Color/}%
			\booltrue{PrintNoDerivatives}
			\booltrue{PrintColor}
        }{%
			\license{by-nc-nd}%
            \imagecolor{Grayscale/}%
			\booltrue{PrintNoDerivatives}
			\boolfalse{PrintColor}
        }%
    }%
}
\DeclareRobustCommand*{\imagecolor}[1]{\gdef\imagecolor{#1}}
\DeclareRobustCommand*{\license}[1]{\gdef\@license{#1}}
\DeclareRobustCommand*{\imageroot}[1]{\gdef\imageroot{#1}}
\newbool{PrintNoDerivatives}
\newbool{PrintColor}
\DeclareRobustCommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\subtitle{Volume \@volumenumber\space of \@seriestitle}

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
\setsecnumdepth{subsection}
\titleformat{\chapter}[block]{\centering\fontsize{26}{31.2}\bfseries}{\thechapter.}{0.3em}{}
\titlespacing{\chapter}{0pt}{-3em}{6pt plus .2pt}
\renewcommand{\thesection}{\thechapter.\Alph{section}}
\titleformat{\section}[block]{\raggedright\fontsize{24}{28.8}\mdseries}{\thesection.}{0.3em}{}[\vspace{-1.25em}\rule{\titlewidth}{1pt}]
\titlespacing{\section}{0pt}{2pt plus 1pt minus .2pt}{2pt plus .2pt}
\titleformat{\subsection}[block]{\raggedright\Large\bfseries}{\thesubsection.}{0.3em}{}
\titlespacing{\subsection}{0pt}{2pt plus 1pt minus .2pt}{6pt plus .2pt}


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

\newcommand{\makelicense}[2]{%
	\ifstrequal{#1}{by-nc-nd}{
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

					#2
				\end{large}
			\end{center}
			\vfill
			\hspace{0pt}
		\endgroup
	}{
		\ifstrequal{#1}{by-sa}{
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

						#2
					\end{large}
				\end{center}
				\vfill
				\hspace{0pt}
			\endgroup
		}{ 
			#2
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