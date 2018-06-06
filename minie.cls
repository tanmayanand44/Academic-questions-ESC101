\ProvidesClass{mine}[2018/06/06 AM]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}


\RequirePackage{tcolorbox}
\RequirePackage{color}
\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}

\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
  \colorlet{fillbody}{blue}
\else
  \colorlet{fillheader}{red}
  \colorlet{header}{white}
  \colorlet{body}{black}  
  \colorlet{fillbody}{blue}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}



\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \thinfont%
  \color{blue}%
}

 \newcommand{\header}[1]{%
   \begin{tikzpicture}[remember picture,overlay]
     \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
     \node [anchor=center] (name) at (box) {
       \fontsize{40pt}{72pt}\color{header}
       {\selectfont #1}
     };
   \end{tikzpicture}
      \begin{tikzpicture}[remember picture,overlay]
     \node [rectangle, fill=white, anchor=north, minimum width=\paperwidth, minimum height=1cm] (box1) at (box.south){};
     \node [anchor=center] (name) at (box) {
       \fontsize{40pt}{72pt}\color{header}
       {\selectfont}
     };
        \vspace{10mm}
   \end{tikzpicture}
    
        \vspace{10mm}
   \vspace{-2\parskip}
 }
  \newcommand{\myentrya}[3]{%
   \begin{tikzpicture}[remember picture,overlay]
     \node [rectangle, fill=fillbody, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box2) at (box1.south){};
     \node [anchor=south] (name2) at (box2) {
       \fontsize{#3pt}{72pt}\color{body}
       {\selectfont #1}
     };
       \node [anchor=north] at (name2.south) {%
      \fontsize{#3pt}{72pt}\color{body}%
      \selectfont #2%
    };
   \end{tikzpicture}
   
   
   \begin{tikzpicture}[remember picture,overlay]
     \node [rectangle, fill=white, anchor=north, minimum width=\paperwidth, minimum height=1cm] (box3) at (box2.south){};
     \node [anchor=center] (name) at (box) {
       \fontsize{40pt}{72pt}\color{header}
       {\selectfont}
     };
     
        \vspace{10mm}
   \end{tikzpicture}
    
        \vspace{10mm}
   \vspace{-2\parskip}
 }
  \newcommand{\myentryb}[3]{%
   \begin{tikzpicture}[remember picture,overlay]
     \node [rectangle, fill=fillbody, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box4) at (box3.south){};
     \node [anchor=south] (name3) at (box4) {
       \fontsize{#3pt}{72pt}\color{body}
       {\selectfont #1}
     };
          \node [anchor=north] (name) at (name3.south) {
       \fontsize{#3pt}{72pt}\color{body}
       {\selectfont #2}
     };

   \end{tikzpicture}
   
   \begin{tikzpicture}[remember picture,overlay]
     \node [rectangle, fill=white, anchor=north, minimum width=\paperwidth, minimum height=1cm] (box5) at (box4.south){};
  
          \node [anchor=center] (name) at (box5) {
       \fontsize{40pt}{72pt}\color{body}
       {\selectfont}
     };
   \node [anchor=center] (name) at (box5) {
       \fontsize{40pt}{72pt}\color{body}
       {\selectfont}
     };
        \vspace{10mm}
   \end{tikzpicture}
    
        \vspace{10mm}
   \vspace{-2\parskip}
 }
  \newcommand{\myentryc}[3]{%
   \begin{tikzpicture}[remember picture,overlay]
     \node [rectangle, fill=fillbody, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box6) at (box5.south){};
     \node [anchor=south] (name) at (box6) {
       \fontsize{#3pt}{72pt}\color{body}
       {\selectfont #1}
     };
     
          \node [anchor=north] (name) at (box6) {
       \fontsize{#3pt}{72pt}\color{body}
       {\selectfont #2}
     };
   \end{tikzpicture}
   \vspace{-2\parskip}
 }
