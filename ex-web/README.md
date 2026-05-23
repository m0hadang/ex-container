# ex-web

- display container's ip, hostname

---

## 1. Podman Build

```bash
podman build --no-cache -t ehdlaos/ex-web:v1 .
```

## 2. Podman Run

```bash
# 기본 실행 (포트 8080으로 접속)
podman run -d -p 8080:80 --name mycontainer ehdlaos/ex-web:v1

# 브라우저에서 확인
# http://localhost:8080
```

## 3. Podman Push (Docker Hub upload)

```bash
# Docker Hub 로그인
podman login docker.io

# 이미지 Push
podman push ehdlaos/ex-web:v1
```

## 4. 기타 유용한 명령어

```bash
# 컨테이너 중지 및 삭제
podman stop mycontainer
podman rm mycontainer

# 이미지 삭제
podman rmi ehdlaos/ex-web:v1

# 태그 변경 후 Push
podman tag ehdlaos/ex-web:v1 ehdlaos/ex-web:latest
podman push ehdlaos/ex-web:latest
```

## 파일 구조

```
.
├── Dockerfile              # 이미지 빌드 설정
├── index.html.template     # 웹페이지 템플릿 (IP/호스트명 플레이스홀더)
├── entrypoint.sh           # 컨테이너 시작 시 IP/호스트명 주입 스크립트
└── README.md               # 이 파일
```
