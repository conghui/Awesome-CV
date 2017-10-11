# -*- mode: python -*-
# SCons build file

import os

# Use this to inherit the PATH environmental variable if necessary.
env = Environment(ENV = os.environ)

env.Replace(PDFLATEX='xelatex')
env.Replace(BIBTEX='bibtex')

# Enable SyncTeX. This is personal, but I use it, and I would
# recommend it to everybody.
# env.AppendUnique(PDFLATEXFLAGS='-synctex=1')

# Look in standard directory ~/texmf for .sty files.
env.SetDefault(TEXMFHOME=os.path.join(os.environ['HOME'], 'texmf'))

# listing your files and depedencies
files   = ['cv', 'resume-cn']

# for f in files:
#   src = f + '.tex'
#   pdf_target = f + '.pdf'
#   pdf = env.PDF(pdf_target, src)



pdf_cv = env.PDF('cv.tex')
pdf_resume_cn = env.PDF('resume-cn.tex')

  # env.Clean(pdf, f + '.synctex.gz')
  # env.Clean(pdf, f + '.pdfsync')

# set default
Default([pdf_cv, pdf_resume_cn])
