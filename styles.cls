\ProvidesClass{styles}
\LoadClass{article}

\RequirePackage[margin=2cm]{geometry}
\usepackage{microtype}

% href setup
\usepackage[hidelinks]{hyperref}


\RequirePackage{xcolor}

\definecolor{VividPurple}{HTML}{2E64FE}
\definecolor{SlateGrey}{HTML}{2E2E2E}
\definecolor{LightGrey}{HTML}{555555}
\definecolor{DodgerBlue}{HTML}{4F83FF}
\definecolor{ElectricViolet}{HTML}{9F00FF}
\definecolor{Black}{HTML}{000000}

% % Change the colour below to one of the above values.
\colorlet{accent}{DodgerBlue} %Black!90 for print
\colorlet{body}{Black!80}

\RequirePackage{fontawesome}
\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\devsymbol}{\faCode}
\newcommand{\websitesymbol}{\faGlobe}

\newcommand{\printinfo}[2]{\mbox{\textcolor{accent}{#1}\hspace{0.5em}#2\hspace{1em}}}

\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{#1}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{#1}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\website}[1]{\printinfo{\websitesymbol}{#1}}

% \newcommand{\email}[1]{\printinfo{Email:}{#1}}
% \newcommand{\mailaddress}[1]{\printinfo{Email:}{#1}}
% \newcommand{\phone}[1]{\printinfo{Phone:}{#1}}
% \newcommand{\homepage}[1]{\printinfo{Homepage:}{#1}}
% \newcommand{\twitter}[1]{\printinfo{Twitter:}{#1}}
% \newcommand{\linkedin}[1]{\printinfo{LinkedIn:}{#1}}
% \newcommand{\github}[1]{\printinfo{Github:}{#1}}
% \newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
% \newcommand{\website}[1]{\printinfo{\websitesymbol}{#1}}

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

\newcommand{\makecvheader}{%
  \begingroup
    {\Large\bfseries\color{black}\textls[100]{\MakeUppercase{\@name}}\par}
    \smallskip
    {\normalsize\bfseries\color{accent}\textls[100]{\MakeUppercase{\@tagline}}\par}
    \smallskip
    {\bfseries\@personalinfo\par}
  \endgroup\smallskip
}



\RequirePackage{dashrule}

%% Blue (or accent coloured) divider is company separator
\setlength{\parindent}{0pt}
\newcommand{\divider}{\textcolor{accent}{\hdashrule{\linewidth}{0.8pt}{0.5ex}}}


%% Gray divider is project separator
\setlength{\parindent}{0pt}
\newcommand{\dividergray}{\textcolor{body!50}{\hdashrule{\linewidth}{0.4pt}{0.5ex}}\smallskip}


\newcommand{\cvsection}[1]{%
\medskip
  {\color{accent}\small\bfseries\textls[100]{\MakeUppercase{#1}}}\\[-1ex]
  {\color{accent}\rule{\linewidth}{1.2pt}\par}
\smallskip
}

% textendash, textbullet
\newcommand{\itemmarker}{\color{accent}\small\textbullet}
\newcommand{\dashedbullets}{\color{accent}\small\textendash}
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.8em,nosep,itemsep=0.15\baselineskip,after=\vskip0.15\baselineskip,before=\vskip0.15\baselineskip}
\setlist[itemize]{label=\itemmarker}


\newcommand{\company}[4]{%
    {\small\color{body}\textls[100]{\textbf{\MakeUppercase{#1}}}}       \hfill
    {\small\color{body}\textls[100]{\textbf{\MakeUppercase{#2}}}}       \par
    { \color{accent} \faMapMarker} \hspace{0.5em}{\color{body}{#3}}   \hfill 
    { \color{accent} \faCalendar}  \hspace{0.5em}{\color{body}{#4}}   \par
}

\RequirePackage{tikz}
\newcommand{\cvtag}[1]{%
  \tikz[baseline]\node[anchor=base,draw=accent,rounded corners,inner xsep=1ex,inner ysep =0.75ex,text height=1.2ex,text depth=.2ex,fill=accent]{\bfseries\scriptsize\textcolor{white}{#1}};
}

\NewDocumentCommand{\splitoncomma}{ >{\SplitList{,}} m }{%
  \ProcessList{#1}{\func}%
}

\NewDocumentCommand{\func}{m}{%
  \cvtag{#1} % a space follows
}

% \newcommand{\project}[4]{%
% \bigskip
%     %\normalise
%     \textbf{Project:}  #1   \hfill \textbf{Client:} #2\par\smallskip
%     \textbf{Role(s):}  #3   \hfill \textbf{Technologies:} {#4}\par\smallskip
%     \textbf{Responsibilities:}\par\smallskip
% }

\newcommand{\event}[3]{%
    %\normalise
    \textbf{Event:}  #1     \hfill \textbf{Role(s):} #2\par\smallskip
    \textbf{Skills:}  #3    \par\smallskip
    \textbf{Responsibilities:}\par\smallskip
}

\newcommand{\project}[5]{%
    %\normalise
    \textbf{Project:}  #1     \hfill \href{#2}{{ \color{accent} \large \githubsymbol}  \hspace{0.5em}{#3}}\par
    \textbf{Stack:}  #4    \par
    #5
}

\newcommand{\education}[4]{%
    {\small\color{body}\textls[100]{{\MakeUppercase{#1}}}}  \\
    {\small\textls[100]{{{#2}}}}  %\par\smallskip 
    \hfill{ \color{accent} \faCalendar}  \hspace{0.5em}{{#4}}   \par
}


\RequirePackage{multirow,tabularx}
\newcommand{\cvachievement}[3]{%
  \begin{tabularx}{\linewidth}{@{}p{2em} @{\hspace{1ex}} >{\raggedright\arraybackslash}X@{}}
  \multirow{2}{*}{\Large\color{accent}#1} & {#2}\\
  & #3
  \end{tabularx}%
}

\pdfinfo{ /Author (Anumeya Sehgal) /Title (Resume) /Keywords (Software Engineer; Technical Lead; Studentl Anumeya Sehgal;) /Subject (Resume template by Anumeya Sehgal)  /Producer(Anumeya Sehgal) /Creator(Anumeya Sehgal)}

\newcommand{\skills}[1]{%
    {\small\color{body}\textls[100]{{\MakeUppercase{#1}}}}  \\
}


\AtBeginDocument{%
  \pagestyle{empty}
  \color{body}
  \raggedright
}

\newcommand{\pipe}{\textbf{\color{accent} \hspace{0.2em} \textbar \hspace{0.2em}}}

\newcommand\createskill[2]{%
    \textsc{\textbf{#1}} & #2
}

\newcommand\createskills[1]{%
\explanationdetail{
  \begin{tabular}{ll}
    \makeatletter
    \@for\thisitem:=#1\do{\thisitem\\}
    \makeatother
    \end{tabular}
}
}
