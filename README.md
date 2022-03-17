# 보고서 LaTeX 양식
## myreport
기본 보고서 양식으로, `oblivoir`를 로드한다.

폰트는 다음을 사용한다:
- Libertinus Serif
- Libertinus Sans
- Inconsolata
- Libertinus Math
- Noto Serif CJK KR
- KoPubWorldDotum_Pro
- D2Coding
- EB Garamond (⩴)

LaTeX 엔진은 XeLaTeX을 가정한다.

## physreport
표지가 포함된 물리학실험 보고서 양식으로, `myreport`를 로드한다.
`myreport`를 로드하므로 기본적인 요구사항은 동일하다.

## highlights
Flashcard 형태로 개념을 정리할 수 있는 양식이다.
기본적으로는 영문만 지원하므로 한글을 쓰고 싶으면 `\usepackage{kotex}`과 기타 설정을 문서에서 하거나 `highlights.cls`를 수정하여 사용하면 된다.
추후에 모바일 환경 등에서 간편하게 볼 수 있는 크기로 flashcard로 추출할 수 있도록 지원할 예정이다.
