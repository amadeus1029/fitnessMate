/* 임포트 예시 */

/* 테이블 생성 */
CREATE TABLE busan (
    addressNo VARCHAR2(25),
	province VARCHAR(20),
	borough VARCHAR(20),
	town VARCHAR(20)
);

/* txt파일로부터 import하세요 */


/* 중복값 제거 */
DELETE FROM busan b
WHERE ROWID < (SELECT MAX(ROWID) FROM busan a
  WHERE a.province = b.province and a.borough = b.borough and a.town = b.town);



/*

유의점 : 가끔 깨진 코드 나올 경우 있으니 중복값 제거 후 살펴봐주세요
화이팅!!!!!!!!!!!!!!!

*/
