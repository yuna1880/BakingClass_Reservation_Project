## Baking Class Reservation Website Project (Team)
##### JSP + MyBatis 를 이용한 베이킹 원데이 클래스 예약 사이트 만들기 
##### (2021.02.15 - 25)
##### 팀프로젝트 (권유나, 김보경, 이상희 총 3명)
---

### 💡 구현 화면 
---
![screencapture-localhost-8060-Baking-list-2021-02-24-15_43_40](https://user-images.githubusercontent.com/72509037/109265771-6e65a400-784a-11eb-96f9-9527a5201c81.png)


### 💡 프로젝트 목표

---

- MVC2 모델을 사용하여 로직처리와 View단을 구분.
- 명명규칙, 데이터 입력과 선택 연습.
- 사용자의 관점과 편의를 생각하고 고민.
- DB연동과 CRUD를 통해 기능구현 및 데이터 입출력


### 💡 프로젝트 개발환경 및 협업도구

---

- Java, JSP, JSTL(MYBATIS)
- HTML, CSS, JS, JQUERY
- DB : ORACLE8
- GIthub & GoogleMeeting (협업도구)


### 📊  간트차트
---

<img width="702" alt="Screenshot_2021-02-25_at_10 08 52_pm" src="https://user-images.githubusercontent.com/72509037/109265853-8b01dc00-784a-11eb-97c2-3567064fa3e3.png">

### 📊 Project Diagram
---

![캡처](https://user-images.githubusercontent.com/72509037/109265864-8e956300-784a-11eb-9cfd-cf0fe557e5cf.JPG)

### 📊 DB Table
---

![DB설계2](https://user-images.githubusercontent.com/72509037/109269039-4462b080-784f-11eb-8d00-7d62e789fd68.png)

---

- **회원 테이블의 `아이디` 를 `PK` 값으로 준 뒤, `강사정보`, `후기게시판`, `공지사항`, `예약정보`,**

    **`상세페이지`   테이블의   `아이디` 를 `FK` 로 연결해 주었다.**

- 각 **테이블의 idx 에는 `시퀀스` 설정.**
- **각 테이블의 `FK` 에 제약조건 `ON DELETE CASCADE`설정하여 회원 탈퇴시 모든 예약정보가 삭제되도록 설정.**


### 💡 내가 구현한 기능
---

**`회원관리`** → **`회원가입`** **`정보수정`** **`회원탈퇴`** **`로그인`** **`로그아웃`**

**`게시판`** → **`후기게시판`** **`공지게시판` ( `작성` , `수정`, `삭제`, `동적검색` 구현)**



### 📃 Ajax를 이용한 아이디 중복확인 구현
---

<img width="448" alt="Screenshot_2021-02-24_at_5 56 11_pm" src="https://user-images.githubusercontent.com/72509037/109265884-9523da80-784a-11eb-9c28-21547bf3162a.png">

중복된 아이디일시, '사용중인 아이디입니다' 라고 뜨도록 구현.

<img width="438" alt="Screenshot_2021-02-24_at_5 56 36_pm" src="https://user-images.githubusercontent.com/72509037/109265886-96550780-784a-11eb-85a2-af7e2380726d.png">

중복된 아이디가 없을시, '사용가능한 아이디입니다' 라고 뜬다.

<img width="427" alt="Screenshot_2021-02-24_at_5 56 43_pm" src="https://user-images.githubusercontent.com/72509037/109265889-96550780-784a-11eb-92ef-71cdfa42eb69.png">

칸이 비어있을시, '아이디를 입력해주세요' 라고 뜬다.

- **ajax + JS 를 이용한 실시간으로 `아이디 중복체크`를 해주는 기능 구현.**

    **DB에 중복 아이디가 있을시 1, 없을경우 0, 입력값이 없을 경우 빈 문자열을 돌려받도록 처리해**

    **주어 중복체크를 구현.**
    
    
### 📃 후기 게시판 구현
---
![게시판1](https://user-images.githubusercontent.com/72509037/109276974-074feb80-785a-11eb-92e9-5c164fa12923.PNG)

![마카롱2](https://user-images.githubusercontent.com/72509037/109276983-0c149f80-785a-11eb-95fc-de5926f069f9.PNG)

게시판 기본적인 페이징처리 구현

![게시판3](https://user-images.githubusercontent.com/72509037/109276995-0f0f9000-785a-11eb-91fc-158145b6b82b.PNG)
![게시판4](https://user-images.githubusercontent.com/72509037/109277004-133bad80-785a-11eb-97b7-01a08b14649d.PNG)
로그인된 아이디로 작성한 글만 수정&삭제가 가능하도록 JSTL을 이용한 View단에서 분기처리.

![게시판5](https://user-images.githubusercontent.com/72509037/109277008-146cda80-785a-11eb-85c6-ca0e40121f2b.PNG)
**후기작성시, `MultipartRequest` 객체를 이용한 첨부파일 첨부 및 수정 가능하도록 구현.**

**파일을 수정시, 파일선택 input을 display: none;으로 숨겨준 뒤,** 

**새로운 button 두개 (파일수정)(파일삭제)를 만들어서** 

**파일 수정시, 숨겨뒀던 버튼이 클릭될 수 있도록 구현. → 다중 파일첨부로 수정할 필요성이 있다.**

![게시판6](https://user-images.githubusercontent.com/72509037/109277021-18006180-785a-11eb-9b92-78c0833aac70.PNG)
![게시판7](https://user-images.githubusercontent.com/72509037/109277028-19318e80-785a-11eb-80b3-11e2e0e9e74f.PNG)
---
검색창에서 **`동적검색`** (**`이름`**, **`아이디`**) 키워드로 검색이 가능하도록 구현.



### 📑 프로젝트 리뷰 및 개선방향

---

- 효율적인 전체 구조 및 흐름에 대한 고민
- **중복되는 코드 정리**
- 여러개의 Controller를 FrontController로 대체할 것에 대한 고민.
- 처음 설계시, 명확한 설계와 기획의 필요성.

More about this project 🔽 Please have a look !
---
[👉🏻 click here 👈🏻](https://www.notion.so/yunakwon/Baking-Class-Reservation-Website-Project-e4d1e7a4524840b7b75ca9ca6be9f67b)
