# XCLIP GPU Docker 배포 템플릿

이 리포지토리는 NVIDIA GPU에서 XCLIP 모델을 실행할 수 있도록 구성된 Docker 환경입니다.

## 💡 구성 파일

- `Dockerfile`: CUDA + Python + XCLIP 설치
- `docker-compose.yml`: XCLIP 실행 구성
- `init.sh`: GPU 환경 자동 설정
- `main.py`: XCLIP 테스트 코드

## ⚙️ 사용 방법

### 1. NVIDIA 드라이버 및 GPU 확인
```bash
nvidia-smi
