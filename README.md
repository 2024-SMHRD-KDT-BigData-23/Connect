# :pushpin: CONNECT
> 풀캘린더 API를 활용한 공모전 정보 제공 및 업무 관리 서비스


</br>

## 1. 제작 기간 & 참여 인원
- 2024년 3월 18일 ~ 2024년 4월 2일
- 팀 프로젝트 (CONNECT)
  
- ### 팀장 : 노승우
- 캘린더 기능 구현, scrapList, todoList, Calendar 연동, 카테고리별 공모전 표시 기능, DB구축, 크롤링
  
- ### 팀원 : 김동완
- 메인페이지, 공모전 상세정보 페이지, Todolist페이지, 툴팁 구현, 시연영상, 페이지 제작
- ### 팀원 : 주우건
- todoList 기능, 게시판 기능, 마이페이지 기능, Ajax 비동기 연동, 공모전 검색 기능 구현
- ### 팀원 : 조은해
-  UI/UX 설계, 스타트페이지, 마이페이지. 캘린더 페이지, 게시판 페이지, 스크랩 페이지 구현, PPT 제작
- ### 팀원 : 정대주
- 크롤링

</br>

#### Backend 사용언어
<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=Python&logoColor=white"/> <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/> 

#### Frontend 사용언어
<img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> <img src="https://img.shields.io/badge/HTML-E34F26?style=for-the-badge&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/CSS-1572B6?style=for-the-badge&logo=css3&logoColor=white">

#### 개발도구
<img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/> <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/> <img src="https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=Jupyter&logoColor=white"/>

#### 협업도구
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/> <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>

#### 서버환경
<img src="https://img.shields.io/badge/Apache Tomcat 9.0-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/> 

#### 데이터베이스
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white"/> 

#### 디자인
<img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
Kakao Oven

#### 라이브러리
Fullcalendar API
<br>
Paging API



</br>

## 3. 개발목표
- 사용자들이 관심 있는 공모전을 발견하고 관리 할 수 있는 편리하고 직관적인 서비스를 제공하여 공모전 참여대한 번거로움을 줄이고 참여율을 높이는 업무 관리 시스템

<br>

