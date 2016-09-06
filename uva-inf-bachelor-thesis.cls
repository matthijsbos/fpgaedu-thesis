% LaTeX PAV klasse voor bachelor thesis
% Onderdeel van het LaTeX template pakket Practicum Academische Vaardigheden

% Voor readme en meest recente versie, zie
% https://gitlab-fnwi.uva.nl/informatica/LaTeX-template.git

% Geschreven door Rein van den Boomgaard, Robert van Wijk, Stephan van Schaik, 
% Willem Vermeulen en Stephen Swatman.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uva-inf-bachelor-thesis}[2016/04/03 Version 0.3]
\LoadClass[a4paper,openright,notitlepage,twoside]{report}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\RequirePackage{graphicx}
\RequirePackage[svgnames]{xcolor}
\RequirePackage[absolute]{textpos}
\RequirePackage{rotating}
\RequirePackage[sf]{titlesec}
\usepackage[hyphens]{url}
\RequirePackage[pdfusetitle]{hyperref}
\RequirePackage[a4paper,scale={0.75,0.8}, marginratio={1:1}, bindingoffset=13mm]{geometry}

\def\supervisors#1{\gdef\@supervisors{#1}}
\def\signedby#1{\gdef\@signedby{#1}}

\titleformat{\chapter}[display]
{\sffamily\raggedleft
\titlerule\vspace{1pc}}
{\vspace{1ex}\Large \MakeUppercase{\chaptertitlename}\ \thechapter}
{3ex}
{\Huge}
[\vspace{1pc}\titlerule]

\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \hspace*{1em}

	\begin{textblock*}{10cm}(6cm,3cm)
		\noindent\large\scshape Bachelor Informatica\\[2ex]
		\includegraphics[height=1cm]{logoUvA_en}
	\end{textblock*}

	\begin{textblock*}{10cm}(6cm,12cm)
		\noindent
		\sffamily\Huge \@title
	\end{textblock*}

	\begin{textblock*}{10cm}(6cm,18cm)
		\noindent
		\sffamily\Large \@author\\[3pc]
		\@date
	\end{textblock*}

	\begin{textblock*}{10cm}(6cm,26cm)
		\noindent\sffamily
		\begin{description}
		\item[\sffamily Supervisors:] \@supervisors
		\item[\sffamily Signed:] \@signedby
		\end{description}
	\end{textblock*}

	\textblockcolor{LightGray}
	\begin{textblock*}{2cm}(3cm,2cm)
		\vspace*{25.7cm}\hspace*{1em}
	\end{textblock*}

	\begin{textblock*}{2cm}(3.7cm,25cm)
		\begin{rotate}{90}
			\noindent\scshape\Huge\textcolor{DarkGray}{
				Informatica --- Universiteit van Amsterdam}
		\end{rotate}
	\end{textblock*}

	\cleardoublepage
}
