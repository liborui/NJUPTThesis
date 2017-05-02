% !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{WHUBachelor}[2016/05/31 4.0 Wuhan University Thesis Template for Bachelor Degree]
\LoadClass[zihao=-4,a4paper,oneside]{ctexbook}
\setmainfont{Times New Roman}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\newif\ifprint\printfalse
\DeclareOption{forprint}{\printtrue}
\ProcessOptions



%------------------------ Page layout ----------------------------------
\RequirePackage{fancyhdr,hyperref}

\hypersetup{pdfencoding=auto}  %%% 邓东升修改
 \ifprint
 \hypersetup{hidelinks}
 \else
\hypersetup{citecolor=magenta,linkcolor=blue}
\fi
\RequirePackage[top=2.7truecm,bottom=2.2truecm,left=3truecm,right=3truecm,includefoot,xetex]{geometry}    % 页面设置%
\newtoks\ThesisTitle        %论文标题
\newtoks\StudentNumber       %学号
\newtoks\Major          %学科专业名
\newtoks\Supervisor     %指导教师名
\newtoks\SchoolName      %学院名


\pagestyle{fancyplain}
\fancyhf{}  %清除以前对页眉页脚的设置
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{-\,\thepage\,-}


\fancypagestyle{plain}
{
\fancyhead{}                                    % clear all header fields
\renewcommand{\headrulewidth}{0pt}
\fancyfoot{}                                    % clear all footer fields
\fancyfoot[C]{-\,\thepage\,-}
}

%%=====封面===================== 
\def
\maketitle{%
  \null
  \thispagestyle{empty}%
  %\vspace*{-2cm}
  \begin{center}\leavevmode
%    \vspace*{2.1cm} %插入空白
    {\heiti \zihao{-0} 南京邮电大学}\\
%    \vspace{3.6cm} %南邮删除
    {\heiti \zihao{-0} \@title \par}%
    \vspace{3.5cm}
    {\kaishu\zihao{3}
    \begin{tabular}{ccc}
      \raisebox{-3ex}[0pt]{\makebox[2cm][s]{题\hfill \hfill 目}} & {  {}\raisebox{-3ex}[0pt]{ \the\ThesisTitle}\hfill{}} & \\ \cline{2-3}
      \raisebox{-3ex}[0pt]{\makebox[2cm][s]{专\hfill \hfill 业}} & {  {}\raisebox{-3ex}[0pt]{ \the\Major}\hfill{}} & \\\cline{2-3}
      \raisebox{-3ex}[0pt]{\makebox[2cm][s]{学生姓名}} & { {}\raisebox{-3ex}[0pt]{ \@author}\hfill{}} & \\\cline{2-3}
      \raisebox{-3ex}[0pt]{\makebox[2cm][s]{班级学号}} & { {}\raisebox{-3ex}[0pt]{ \the\StudentNumber}\hfill{}} & \\\cline{2-3}
      \raisebox{-3ex}[0pt]{\makebox[2cm][s]{指导教师}} & { {}\raisebox{-3ex}[0pt]{ \the\Supervisor}\hfill{}} & \\\cline{2-3}
      \raisebox{-3ex}[0pt]{\makebox[2cm][s]{指导单位}} & { {}\raisebox{-3ex}[0pt]{ \the\SchoolName}\hfill{}} & \\\cline{2-3}
     \end{tabular}
    }
    \par
    \vspace{6cm}
    {
    {\kaishu \zihao{-3} \@date \par}%
    }
    %\vspace*{-0.7cm}
  \end{center}%
%  \null
%   \cleardoublepage
  }

