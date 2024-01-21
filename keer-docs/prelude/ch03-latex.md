# Latex
- [How to create LaTeX documents with Emacs](https://opensource.com/article/18/4/how-create-latex-documents-emacs)


## [Install pdflatex ubuntu](https://gist.github.com/rain1024/98dd5e2c6c8c28f9ea9d)


PdfLatex is a tool that converts Latex sources into PDF. This is specifically very important for researchers, as they use it to publish their findings. It could be installed very easily using Linux terminal, though this seems an annoying task on Windows. Installation commands are given below.

- Install the TexLive base

```sh
sudo apt-get install texlive-latex-base
```

- Also install the recommended and extra fonts to avoid running into the error [1], when trying to use pdflatex on latex files with more fonts.

```sh
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-fonts-extra
```

- Install the extra packages,

```sh
sudo apt-get install texlive-latex-extra
```

Once installed as above, you may be able to create PDF files from latex sources using PdfLatex as below.

```sh
pdflatex latex_source_name.tex
```

Error 1: grep: ptmr7t.log: No such file or directory mktextfm: `mf-nowin -progname=mf \mode:=ljfour; mag:=1; nonstopmode; input ptmr7t' failed to make ptmr7t.tfm. kpathsea: Appending font creation commands to missfont.log.

! Font OT1/ptm/m/n/10=ptmr7t at 10.0pt not loadable: Metric (TFM) file not found.

Ref: http://kkpradeeban.blogspot.com/2014/04/installing-latexpdflatex-on-ubuntu.html


## Support Chinese
- [Orgmode导出PDF显示不了中文](https://emacs-china.org/t/topic/2540/27?page=2)
- [CJK](https://gist.github.com/lizijian/7857854)

```
sudo apt-get install texlive texlive-xetex texlive-latex-extra
sudo apt-get install latex-cjk-all
```

- *modules/prelude-latex.el*
```lisp
;; Chinese Support
;;  org-mode 8.0
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                             "xelatex -interaction nonstopmode %f"))

;; Chinese Support
;; export cn character
(setf org-latex-default-packages-alist
     (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))
```

- Org files on heads:
```org
#+LATEX_HEADER: \usepackage{ctex}
```