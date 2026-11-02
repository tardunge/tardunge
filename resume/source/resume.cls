% Resume layout derived from Awesome-CV v1.5 (2016/01/30).
% Original author: Claud D. Park <posquit0.bj@gmail.com>
% https://github.com/posquit0/Awesome-CV
% Modified and maintained by Manoj Babu Katragadda; distributed as resume.cls.
% License: LPPL 1.3c or later. See ../licenses/ and ../THIRD-PARTY.md.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[Focused personal resume layout]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{ragged2e}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage[quiet]{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage[math-style=TeX]{unicode-math}
\RequirePackage{parskip}
\RequirePackage{soul}
\RequirePackage[hidelinks,unicode]{hyperref}

% Page geometry and the single supported palette.
\geometry{left=1.4cm, top=.8cm, right=1.4cm, bottom=1.8cm, footskip=.5cm}
\fancyhfoffset{0em}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\pagestyle{fancy}
\definecolor{text}{HTML}{1F2933}
\definecolor{darktext}{HTML}{414141}
\definecolor{graytext}{HTML}{5D5D5D}
\definecolor{lighttext}{HTML}{999999}
\definecolor{accent}{HTML}{0395DE}
\definecolor{accentlight}{HTML}{C3EAFE}
\hypersetup{colorlinks=true, linkcolor=accent, filecolor=accent,
  urlcolor=accent, pdfnewwindow=true}

% Vendored fonts make builds independent of workstation font installation.
\newfontfamily\headerfont[
  Path=fonts/, UprightFont=*-Regular, ItalicFont=*-Italic,
  BoldFont=*-Bold, BoldItalicFont=*-BoldItalic
]{Roboto}
\newfontfamily\headerfontlight[
  Path=fonts/, UprightFont=*-Thin, ItalicFont=*-ThinItalic,
  BoldFont=*-Medium, BoldItalicFont=*-MediumItalic
]{Roboto}
\newfontfamily\bodyfont[
  Path=fonts/, UprightFont=*-Regular, ItalicFont=*-It,
  BoldFont=*-Bold, BoldItalicFont=*-BoldIt
]{SourceSansPro}
\newfontfamily\bodyfontlight[
  Path=fonts/, UprightFont=*-Light, ItalicFont=*-LightIt,
  BoldFont=*-Semibold, BoldItalicFont=*-SemiboldIt
]{SourceSansPro}
\setmainfont[
  Path=fonts/, UprightFont=*-Regular, ItalicFont=*-It,
  BoldFont=*-Bold, BoldItalicFont=*-BoldIt
]{SourceSansPro}
\newfontfamily\cv@iconfont[Path=fonts/]{FontAwesome}
\def\cv@icon@whatsapp{"F232}
\def\cv@icon@email{"F0E0}
\def\cv@icon@website{"F015}
\def\cv@icon@github{"F092}
\def\cv@icon@linkedin{"F08C}
\newcommand*{\cvicon}[1]{{\cv@iconfont\symbol{\csname cv@icon@#1\endcsname}}}

% Link labels are bold by policy. URLs and personal details belong in content.
\newcommand*{\cvlink}[2]{\href{#1}{\textbf{#2}}}
\newcommand*{\cvcontact}[3]{\cvlink{#2}{\cvicon{#1}\space #3}}
\newcommand*{\cvcontactsep}{\quad\textbar\quad}

% Header: given names, surname, role, location, contact row.
\newcommand*{\resumeheader}[5]{%
  \begin{center}
    {\fontsize{32pt}{1em}\headerfontlight\color{graytext} #1}%
    {\fontsize{32pt}{1em}\headerfont\bfseries\color{text} {}\space #2}%
    \\[.4mm]%
    {\fontsize{12pt}{1em}\bodyfont\scshape\color{accent} #3\\[.4mm]}%
    {\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #4\\[-.5mm]}%
    {\fontsize{8pt}{1em}\headerfont\bfseries\color{text} #5}\\[6mm]%
  \end{center}%
}
\newcommand*{\resumefooter}[1]{%
  \fancyfoot[C]{{\fontsize{8pt}{1em}\bodyfont\scshape\color{lighttext} #1}}%
}

% Section titles retain the original first-three-character highlight.
\def\cv@sectioncolor#1#2#3{{\color{accent}#1#2#3}}
\def\cv@rule{\leavevmode\leaders\hrule\@height.6pt\hfill\kern\z@}
\newcommand{\cvsection}[1]{%
  \vspace{3mm}
  {\fontsize{16pt}{1em}\bodyfont\bfseries\color{black}\cv@sectioncolor #1}%
  \phantomsection
  \textcolor{accentlight}{\cv@rule}%
}
\newenvironment{cvparagraph}{%
  \vspace{2.5mm}\vspace{-3mm}
  \bodyfont\color{text}\RaggedRight
}{\par\vspace{2mm}}

% Entries use a fixed date/location column. Content controls page boundaries.
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcommand*{\cv@company}[1]{{\fontsize{12pt}{1em}\bodyfont\bfseries\color{accent} #1}}
\newcommand*{\cv@role}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\cv@detail}[1]{{\fontsize{9pt}{1em}\bodyfont\upshape\color{graytext} #1}}
\newenvironment{cventries}{%
  \vspace{2.5mm}\begin{center}\vspace{3mm}
}{\end{center}}
% Role, company, company URL, location, dates, achievement list.
\newcommand{\cventry}[6]{%
  \vspace{-6mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\dimexpr\textwidth-4.5cm\relax} R{4.5cm}}
    \cvlink{#3}{\cv@company{\caps{#2}}} & \cv@detail{\caps{#4}} \\
    \cv@role{#1} & \cv@detail{#5} \\
    \multicolumn{2}{L{\textwidth}}{#6}
  \end{tabular*}%
}
\newenvironment{eduentries}{%
  \vspace{2.5mm}\begin{center}
}{\end{center}}
% Degree, linked institution, location, dates.
\newcommand*{\eduentry}[4]{%
  \vspace{-2mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\dimexpr\textwidth-4.5cm\relax} R{4.5cm}}
    \cv@company{#2} & \cv@detail{#3} \\
    {\fontsize{10pt}{1em}\bodyfont\bfseries\color{graytext} #1} & \cv@detail{#4} \\
  \end{tabular*}%
}
\newenvironment{cvitems}{%
  \vspace{-4mm}\begingroup
  \bodyfont\color{text}\RaggedRight
  \hyphenpenalty=10000
  \begin{itemize}[leftmargin=5ex, nosep, noitemsep]
    \setlength\itemsep{1mm}
    \renewcommand{\labelitemi}{\bullet}
}{\end{itemize}\endgroup\vspace{-4mm}}
\newenvironment{cvcontributions}{%
  \vspace{3mm}\begin{cvitems}
}{\end{cvitems}\vspace{2mm}}

% Text-based badges with aligned category labels and hanging continuations.
\newcommand{\cv@skilltext}[1]{{\fontsize{11pt}{21pt}\bodyfont\color{text} #1}}
\newcommand*{\stag}[1]{%
  \tikz[baseline=(skill.base)]{%
    \node[fill=accentlight, rounded corners=2pt,
      inner xsep=4pt, inner ysep=2pt,
      text height=1.7ex, text depth=.4ex,
      font=\bodyfontlight\bfseries, text=text] (skill) {#1};
  }\hspace{2pt}%
}
\newenvironment{cvskills}{%
  \par\begingroup\bodyfont\color{text}\RaggedRight
  \setlength{\parskip}{2mm}
}{\par\endgroup}
\newcommand*{\cvskill}[2]{%
  \cv@skilltext{%
    \hangindent=\dimexpr4.3cm+1em\relax
    \hangafter=1
    \noindent\makebox[4.3cm][l]{\textbf{#1}}\makebox[1em][l]{:}#2\par
  }%
}
