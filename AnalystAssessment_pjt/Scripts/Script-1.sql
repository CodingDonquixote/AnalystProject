CREATE SEQUENCE analystCode_seq;
CREATE TABLE analyst (
	analystCode NUMBER PRIMARY KEY,
	analystName VARCHAR2(50) NOT NULL,
	firmName VARCHAR2(50) NOT NULL,
	industryName VARCHAR2(50) NOT NULL
);


SELECT count(*) FROM ANALYST WHERE upper(INDUSTRYNAME)= upper (INDUSTRYNAME)
and upper(INDUSTRYNAME) LIKE '%' || UPPER('it')|| '%';

select
		Q.*
		from
		(select * from analyst WHERE
			upper(industryname) like '%' || upper('it') || '%'
			order by analystCode desc) Q
		




INSERT INTO ANALYST
	(analystcode, ANALYSTNAME, FIRMNAME, INDUSTRYNAME)
VALUES
	(analystCode_seq.nextval, '원석', '쿠팡', '자동차');
SELECT * FROM ANALYST;

CREATE SEQUENCE board_idx_seq;
CREATE TABLE board(
	b_idx NUMBER PRIMARY KEY,
	m_userId VARCHAR2(50) NOT NULL,
	m_userPw VARCHAR2(100) NOT NULL,
	b_title VARCHAR2(150) NOT NULL,
	b_content VARCHAR2(2000) NOT NULL,
	b_date TIMESTAMP DEFAULT SYSDATE,
	b_hit NUMBER DEFAULT 0
	);
	
INSERT INTO BOARD
	(b_idx, m_userid, M_USERPW, B_TITLE, B_CONTENT, B_DATE,B_HIT)
VALUES
	(1, 'sanchoi', '1234', '����ģ��','��2',SYSDATE,0);
SELECT * FROM BOARD;

CREATE SEQUENCE comment_idx_seq;
CREATE TABLE board_comment(
	c_idx NUMBER PRIMARY KEY,
	c_ref NUMBER NOT NULL,
	m_userId VARCHAR2(50) NOT NULL,
	m_userPw VARCHAR2(100) NOT NULL,
	c_content VARCHAR2(2000) NOT NULL,
	c_date TIMESTAMP DEFAULT SYSDATE,
	c_group NUMBER(4),
	c_step NUMBER(4),
	c_indent NUMBER(4)
	);


CREATE SEQUENCE industryIdx_seq;
CREATE TABLE industry(
	industryIdx number(5) PRIMARY KEY,
	industryName varchar2(50) NOT NULL
);

INSERT INTO INDUSTRY
	(INDUSTRYIdx, INDUSTRYNAME)
VALUES
	(industryIdx_seq.nextval, 'IT');

SELECT * FROM INDUSTRY;

CREATE TABLE member(
	m_idx NUMBER(5) PRIMARY KEY,
	m_userId varchar2(20) NOT NULL,
	m_userPw varchar2(30) NOT NULL,
	m_userName varchar2(30) NOT NULL,
	m_email varchar2(50) NOT NULL,
	m_lev NUMBER(3) DEFAULT 0,
	m_regDate timestamp DEFAULT SYSDATE,
	m_joinKey varchar2(50) DEFAULT '',
	m_pwKey varchar2(50) DEFAULT '',
	m_temp varchar2(100)
);
CREATE SEQUENCE
INSERT INTO MEMBER 
	(m_idx, M_USERID, M_USERPW, M_USERNAME, M_EMAIL, M_LEV, M_REGDATE, M_JOINKEY, M_PWKEY, M_TEMP)
VALUES
	(1, 'sanchoi' , '1234', 'sanchoi', 'carrier_728@naver.com', 99, SYSDATE, '', '', ''); 

SELECT * FROM MEMBER;

CREATE SEQUENCE reportNo_seq;
CREATE TABLE report(
	reportNo NUMBER(10) PRIMARY KEY,
	itemName VARCHAR(50) NOT NULL,
	reportDate DATE DEFAULT SYSDATE,
	industryName VARCHAR2(50) NOT NULL,
	analystName VARCHAR2(50) NOT NULL,
	investOpinion VARCHAR2(10) NOT NULL,
	targetPrice NUMBER(10) DEFAULT -1,
	currentPrice NUMBER(10) NOT NULL,
	after1MPrice NUMBER(10) DEFAULT -1,
	after3MPrice NUMBER(10) DEFAULT -1,
	after6MPrice NUMBER(10) DEFAULT -1,
	after1YPrice NUMBER(10) DEFAULT -1
);

INSERT INTO INDUSTRY
(INDUSTRYIdx, INDUSTRYNAME)
VALUES
(INDUSTRYIDX_seq.nextval, '식품');

SELECT * FROM REPORT WHERE ANALYSTNAME ='전병';