%------------------------ Abstract & Keywords -------------------------
\newcommand\cnabstractname{摘要} 
\newcommand\enabstractname{ABSTRACT}
\newcommand\cnkeywords[1]{ {\noindent\heiti\zihao{-4}\cnkeywordsname: }#1}
\newcommand\cnkeywordsname{关键词}
\newcommand\enkeywords[1]{ {\noindent\bfseries\zihao{-4}\enkeywordsname: }#1}
\newcommand\enkeywordsname{Key words}

\newenvironment{cnabstract}{
    \newpage
    %\part[\cnabstractname]{\ziju{2}{\cnabstractname}}   %%%终于解决了书签乱码的问题 2005-04-12.huangzh
    \begin{center}
    	\heiti\zihao{3}\ziju{2}{摘要} \\
    \end{center}
    \songti\zihao{-4}
    \@afterheading}
    {\par}

\newenvironment{enabstract}{
    \newpage
    %\part[\enabstractname]{\enabstractname}
    \begin{center}
    	\zihao{3}\textbf{ABSTRACT} \\
    \end{center}
    \songti\zihao{-4}
    \@afterheading}
    {\par}

%%------------------------常用宏包-----------------------------------
\RequirePackage{amsmath,amssymb}
\RequirePackage[amsmath,thmmarks]{ntheorem}% AMSLaTeX宏包.
\RequirePackage{graphicx}                 % 图形
\RequirePackage{color,xcolor}             %支持彩色
%\RequirePackage{mathrsfs}   % 不同于\mathcal or \mathfrak 之类的英文花体字体
\RequirePackage{url}
\RequirePackage{enumerate}
%%----------------------- Theorems -----------------------------------
\theoremstyle{plain}
\theoremheaderfont{\heiti}
\theorembodyfont{\songti} \theoremindent0em
\theorempreskip{0pt}
\theorempostskip{0pt}
\theoremnumbering{arabic}
%\theoremsymbol{} %定理结束时自动添加的标志
\newtheorem{theorem}{\hspace{2em}定理}[section]
\newtheorem{definition}{\hspace{2em}定义}[section]
\newtheorem{lemma}{\hspace{2em}引理}[section]
\newtheorem{corollary}{\hspace{2em}推论}[section]
\newtheorem{proposition}{\hspace{2em}性质}[section]
\newtheorem{example}{\hspace{2em}例}[section]
\newtheorem{remark}{\hspace{2em}注}[section]

\theoremstyle{nonumberplain}
\theoremheaderfont{\heiti}
\theorembodyfont{\normalfont \rm \songti}
\theoremindent0em \theoremseparator{\hspace{1em}}
\theoremsymbol{$\square$}
\newtheorem{proof}{\hspace{2em}证明}


\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}  %自定义新命令\upcite, 使参考文献引用以上标出现

%%%%%%%-------------------------------------------------
%%%===  suppress extra inter-line spacing in \list environments
\makeatletter \setlength\partopsep{0pt}
\def\@listI{\leftmargin\leftmargini
            \parsep 0pt
            \topsep \parsep
            \itemsep \parsep}
\@listI
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiv{\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listv{\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listvi{\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
%
% Change default margins for \list environments
\setlength\leftmargini   {2\ccwd} \setlength\leftmarginii
{\leftmargini} \setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini} \setlength\leftmarginv
{\ccwd} \setlength\leftmarginvi  {\ccwd} \setlength\leftmargin
{\leftmargini} \setlength\labelsep      {.5\ccwd}
\setlength\labelwidth    {\leftmargini}
%
\setlength\listparindent{2\ccwd}
% Change \listparindent to 2\ccwd in \list
\def\list#1#2{\ifnum \@listdepth >5\relax \@toodeep
     \else \global\advance\@listdepth\@ne \fi
  \rightmargin \z@ \listparindent2\ccwd \itemindent \z@
  \csname @list\romannumeral\the\@listdepth\endcsname
  \def\@itemlabel{#1}\let\makelabel\@mklab \@nmbrlistfalse #2\relax
  \@trivlist
  \parskip\parsep \parindent\listparindent
  \advance\linewidth -\rightmargin \advance\linewidth -\leftmargin
  \advance\@totalleftmargin \leftmargin
  \parshape \@ne \@totalleftmargin \linewidth
  \ignorespaces}

\makeatother
%---------------------------------------------------
\newcommand\acknowledgement{\chapter*{\ziju{2}致谢}}

%%% ---- 章节标题设置 ----- %%%%
%\ctexset{chapter={format+={\zihao{4}},%
%               number={\zihao{4}\chinese{chapter}},name={,},afterskip={30pt},beforeskip={20pt}}}
%\ctexset{section={format+={\zihao{4}\raggedright}}}
%\ctexset{subsection={format+={\zihao{-4}\raggedright}}}
%\ctexset{subsubsection={format={\zihao{-4}\bf\raggedright}}}

\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}

%%% ---- 图表标题设置 ----- %%%%
\RequirePackage[labelsep=quad]{caption} %% 序号之后空一格写标题
\captionsetup[table]{textfont=bf}  %%设置表格标题字体为黑体  。2016.06.07
\renewcommand\figurename{\zihao{-4} 图}
\renewcommand\tablename{\bf\zihao{-4} 表} 

%%% ------ 目录设置 ------- %%%%

\ctexset{contentsname={目\qquad 录}}
%\RequirePackage{tocloft} 
%\renewcommand\cftchapfont{\zihao{4}\bf}
%\renewcommand\cfttoctitlefont{\hfill\zihao{-2}\bf}
%\renewcommand\cftaftertoctitle{\hfill}
%原版使用tocloft宏包,现改用更为常用的titlesec
\RequirePackage[center]{titlesec}
%\RequirePackage{titletoc}
\titlespacing{\chapter}{0cm}{-1.3cm}{1em}
\titleformat{\chapter}{\centering\heiti\zihao{-3}}{第\chinese{chapter}章}{1em}{}
\titleformat{\section}{\heiti\zihao{4}}{\fontspec{SimHei}\arabic{chapter}.\arabic{section}}{1em}{}
\titleformat{\subsection}{\heiti\zihao{4}}{\fontspec{SimHei}\arabic{chapter}.\arabic{section}.\arabic{subsection}}{1em}{}
\titlespacing{\chapter}{0cm}{-1.3cm}{1em}
%\titlecontents{chapter}[0em]
%{}{\makebox[4.1em][l]
%	{第,\chinese{chapter},章}}{}
%{\titlerule*[0.7pc]{.}\contentspage}
%
%\titlecontents{chapter}[0em]{\bfseries\large}
%{\thecontentslabel\quad}
%{\hspace*{0em}}
%{\dotfill \contentspage}

%\titleformat{\chapter}{\centering\Huge\bfseries}{第\,\thechapter\,章}{1em}{}
%\renewcommand\thechapter{第\chinese{section}章}
%\renewcommand\thesection{第\chinese{section}章}
%%\renewcommand\thesubsection{第\chinese{subsection}节}
%
%\makeatletter 
%\@addtoreset{equation}{section}
%\makeatother 
%\renewcommand\theequation{\arabic{section}.\arabic{equation}}

%%===参考文献===%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bibliographystyle{abbrv}        % 参考文献样式,  plain,unsrt,alpha,abbrv,chinesebst 等等
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{figures/}}        % 图片文件路径
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\allowdisplaybreaks

\endlinechar `\^^M
\endinput

%%% ------ 页眉页脚 ------- %%%%
