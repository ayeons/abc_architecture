# abc_architecture

FSD 기반으로 간소화시킨 flutter lib 부분 아키텍쳐입니다.

## 구조

```text
/lib
├── app/                    # 애플리케이션 구성 및 초기화
│   ├── router/             # 라우팅 관련 구성
│   ├── .../
│   └── app.dart            # 페이지의 진입점 및 구성
│
├── board/                  # 페이지 요소
│   ├── product_detail/     # 페이지 흐름별 슬라이스
│   ├── product_list/
│   └── setting/
│       ├── appearance/     # UI
│       ├── bridge/         # 외부 데이터와의 중간 브릿지 역할 & state 관리
│       ├── communicator/   # 외부 데이터 요청
│       └── exports.dart    # barrel exprot
│
├── component/              # 공통 컴포넌트
│   └── product             # 도메인 단위 슬라이스
│       ├── appearance/     # UI
│       ├── bridge/         # 외부 데이터와의 중간 브릿지 역할 & state 관리
│       ├── communicator/   # 외부 데이터 요청
│       ├── data/           # dto & state
│       ├── enum/
│       └── exports.dart    # barrel exprot
│       └── .../
│
└── shared/
    ├── appearance/
    ├── design/
    ├── service/
    ├── util/
    └── .../
```

## 특징

- layer(추상화 레벨 구분: app, board, component, shared), slice(page & domain 단위), segment(기능적 구분) 구조
- app과 shared는 slice 생략
- layer의 dependency는 아래로 흐름
- slice 하위 segment(board, component의 segment)의 dependency는 아래로 흐름
- dependency의 흐름 방향대로 정렬되게끔 명명한 layer와 segment
- slice간 dependency는 가급적 제한
- 예외적으로 board routing관련 import는 dependency흐름과 관계없이 허용
- slice에 barrel export 사용
- slice 내부 import는 상대 경로, 외부 import는 절대 경로

## 참고

- target page와 source page의 dependency를 유지하는게 더 좋다고 판단해서 routing name을 분리해서 dependency를 없애지 않음
- layer를 간소화한 이유는 소규모 프로젝트에서 도메인별, feature별 colocation을 유지하기 위함
- 개선 예정