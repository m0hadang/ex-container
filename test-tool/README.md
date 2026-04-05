## 1. Podman Build

```bash
podman build --no-cache -t ehdlaos/test-tool:v1 .
```

## 2. Podman Run

```bash
podman run -it --rm ehdlaos/test-tool:v1
```

## 3. Podman Push (Docker Hub 업로드)

```bash
# Docker Hub 로그인
podman login docker.io

# 이미지 Push
podman push ehdlaos/test-tool:v1
```