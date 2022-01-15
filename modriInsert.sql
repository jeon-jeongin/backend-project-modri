-- DB 생성 : modriDB
CREATE DATABASE modriDB;
use modriDB;

DROP DATABASE modriDB;

-- 회원 관리 테이블
-- 관리자 --
INSERT INTO modriUserTBL VALUES ('jeongin','123456qw!','전정인','F', '1998-8-10', DEFAULT, 0);
SELECT * FROM modriUserTBL;
-- 일반 회원 --
INSERT INTO modriUserTBL VALUES ('seungheon','123456qw!','정승헌','M', '1995-6-21', DEFAULT, 1);
INSERT INTO modriUserTBL VALUES ('yuha','123456qw!','유시아','F', '1995-9-17', DEFAULT, 1);
INSERT INTO modriUserTBL VALUES ('arin','123456qw!','최예원','F', '1999-6-18', DEFAULT, 1);
INSERT INTO modriUserTBL VALUES ('junho','123456qw!','이준호','M', '1990-1-25', DEFAULT, 1);

-- 상품 데이터 추가
INSERT INTO modriProTBL VALUES (NULL, '스킨케어', '생텀 생토럼 토너', '천연 추출물 및 유효성분이 향상된 생텀 토너입니다.', 28800, 'resources/image/MD_Pick01.jpg');
INSERT INTO modriProTBL VALUES (NULL, '선케어', '카마르타지 선크림 50ml', '자연의 향기가 담긴 핸드크림', 18000, 'resources/image/MD_Pick02.jpg');
INSERT INTO modriProTBL VALUES (NULL, '스킨케어', '크러쉬밤 입욕제 4종 세트', '매력적인 네 가지 꽃향으로 모두를 설레게 하는 향기', 25000, 'resources/image/MD_Pick03.jpg');
INSERT INTO modriProTBL VALUES (NULL, '스킨케어', '막시모프 더블웨어 파운데이션 30ml', '24시간 무너짐없는 지속력 10cm앞에서도 완벽한 커버력', 41900, 'resources/image/MD_Pick04.jpg');
INSERT INTO modriProTBL VALUES (NULL, '클렌징/필링', '데미지 컨트롤 머드 팩 클렌징 폼 1+1', '촉촉하고 꾸덕한 머드로 피부노폐물 케어', 44000, 'resources/image/MD_Pick05.jpg');
INSERT INTO modriProTBL VALUES (NULL, '스킨케어', '크루엘라 매트 벨벳틴트 3종', '실키한 벨벳 텍스처와 섬세한 컬러감이 독보적인 무드를 선사합니다.', 17860, 'resources/image/MD_Pick06.jpg');
INSERT INTO modriProTBL VALUES (NULL, '세탁용품', '메리카인드니스 천연 세탁 비누 (250g)', '자연을 그대로 가져온 천연성분으로 만들어진 100% 식물성 천연비누', 4400, 'resources/image/productPhoto01.jpg');
INSERT INTO modriProTBL VALUES (NULL, '클렌징/필링', '천연 생분해 친환경 대나무 이중미세모 칫솔', '어떤 코팅도, 특수 처리도 하지 않아 자연스럽게 생분해 되는 친환경적이 대나무 칫솔입니다.', 1080, 'resources/image/productPhoto02.jpg');
INSERT INTO modriProTBL VALUES (NULL, '스킨케어', '코코루카 아이섀도우 4색키트 쉐도우 메이크업', '스모키에서 섹시한 아이 메이크업까지 모든 메이크업을 아우르는 4개 컬러로 구성된 아이섀도우', 65000, 'resources/image/productPhoto03.jpg');
INSERT INTO modriProTBL VALUES (NULL, '스킨케어', '엔칸토 롱웨어 스컬프팅 펜슬', '밀착력이 높은 하드 포뮬러로 발색과 동시에 눈썹 모 위 얇은 필름막을 형성', 26000,'/resources/image/productPhoto04.jpg');
INSERT INTO modriProTBL VALUES (NULL, '스킨케어', 'OCT 닥터오비우스 손소독제 550ml', '에탄올 70%를 함유한 의약외품 손 소독제', 9920, 'resources/image/productPhoto05.jpg');


 