## 4. ERD 설계
![](https://github.com/2024-SMHRD-KDT-BigData-23/Connect/blob/master/MavenSample04_Final2/src/main/webapp/assets/images/connect%20ERD.png)


## 4. 핵심 기능
공모전 정보 제공과 동시에 업무관리서비스(BPS)를 제공합니다.
<br>
스크랩 기능이 존재하며 스크랩한 공모전은 todoList와 Calendar에 표시됩니다.
<br>
todoList와 Calendar는 서로 연동이 됩니다.
<br>
게시글 작성, 파일첨부 및 다운로드가 가능합니다.


<details>
<summary><b>핵심 기능 설명 펼치기</b></summary>
<div markdown="1">

### 4.1. 전체 흐름
![](https://github.com/2024-SMHRD-KDT-BigData-23/Connect/blob/master/MavenSample04_Final2/src/main/webapp/assets/images/connectsystemarchytect.png)

### 4.2. 사용자 요청
![](https://github.com/2024-SMHRD-KDT-BigData-23/Connect/blob/master/MavenSample04_Final2/src/main/webapp/assets/images/connetdongbedong.png)

- **동기 요청** :pushpin: [코드 확인](https://github.com/2024-SMHRD-KDT-BigData-23/Connect/blob/master/MavenSample04_Final2/src/main/webapp/WEB-INF/views/Scrap.jsp)
  - 스크랩 리스트에서 스크랩한 공모전을 클릭하여 데이터를 Controller을 통해 class 파일로 이동시키고 dao와 mapper를 통한 기능 실행후 상세정보 페이지로 이동합니다.

- **Ajax비동기 요청** :pushpin: [코드 확인]()
  - URL의 모양새인 경우, 컨텐츠를 등록하는 POST 요청을 비동기로 날립니다.

### 4.3. Controller

![](https://github.com/2024-SMHRD-KDT-BigData-23/Connect/blob/master/MavenSample04_Final2/src/main/webapp/assets/images/connectController.png)

- **요청 처리** :pushpin: [코드 확인](https://github.com/2023-SMHRD-KDT-IOT-4/Repo/blob/94e1b3a93c48cc3fdb51d4468de151930705faa6/Middle_project12/src/main/webapp/WEB-INF/views/BoardContent.jsp#L20)
  - Controller에서는 요청을 화면단에서 넘어온 요청을 받고, Service 계층에 로직 처리를 위임합니다.

- **결과 응답** :pushpin: [코드 확인]()
  - Service 계층에서 넘어온 로직 처리 결과(메세지)를 화면단에 응답해줍니다.

### 4.4. Service

![](https://zuminternet.github.io/images/portal/post/2019-04-22-ZUM-Pilot-integer/flow_service1.png)

- **Http 프로토콜 추가 및 trim()** :pushpin: [코드 확인]()
  - 사용자가 URL 입력 시 Http 프로토콜을 생략하거나 공백을 넣은 경우,  
  올바른 URL이 될 수 있도록 Http 프로토콜을 추가해주고, 공백을 제거해줍니다.

- **URL 접속 확인** :pushpin: [코드 확인]()
  - 화면단에서 모양새만 확인한 URL이 실제 리소스로 연결되는지 HttpUrlConnection으로 테스트합니다.
  - 이 때, 빠른 응답을 위해 Request Method를 GET이 아닌 HEAD를 사용했습니다.
  - (HEAD 메소드는 GET 메소드의 응답 결과의 Body는 가져오지 않고, Header만 확인하기 때문에 GET 메소드에 비해 응답속도가 빠릅니다.)

  ![](https://zuminternet.github.io/images/portal/post/2019-04-22-ZUM-Pilot-integer/flow_service2.png)

- **Jsoup 이미지, 제목 파싱** :pushpin: [코드 확인]()
  - URL 접속 확인결과 유효하면 Jsoup을 사용해서 입력된 URL의 이미지와 제목을 파싱합니다.
  - 이미지는 Open Graphic Tag를 우선적으로 파싱하고, 없을 경우 첫 번째 이미지와 제목을 파싱합니다.
  - 컨텐츠에 이미지가 없을 경우, 미리 설정해둔 기본 이미지를 사용하고, 제목이 없을 경우 생략합니다.


### 4.5. Repository

![](https://zuminternet.github.io/images/portal/post/2019-04-22-ZUM-Pilot-integer/flow_repo.png)

- **컨텐츠 저장** :pushpin: [코드 확인]()
  - URL 유효성 체크와 이미지, 제목 파싱이 끝난 컨텐츠는 DB에 저장합니다.
  - 저장된 컨텐츠는 다시 Repository - Service - Controller를 거쳐 화면단에 송출됩니다.

</div>
</details>

</br>

## 5. 핵심 트러블 슈팅
### 5.1. 디자인 완성 전 기능을 완성해뒀지만 사용하지못함.
- 백그라운드 프론트 각각 나눠서 작업을 하다보니 기능이 먼저 완성된적이 있습니다.

- 하지만 완성된 디자인에서 페이징 기술이 들어간 API가 적용되어있어 기존의 코드를 사용해보려고 해도 사용할수 없었습니다.

- 그래서 기존 동기식 방식이었던 코드를 아예 버리고 새로운 비동기식 코드를 작성해서 적용하게 되었습니다.

<details>
<summary><b>기존 코드</b></summary>
<div markdown="1">

~~~java
/**
 * 기존방식은 세션에 DocumentList 라는 Attribute에 저장해 </c foreach> 방식으로 출력하는식 이었습니다.
 * 세션에서 가져온 아이디를 메소드를 활용하여 List<DocumentVO> 안에 담아서 보내 출력합니다.
 */
public String execute(HttpServletRequest request, HttpServletResponse response) {
      HttpSession session = request.getSession();
    MemberVO mvo = (MemberVO) session.getAttribute("profile");
    String userId = mvo.getuserId();
      DAO dao = new DAO();
      List<DocumentVO> list = dao.DocumentSelect(userId);
      request.setAttribute("DocumentList", list);
      return "Document";
   }
~~~

</div>
</details>

- 이 방식을 활용하면 아이디별 게시글 작성 수 대로 출력은 되었으나 페이징 기능을 구현하지않은 상태여서 보완이 필요한 시점이었습니다.
- 완성된 디자인에서 페이징 기능이 구현된 API를 전달받아 기존기능을 살려서 활용해보려 했으나
- js로 따로 빼둔 페이징 API의 내부에 값을 넣을수 없기 때문에 사용이 불가능하였습니다.
- 그래서 처음부터 다시 설계하여 ajax내부의 succes쪽에 페이징 api를 넣고 json 값을 가져오는 방식으로 해결 하였습니다. 

<details>
<summary><b>개선된 코드</b></summary>
<div markdown="1">

~~~java
/**
 * MemberVO 안에 들어간 profile = 로그인한 계정의 정보입니다.
 * dao.DocumentSelect(userId) = dao에 있는 metod 에 userId 활용합니다.
 * new Gson() = json 자료를 활용하기위해 import
 * return = 비동기 통신이기 때문에 리턴값이 없습니다.
 * out.print(json) 통신 성공시 succes 값에 들어갈 값을 넣어줍니다.
 */
  @WebServlet("/documentListAjax")
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      response.setContentType("text/html; charset=utf-8");
      response.setCharacterEncoding("uft-8");

      HttpSession session = request.getSession();
      MemberVO mvo = (MemberVO) session.getAttribute("profile");
      String userId = mvo.getuserId();

      DAO dao = new DAO();
      List<DocumentVO> listvo = dao.DocumentSelect(userId);

      Gson gson = new Gson();
      String json = gson.toJson(listvo);

      PrintWriter out = response.getWriter();
      out.print(json);
      return;
   }
~~~




</div>
</details>

</br>

## 5. 회고 / 느낀점
>프로젝트 개발 회고 글: https://zuminternet.github.io/ZUM-Pilot-integer/
