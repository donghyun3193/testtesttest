<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>
    <link rel="stylesheet" href="../../css/join.css">
    <script defer src ="../../js/join.js"></script>
</head>
<body style="overflow: auto">

	<jsp:include page="../../header.jsp"/>
    
    <main>
      <div class="main-container-outline"><!--메인 시작-->
          <div class="main-container">
              <div class="main-container-up">
                  <h1>회원가입</h1>
              </div>
              <div class="main-container-down">
                
                  <div class="main-container-down-section01"></div>

                  <div class="main-container-section">
                    <label class="main-label1">
                      이메일
                    </label>
                    <label>
                      <input type="emall" name="email" placeholder="이메일" value class="main-label1-input">
                    </label>

                    <div>
                      <button class="main-b1" name="emailAuth" type="button">
                        이메일 인증하기
                      </button>
                    </div>
                  </div>

                  <div class="main-container-section2">
                    <div class="main-c-s-d1">
                      <input type="emall" name="email" placeholder="인증번호" value class="main-label1-input2">
                      <div class="main-time" id="time"></div>
                      <button class="main-b3">확 인</button>
                    </div>
                  </div>

                  <div class="main-container-section">

                    <label class="main-label1">
                      닉네임
                    </label>
                    <div class="main-l1-d1">
                      다른 유저와 겹치지 않도록 입력해주세요. (2~15자)
                    </div>
                    <label>
                      <input type="nickname" name="nickname" placeholder="닉네임" value class="main-label1-input">
                    </label>

                  </div>

                  
                  <div class="main-container-section">

                    <label class="main-label1">
                      비밀번호
                    </label>
                    <div class="main-l1-d1">
                      영문, 숫자를 포함한 8~12자리의 비밀번호를 입력해주세요.
                    </div>
                    <label>
                      <input type="password" name="password" placeholder="비밀번호" value class="main-label1-input">
                    </label>

                  </div>

                  <div class="main-container-section">

                    <label class="main-label1">
                      비밀번호 확인
                    </label>
                    <div class="main-l1-d1">
                      비밀번호를 한 번 더 입력해 주세요.
                    </div>
                    <label>
                      <input type="password" name="password" placeholder="비밀번호 확인" value class="main-label1-input">
                    </label>
                  </div>

<!-- 카카오 API 시작 -->
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"
integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh" crossorigin="anonymous">
</script><!-- 자바스크립트 SDK를 불러오는 코드  -->
<div class="kakao-box">
<a  id="kakao-login-btn" href="javascript:loginWithKakao()">
<img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222"
  alt="카카오 로그인 버튼" class="kakao-img"/>
</a>

<p id="token-result"></p>
<button class="api-btn" onclick="requestUserInfo()" style="visibility:hidden">
사용자 정보 가져오기
</button>

</div>

<!-- 카카오 API 끝 -->


                  <div class="main-container-section">
                    <label class="main-label1">
                      약관동의
                    </label>
                    <hr>

                    <div class="main-c-s">
                      <input type="checkbox" value="false" class="main-checkbox">



<!-- 모달 창 들어 가는 부분 -->
                      <div class="modal">
                        <div class="modal_body">
                          <strong>
                            개인정보처리동의서
                          </strong>
                          <br>
                          <br>
<span class="modal_span">
&nbsp;오운완(이하 '회사'라고 합니다)은 개인정보보호법 등 관련 법령상의 개인정보보호 규정을 준수하며 귀하의 개인정보보호에 최선을 다하고 있습니다. 회사는 개인정보보호법에 근거하여 다음과 같은 내용으로 개인정보를 수집 및 처리하고자 합니다.
<br>
<br>


&nbsp;다음의 내용을 자세히 읽어보시고 모든 내용을 이해하신 후에 동의 여부를 결정해주시기 바랍니다.
<br>
<br>



제1조(개인정보 수집 및 이용 목적)
<br>
&nbsp;이용자가 제공한 모든 정보는 다음의 목적을 위해 활용하며, 목적 이외의 용도로는 사용되지 않습니다.
<br>
- 본인확인
<br>
<br>


제2조(개인정보 수집 및 이용 항목)
<br>
&nbsp;회사는 개인정보 수집 목적을 위하여 다음과 같은 정보를 수집합니다.
<br>
- 이메일
<br>
<br>

제3조(개인정보 보유 및 이용 기간)
<br>
&nbsp;수집한 개인정보는 수집·이용 동의일로부터  3년간  보관 및 이용합니다.
&nbsp;개인정보 보유기간의 경과, 처리목적의 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.
<br>
<br>


제4조(동의 거부 관리)
<br>
&nbsp;귀하는 본 안내에 따른 개인정보 수집·이용에 대하여 동의를 거부할 권리가 있습니다. 다만, 귀하가 개인정보 동의를 거부하시는 경우에 서비스 이용 일부 불가의 불이익이 발생할 수 있음을 알려드립니다.
<br>

&nbsp;본인은 위의 동의서 내용을 충분히 숙지하였으며,위와 같이 개인정보를 수집·이용하는데 동의합니다.
<br>
<br>
개인정보 수집 및 이용에 동의함
<br>
<br>
<br>
<br>


 성명 : 오운완 (서명 또는 인)
</span>
                        </div>
                      </div>
                      <button class="btn-open-popup">
                        개인정보수집 및 이용동의<p class="span-p">(필수)</p>
                      </button>

<!-- 모달 창 들어 가는 부분 끝 -->

                    </div>
                    
          
                  </div>

                  <div class="main-container-section">
                  <a href="../../main/project/main.html">
                    <button class="main-b2" name="emailAuth" type="button">
                      회원가입하기
                    </button>
                  </a>
                  </div>



              </div>
          </div>
      </div>
  </main>
    
	<jsp:include page="../../footer.jsp"/>
	
</body>
</html>