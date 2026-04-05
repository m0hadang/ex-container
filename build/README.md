# Container Info - Simple Nginx Image

Nginx 기반 컨테이너의 **IP 주소**와 **호스트명**을 웹페이지에 표시하는 간단한 Podman 이미지입니다.

---

## 1. Podman Build

```bash
podman build --no-cache -t ehdlaos/test:v2 .
```

## 2. Podman Run

```bash
# 기본 실행 (포트 8080으로 접속)
podman run -d -p 8080:80 --name mycontainer ehdlaos/test:v2

# 브라우저에서 확인
# http://localhost:8080
```

## 3. Podman Push (Docker Hub 업로드)

```bash
# Docker Hub 로그인
podman login docker.io

# 이미지 Push
podman push ehdlaos/test:v2
```

## 4. 기타 유용한 명령어

```bash
# 컨테이너 중지 및 삭제
podman stop mycontainer
podman rm mycontainer

# 이미지 삭제
podman rmi ehdlaos/test:v2

# 태그 변경 후 Push
podman tag ehdlaos/test:v2 ehdlaos/test:latest
podman push ehdlaos/test:latest
```

## 파일 구조

```
.
├── Dockerfile              # 이미지 빌드 설정
├── index.html.template     # 웹페이지 템플릿 (IP/호스트명 플레이스홀더)
├── entrypoint.sh           # 컨테이너 시작 시 IP/호스트명 주입 스크립트
└── README.md               # 이 파일
```
