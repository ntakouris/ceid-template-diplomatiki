%%%%%%
% Template for typesetting Diploma Theses
%
% John Liaperdos, October 2014
% Modifications Theodoros Ntakouris, October 2020, Computer Engineering and Informatics Dept, University of Patras

% (adapted from the NTUA template for diploma thesis [http://web.dbnet.ntua.gr/el/diplomas.html]). 
% (https://github.com/ntakouris/ceid-template-diplomatikis)
%
%%%%%%



% Class Information
\def\filename{thesis}
\def\fileversion{1.0}
\def\filedate{2029/12/11}
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis}[%
    \filedate\space\fileversion\space LaTeX document class.]
% Required Packages
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{fancyhdr}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}
%\usepackage[utf8]{inputenc}
%\usepackage[english, main=greek]{babel}
\usepackage{amsthm}

\theoremstyle{definition}
\newtheorem{definition}{ΟΡΙΣΜΟΣ}

\pagestyle{fancy}
% Title Page and Front Matter
\def\@supervisor{}              \def\supervisor#1{\gdef\@supervisor{#1}}
\def\@covisor{}    	 	        \def\covisor#1{\gdef\@covisor{#1}}
\def\@covisorS{}    	 	        \def\covisorS#1{\gdef\@covisorS{#1}}
\def\@epitropiF{}               \def\epitropiF#1{\gdef\@epitropiF{#1}}
\def\@epitropiS{}               \def\epitropiS#1{\gdef\@epitropiS{#1}}
\def\@subtitle{}                    \def\subtitle#1{\gdef\@subtitle{#1}}
\def\@translator{}              \def\translator#1{\gdef\@translator{#1}}
\def\@institution{}             \def\institution#1{\gdef\@institution{#1}}
\def\@department{}              \def\department#1{\gdef\@department{#1}}
\def\@division{}                    \def\division#1{\gdef\@division{#1}}
\def\@lab{}                             \def\lab#1{\gdef\@lab{#1}}
\def\@other{}                           \def\other#1{\gdef\@other{#1}}
\def\@dedication{}              \def\dedication#1{\def\@dedication{#1}}
\def\@uppertitleback{}      \long\def\uppertitleback#1{\def\@uppertitleback{#1}}
\def\@middletitleback{}   \long\def\middletitleback#1{\def\@middletitleback{#1}}
\def\@lowertitleback{}    \long\def\lowertitleback#1{\def\@lowertitleback{#1}}
\def\@approval{}   \long\def\approval#1{\def\@approval{#1}}
\def\@mysig{}             \long\def\mysig#1{\def\@mysig{#1}}

                          \def\url#1{\gdef\@url{\texttt{#1}}}
                          \def\TRnumber#1{\gdef\@TRnumber{#1}}
\def\@trurl{}             \def\trurl#1{\gdef\@trurl{\texttt{#1}}}
\def\@trftp{}             \def\trftp#1{\gdef\@trftp{\texttt{#1}}}

\def\new@tpage{\newpage\thispagestyle{empty}\null}
% Measurements
\setlength{\oddsidemargin}{7mm}
\setlength{\evensidemargin}{0mm}
\setlength{\textwidth}{150mm}

\setlength{\topmargin}{0mm}
\setlength{\textheight}{235mm}
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep

% Maketitle
\renewcommand{\maketitle}{
    \begin{titlepage}
        \let\footnotesize\small
        \let\footnoterule\relax
        \renewcommand{\thefootnote}{\fnsymbol{footnote}}
        %\new@tpage
        
        \begin{center}

        \begin{minipage}{6cm}
            \includegraphics[width=6cm]{figures/logo-up-4color-landscape.jpg}
		\vspace{3pt}
        \end{minipage}
        
        \begin{minipage}{15cm}
        \begin{center}
            \textsc{
           % \Large{\@institution} \\
            \@division \\
            \large{\@department 
            %\@other
            }}
        \end{center}
        \end{minipage}

        
        %\hfill %\hspace{0.5cm}

        %
        %\vfill
        %
                %
                \begin{center}
                    \LARGE \bfseries \@title
                \end{center}
                \ifx\@subtitle\@empty\else
                \begin{center}
                    \LARGE \@subtitle
                \end{center}
                \fi
                %
                \vspace{5mm}
                %
                \begin{center}
                    \huge{\textsc{\@translator}}\\
                    \vspace{3mm}
                    \normalsize{\toutis}\\
                    \vspace{3mm}
                    \large{\textbf{\textsc{\authorNameCapital}}}
                \end{center}
                %
                \vspace{5mm}
                %
                \hspace{1mm}
           \end{center}

           \vfill

                \begin{minipage}{15cm}
                \begin{tabbing}
                    \large \textbf{\supervisorname :}\hspace{2em} \=\@supervisor\\
                    \>\supervisorTitle\\
                    \large \textbf{\covisorname :} \>\@covisor\\
                    \>\covisorTitle\\
                    \large \textbf{\covisorSname :} \>\@covisorS\\
                    \>\covisorSTitle\\
                \end{tabbing}
                \end{minipage}
                \vspace{1mm}
   
            %
            \vfill
            %

            \begin{center}
                \textsc{\@lab}\\
                \thesisPlaceDate
            \end{center}
            %
            \cleardoublepage
            
            \if@twoside
                %\new@tpage
                \noindent
                \begin{minipage}[t]{\textwidth}
                    \@uppertitleback
                \end{minipage}
                \par
                \vfill
               \begin{center}
                    \LARGE \bfseries \@title
                \end{center}
                \ifx\@subtitle\@empty\else
                \begin{center}
                    \LARGE \@subtitle
                \end{center}
                \fi
                %
                \vspace{5mm}
                %
                \begin{center}
                    \huge{\textsc{\@translator}}\\
                    \vspace{3mm}
                    \normalsize{\toutis}\\
                    \vspace{3mm}
                    \large{\textbf{\authorNameCapital}}
                \end{center}
                %
                \vspace{5mm}
                %
                \hspace{1mm}

           \vfill

                \begin{minipage}{15cm}
                \begin{tabbing}
                    \large \textbf{\supervisorname :}\hspace{2em} \=\@supervisor\\
                    \>\supervisorTitle\\
                    \large \textbf{\covisorname :} \>\@covisor\\
                    \>\covisorTitle\\
                    \large \textbf{\covisorSname :} \>\@covisorS\\
                    \>\covisorSTitle\\
                \end{tabbing}
                \end{minipage}
                \vspace{1mm}
           \vfill

                \begin{minipage}{\textwidth}
                    \@approval
                \end{minipage}

            \vfill
            \begin{center}
                \thesisPlaceDate
            \end{center}
            %
            \fi
           %\new@tpage
           \begin{minipage}[b]{\textwidth}
             \@mysig
           \end{minipage}

            \cleardoublepage
            \if@twoside\new@tpage
                \noindent
                \begin{minipage}[t]{\textwidth}
                    \@uppertitleback
                \end{minipage}
                \par
                \vfill
                \noindent
                \begin{minipage}{\textwidth}
                    \@middletitleback
                \end{minipage}
                \par
                \vfill
                \noindent
                \begin{minipage}[b]{\textwidth}
                    \@lowertitleback
                \end{minipage}
            \fi
    \end{titlepage}
    %
    \renewcommand{\thefootnote}{\arabic{footnote}}
    \setcounter{footnote}{0}
    %
    \gdef\@thanks{}\gdef\@author{}\gdef\@translator{}\gdef\@institution{}
    \gdef\@department{}\gdef\@division{}\gdef\@lab{}\gdef\@other{}
  \gdef\@uppertitleback{}\gdef\@lowertitleback{}\gdef\@dedication{}%
  \gdef\@title{}\gdef\@subtitle{}\let\maketitle\relax%

\mbox{}
\thispagestyle{empty}
\newpage
}

\usepackage{graphics}
\usepackage{epstopdf}
\usepackage{indentfirst}
\usepackage{verbatim}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{amssymb}
\usepackage{latexsym}
\bibliographystyle{hellas}
\usepackage{hyphenat}
\usepackage{makeidx}
\usepackage{algpseudocode}
\usepackage{algorithm}
\usepackage[hyphens]{url}
%\usepackage[hyphenbreaks]{breakurl}
\usepackage{enumitem}
\usepackage{xspace}
\usepackage{booktabs}
\usepackage{multirow}
\usepackage{subfig}
\usepackage{tabularx}
\usepackage{listings}
\usepackage{xcolor}
\usepackage{bbding}
\usepackage{footmisc}
\captionsetup{belowskip=10pt,aboveskip=15pt}
\addto\captionsgreek{%
  \renewcommand{\indexname}{Ευρετήριο όρων}%
}

% 1.5 spacing
\renewcommand{\baselinestretch}{1.2}

% typeset short english phrases
\newcommand{\en}[1]{\foreignlanguage{english}{#1}}

% typeset source code
\newcommand{\src}[1]{{\tt\en{#1}}}

% typeset a backslash
\newcommand{\bkslash}{\en{\symbol{92}}}


% Colors
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

% Listing style Python Code
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
%    showtabs=false,                  
    tabsize=2
}

% For JSON listing
\newcommand\JSONnumbervaluestyle{\color{blue}}
\newcommand\JSONstringvaluestyle{\color{red}}
\makeatletter
% switch used as state variable
\newif\ifcolonfoundonthisline
% style
\lstdefinestyle{json}
{
  backgroundcolor=\color{backcolour},
  showstringspaces    = false,
  keywords            = {false,true},
  alsoletter          = 0123456789.,
  morestring          = [s]{"}{"},
  stringstyle         = \ifcolonfoundonthisline\JSONstringvaluestyle\fi,
  MoreSelectCharTable =%
    \lst@DefSaveDef{`:}\colon@json{\processColon@json},
  basicstyle          = \ttfamily,
  keywordstyle        = \ttfamily\bfseries,
}
% flip the switch if a colon is found in Pmode
\newcommand\processColon@json{%
  \colon@json%
  \ifnum\lst@mode=\lst@Pmode%
    \global\colonfoundonthislinetrue%
  \fi
}

\lst@AddToHook{Output}{%
  \ifcolonfoundonthisline%
    \ifnum\lst@mode=\lst@Pmode%
      \def\lst@thestyle{\JSONnumbervaluestyle}%
    \fi
  \fi
  %override by keyword style if a keyword is detected!
  \lsthk@DetectKeywords% 
}

% reset the switch at the end of line
\lst@AddToHook{EOL}%
  {\global\colonfoundonthislinefalse}
  

\renewcommand\lstlistingname{\tg{Κώδικας}}
\renewcommand\lstlistlistingname{\tg{Παραδείγματα Κώδικα}}
\renewcommand{\listalgorithmname}{Λίστα Αλγορίθμων}


% Names
\newcommand{\keywordsname}{Λέξεις Κλειδιά}
\newcommand{\keywordsnameeng}{\en{Keywords}}
\newcommand{\abstractname}{Περίληψη}
\newcommand{\abstractnameeng}{\en{Abstract}}
\newcommand{\draftname}{Προσχέδιο}
\newcommand{\prefacename}{Πρόλογος}
\newcommand{\acknowledgementsname}{Ευχαριστίες}
\newcommand{\supervisorname}{\supervisorMaleFemale}
\newcommand{\covisorname}{\covisorMaleFemale}
\newcommand{\covisorSname}{\covisorSMaleFemale}

% More Names
\translator{Διπλωματική Εργασία}
\institution{Πανεπιστήμιο Πατρών}
\department{Πολυτεχνική Σχολή}
\division{Τμήμα Μηχανικών Ηλεκτρονικών Υπολογιστών και Πληροφορικής}
\other{Πανεπιστημιούπολη, Τ.Κ 26504, Ρίο Αχαΐα}


\uppertitleback{
    \begin{minipage}{2.8cm}
        \includegraphics[width=2.7cm]{figures/logo-up-black.jpg}
    \end{minipage}
    \hspace{0.5cm}
    \begin{minipage}{12cm}
        \@institution \\
        \@department \\
        \@division 
    \end{minipage}
}

\approval{
    Εγκρίθηκε από την τριμελή εξεταστική επιτροπή την \examinationDate.\\
    \begin{tabbing}
    \=\hspace*{.35\linewidth}\=\hspace{.35\linewidth}\=\kill \\

    %aaaaaaaaaaaaaaa\= aaaaaaaaaaaaaaaaaaaaaaaaaaa\= aaaaaaaaaaaaaaaaaaaaaaaaaaa\=\kill%
    \> \textit{(Υπογραφή)}\>   \textit{(Υπογραφή)}\>   \textit{(Υπογραφή)}\\\\\\
    \> .............................\>  .............................\>  .............................\\
    \> \@supervisor\>         \@covisor\>         \@covisorS\\
    \> \supervisorTitle\>    \covisorTitle\>    \covisorSTitle\\\\\\\\
    \end{tabbing}
}

\middletitleback{
    \vspace{3cm}
    All rights reserved\ \@author, \copyrightYear.\\
    Με την επιφύλαξη παντός δικαιώματος.\\[12pt]
    Απαγορεύεται η αντιγραφή, αποθήκευση και διανομή της παρούσας εργασίας, εξ
    ολοκλήρου ή τμήματος αυτής, για εμπορικό σκοπό.  Επιτρέπεται η ανατύπωση,
    αποθήκευση και διανομή για σκοπό μη κερδοσκοπικό, εκπαιδευτικής ή
    ερευνητικής φύσης, υπό την προϋπόθεση να αναφέρεται η πηγή προέλευσης και να
    διατηρείται το παρόν μήνυμα.  
    \\[24pt]
    Το περιεχόμενο αυτής της εργασίας δεν απηχεί απαραίτητα τις απόψεις του Τμήματος, του Επιβλέποντα, ή της επιτροπής που την ενέκρινε.
    \\[24pt]
    \textbf{Υπεύθυνη Δήλωση}
    \\
Βεβαιώνω ότι είμαι συγγραφέας αυτής της διπλωματικής εργασίας, και ότι κάθε
βοήθεια την οποία είχα για την προετοιμασία της είναι πλήρως αναγνωρισμένη και αναφέρεται
στην διπλωματική εργασία. Επίσης έχω αναφέρει τις όποιες πηγές από τις οποίες έκανα χρήση
δεδομένων, ιδεών ή λέξεων, είτε αυτές αναφέρονται ακριβώς είτε παραφρασμένες. Επίσης,
βεβαιώνω ότι αυτή η διπλωματική εργασία προετοιμάστηκε από εμένα προσωπικά ειδικά για τις
απαιτήσεις του προγράμματος σπουδών του Τμήματος Μηχανικών Ηλεκτρονικών Υπολογιστών και Πληροφορικής του Πανεπιστημίου Πατρών.
    \\[24pt]
    \textit{(Υπογραφή)}
    \\[24pt]
    .............................\\
    \@author
}


% Redefining Commands
\renewcommand{\frontmatter}{
    
    \@mainmatterfalse \pagenumbering{roman}
}
\renewcommand{\mainmatter}{
    \label{lastfront}
    \cleardoublepage
    \@mainmattertrue\pagenumbering{arabic}
    \addtocontents{toc}{\protect\addvspace{1em}}
}
\renewcommand{\backmatter}{
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
}
% Headings
\def\invisiblethingie{\tiny\ }
\def\myemptypage{
    \mbox{}
    \vspace{\fill}
    \begin{flushright}
        \invisiblethingie
    \end{flushright}
    \vspace{5ex}
    \thispagestyle{empty}
}
%
\renewcommand{\cleardoublepage}{
    \clearpage %
    \if@twoside \ifodd\c@page\else
    \myemptypage
    \newpage
    \if@twocolumn\mbox{}\newpage\fi\fi\fi
}
%
\renewcommand{\chaptermark}[1]{
    \markboth{\ \ \ #1}{}
%        \markboth{\mbox{\@chapapp}\ \thechapter.\ \ #1}{}
}

\renewcommand{\sectionmark}[1]{
    \markright{\thesection\ \ #1}{}
}
%
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[LO]{\slshape\nouppercase{{\rightmark}}}
\fancyhead[RE]{\slshape\nouppercase{{\leftmark}}}
\addtolength{\headheight}{2pt}
\setlength{\headwidth}{\textwidth}
\addtolength{\topmargin}{-2pt}
%

\let\finik@lof\listoffigures
\renewcommand{\listoffigures}{
    \finik@lof
    \addcontentsline{toc}{chapter}{\listfigurename}
}


\let\finik@lot\listoftables
\renewcommand{\listoftables}{
    \finik@lot
    \addcontentsline{toc}{chapter}{\listtablename}
}
% More Enviroments
\newenvironment{keywords}{\section*{\keywordsname}}{}
\newenvironment{keywordseng}{\section*{\keywordsnameeng}}{}
\newcommand{\footacknowledgement}[1]{%
  \let\@tmp@makefntext\@makefntext%
  \long\def\@makefntext##1{%
      \parindent 1em%
      \noindent##1}%
  \footnotetext{#1}%
  \let\@makefntext\@tmp@makefntext%
}
\newenvironment{acknowledgements}{%
  \chapter*{\acknowledgementsname}%
  \addcontentsline{toc}{chapter}{\acknowledgementsname}%
}{}
\def\abstract{%
  \chapter*{\abstractname\@mkboth{\abstractname}{\abstractname}}
  \addcontentsline{toc}{chapter}{\abstractname}
}
\def\abstracteng{
  \chapter*{\abstractnameeng\@mkboth{\abstractnameeng}{\abstractnameeng}}
  \addcontentsline{toc}{chapter}{\abstractnameeng}
}
\def\endabstract{\par\vfil\null\endtitlepage}
%
\let\finik@bibl\bibliography%#1
% Misc

\AtEndDocument{\subparagraph{}\label{lastback}}

%% Dedication
\newcommand{\thesisDedication}[1]{%
	\cleardoublepage
	\thispagestyle{empty}
    ~\\
    \vfill
    \begin{flushright}
    	\textit{#1}
    \end{flushright}
    ~\\
    \vfill
    \pagebreak
}


%% CD covers and labels

\usepackage{tikz} % allows drawing shapes
\usetikzlibrary{decorations.text}
\usepgflibrary{shapes}
\usepackage{calculator}


\newcommand{\definecdlabeloffsets}[4]{
	\edef\upperlabelxoffset{#1}
	\edef\upperlabelyoffset{#2}
	\edef\lowerlabelxoffset{#3}
	\edef\lowerlabelyoffset{#4}
}

\newcommand{\createcdlabel}[5]{
	\cleardoublepage
	\thispagestyle{empty}
	% Zero page margins
		\setlength{\oddsidemargin}{0mm}
		\setlength{\evensidemargin}{0mm}
		\setlength{\textwidth}{\paperwidth}	
		\setlength{\topmargin}{0mm}
		\setlength{\textheight}{\paperheight}
	\fontsize{7}{8.4}\selectfont
	\begin{tikzpicture}[remember picture, overlay]
	    \ADD{-10.5}{\upperlabelxoffset}{\x} \ADD{-7.4}{\upperlabelyoffset}{\y}
	    \node [shift={(\x cm,\y cm)}]  at (current page.north east) % slightly change y value for finer adjustment
	        {%
	        \begin{tikzpicture}[remember picture, overlay]
	            \draw(0,0) % circle's center (relative)
				circle (2cm) % circle #1 radius
				circle (5.6cm);
                	\node[draw=none, align=center] at (3.5,-1) {\textbf{ΔΙΠΛΩΜΑΤΙΚΗ}  \\ \textbf{ΕΡΓΑΣΙΑ} \\[5pt] ΠΑΤΡΑ,  \\ #3 \\ #4};
                   \node[draw=none, text width=3.5cm, align=center] at (-3.5,-1) {\textbf{#2}};
			\node[draw=none,text width=#5cm, align=center] at (0,3) {\fontsize{9}{10.8}\selectfont \textbf{#1} \fontsize{7}{8.4}\selectfont};   
	             \path [decorate,decoration={raise=-1ex, text along path, reverse path, text align={center}, text={PANEPISTHMIO PATRWN - POLUTEQNIKH SQOLH - TMHMA MHQANIKWN HLEKTRONIKWN UPOLOGISTWN KAI PLHROFORIKHS }}] (4.7cm,-2.8cm) arc (-30:210:5.45cm) ;
	        \end{tikzpicture}
	        };
	     \ADD{-13.5}{\upperlabelxoffset}{\xx} \ADD{-12}{\upperlabelyoffset}{\yy}
	     \node [shift={(\xx cm,\yy cm)}]  at (current page.north east) % slightly change y value for finer adjustment
	        {%
	        \begin{tikzpicture}[remember picture, overlay]
	             \draw(0,0) % rectangle's center (relative)
				  rectangle (6cm,2.5cm);
           		 \node[draw=none] at (3,1.25) {\textit{Θέση \en{barcode}}};     
	        \end{tikzpicture}
	        };		
	\end{tikzpicture}

	%% lower copy:
	\fontsize{7}{8.4}\selectfont
	\begin{tikzpicture}[remember picture, overlay]
	    \ADD{-10.5}{\lowerlabelxoffset}{\xxx} \ADD{-22.2}{\lowerlabelyoffset}{\yyy}
	    \node [shift={(\xxx cm,\yyy cm)}]  at (current page.north east) % slightly change y value for finer adjustment
	        {%
	        \begin{tikzpicture}[remember picture, overlay]
	            \draw(0,0) % circle's center (relative)
				circle (2cm) % circle #1 radius
				circle (5.6cm);
                	\node[draw=none, align=center] at (3.5,-1) {\textbf{ΔΙΠΛΩΜΑΤΙΚΗ}  \\ \textbf{ΕΡΓΑΣΙΑ}  \\[5pt] ΠΑΤΡΑ,  \\ #3 \\ #4};
                   \node[draw=none, text width=3.5cm, align=center] at (-3.5,-1) {\textbf{#2}};
			\node[draw=none,text width=#5cm, align=center] at (0,3) {\fontsize{9}{10.8}\selectfont \textbf{#1} \fontsize{7}{8.4}\selectfont};   
	             \path [decorate,decoration={raise=-1ex, text along path, reverse path, text align={center}, text={PANEPISTHMIO PATRWN - POLUTEQNIKH SQOLH - TMHMA MHQANIKWN HLEKTRONIKWN UPOLOGISTWN KAI PLHROFORIKHS}}] (4.7cm,-2.8cm) arc (-30:210:5.45cm) ;
	        \end{tikzpicture}
	        };
	     \ADD{-13.5}{\lowerlabelxoffset}{\xxxx} \ADD{-26.8}{\lowerlabelyoffset}{\yyyy}
	     \node [shift={(\xxxx cm,\yyyy cm)}]  at (current page.north east) % slightly change y value for finer adjustment
	        {%
	        \begin{tikzpicture}[remember picture, overlay]
	             \draw(0,0) % rectangle's center (relative)
				  rectangle (6cm,2.5cm);
           		 \node[draw=none] at (3,1.25) {\textit{Θέση \en{barcode}}};      
	        \end{tikzpicture}
	        };		
	\end{tikzpicture}
	%
	\pagebreak
}

\newcommand{\createcdcover}[5]{
	\cleardoublepage
	\thispagestyle{empty}
	% Zero page margins
		\setlength{\oddsidemargin}{0mm}
		\setlength{\evensidemargin}{0mm}
		\setlength{\textwidth}{\paperwidth}	
		\setlength{\topmargin}{0mm}
		\setlength{\textheight}{\paperheight}
	\fontsize{9}{10.8}\selectfont 
	\begin{tikzpicture}[remember picture, overlay]
	    \node [shift={(-10.5cm,-8.4cm)}]  at (current page.north east) % slightly change y value for finer adjustment
	        {%
	        \begin{tikzpicture}[remember picture, overlay]
			\draw[thick] (-5.8,-5.8) rectangle (5.8,5.8); 
			\draw[dashed] (-6,-6) rectangle (6,6); 
			\node at (-4.6,4.4){\includegraphics[width=1.8cm]{figures/logo-up-4color-stam.eps}};
                   \node[draw=none, text width=9cm, align=left] at (1,4.3) {ΠΑΝΕΠΙΣΤΗΜΙΟ ΠΑΤΡΩΝ \\ ΠΟΛΥΤΕΧΝΙΚΗ ΣΧΟΛΗ \\ TΜΗΜΑ ΜΗΧΑΝΙΚΩΝ ΗΛΕΚΤΡΟΝΙΚΩΝ ΥΠΟΛΟΓΙΣΤΩΝ ΚΑΙ ΠΛΗΡΟΦΟΡΙΚΗΣ };
                   \node[draw=none, text width=9cm, align=center] at (0,2.3) {ΔΙΠΛΩΜΑΤΙΚΗ ΕΡΓΑΣΙΑ};
			\node[draw=none,text width=#5cm, align=center] at (0,0) {\fontsize{11}{13.2}\selectfont \textbf{#1} \fontsize{8}{9.6}\selectfont};   
                   \node[draw=none, text width=7cm, align=center] at (0,-2.5) {\textbf{#2}};
                   \node[draw=none, text width=10cm, align=center] at (0,-4) {\scalebox{0.7}{\textbf{ΠΑΤΡΑ}}};
                   \node[draw=none, text width=5cm, align=center] at (0,-4.5) {\scalebox{0.7}{\textbf{#3 #4}}};
	        \end{tikzpicture}
	        };	
	\end{tikzpicture}

	%% lower copy:
	\fontsize{9}{10.8}\selectfont 
	\begin{tikzpicture}[remember picture, overlay]
	    \node [shift={(-10.5cm,-21.9cm)}]  at (current page.north east) % slightly change y value for finer adjustment
	        {%
	        \begin{tikzpicture}[remember picture, overlay]
			\draw[thick] (-5.8,-5.8) rectangle (5.8,5.8); 
			\draw[dashed] (-6,-6) rectangle (6,6);
			\node at (-4.6,4.4){\includegraphics[width=1.8cm]{figures/logo-up-4color-stam.eps}};
                   \node[draw=none, text width=9cm, align=left] at (1,4.3) {ΠΑΝΕΠΙΣΤΗΜΙΟ ΠΑΤΡΩΝ \\ ΠΟΛΥΤΕΧΝΙΚΗ ΣΧΟΛΗ \\ TΜΗΜΑ ΜΗΧΑΝΙΚΩΝ ΗΛΕΚΤΡΟΝΙΚΩΝ ΥΠΟΛΟΓΙΣΤΩΝ ΚΑΙ ΠΛΗΡΟΦΟΡΙΚΗΣ.};
                   \node[draw=none, text width=9cm, align=center] at (0,2.3) {ΔΙΠΛΩΜΑΤΙΚΗ ΕΡΓΑΣΙΑ};
			\node[draw=none,text width=#5cm, align=center] at (0,0) {\fontsize{11}{13.2}\selectfont \textbf{#1} \fontsize{8}{9.6}\selectfont};   
                   \node[draw=none, text width=7cm, align=center] at (0,-2.5) {\textbf{#2}};
                   \node[draw=none, text width=10cm, align=center] at (0,-4) {\scalebox{0.7}{\textbf{ΠΑΤΡΑ}}};
                   \node[draw=none, text width=5cm, align=center] at (0,-4.5) {\scalebox{0.7}{\textbf{#3 #4}}};
	        \end{tikzpicture}
	        };	
	\end{tikzpicture}
	%
}

\endinput