<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

 
<style>
  #jb-container {
    margin: 10px auto;
    padding: 10px;
    border: 1px solid #bcbcbc;
  }
  #jb-header {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #bcbcbc;
    text-align: center;
  }
  #jb-content {
    padding: 20px;
    margin-bottom: 20px;
    border: 1px solid #bcbcbc;
  }
  #jb-sidebar {
    padding: 20px;
    margin-bottom: 20px;
    border: 1px solid #bcbcbc;
  }
  #jb-footer {
    padding: 20px;
    border: 1px solid #bcbcbc;
  }
  @media ( min-width: 481px ) {
    #jb-container {
      width: 940px;
    }
    #jb-content {
      width: 580px;
      float: center;
    }
    #jb-sidebar {
      width: 260px;
      float: right;
    }
    #jb-footer {
      clear: both;
    }
  }
    div {
        overflow-x: auto;
    }
    table {
        width: 100%;
        min-width: 200px;
    }
    td {
        padding: 10px;
        border: 1px solid #444444;
    }

    input[id="b"] {
        position: relative;
        top: 1.5px;
      }
      label[for="c"] {
        position: relative;
        top: -1.5px;
     }
    
    input {
        vertical-align: middle;
      }
      input.form-text {
        border: 1px solid #bcbcbc;
        height: 20px;
      }
      input.s1_form-text {
        border: 1px solid #bcbcbc;
        height: 20px;
        width: 10px;
      }
      input.img-button {
        background: url( "./123.jpg" ) no-repeat;
        border: none;
        width: 91px;
        height: 25px;
        cursor: pointer;
      }


</style>
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
      //getLotto
      //권한을 태우지 않기 위해서  egov-mcom-servlet.xml에 추가.  <mvc:exclude-mapping path="/lotto/*.do" />
      //LottoController 추가.
      // 접속 url : http://localhost:8080/mylotto/lotto/initLotto.do#
      
      $("#getLotto").on("click", function(){
         getLottoNum(); 
      });
  });
  
  ////cop/adb/selectAdbkList.do
  function getLottoNum() {

      $.ajax({
          url : "<c:url value='/lotto/getLottoNumber.do'/>", 
          type : "post",
          dataType : "json",
          data:{},  /* {ymd:vYmd}, */
          success : function(data){
              var result = data.result;
              var arrResult = result.split(",");
              
              for (var i = 0 ; i < 6 ; i++){
            	  $("#no"+i).val(arrResult[i]);
              }
          },
          error : function(data){
        	  alert(JSON.stringify(data.result));
          }
      });
  }

</script>
</head>
  <body>
    <div id="jb-container">
      <div id="jb-header">
        <h1>Lotto 당첨</h1>
      </div>
    <div>
            <table>
                <tr>
                    <td>제외번호</td>
                    <td><input type="text" class="form-text"></td>
                </tr>
                <tr>
          <td>포함번호</td>
          <td><input type="text" class="form-text"></td>
        </tr>
        <tr>
          <td rowspan=5>연속번호</td>
          <td>
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
            Ⅹ 
            <select>
              <option>1</option>
            </select>
            Ⅹ 
            <select>
              <option>1</option>
              <option>2</option>
            </select>  
          </td>
        </tr>
        <tr>
         <td>
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
            Ⅹ 
            <select>
              <option>10</option>
            </select>
            Ⅹ 
            <select>
              <option>1</option>
              <option>2</option>
            </select>  
          </td>
        </tr>
         <tr>
         <td>
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
            Ⅹ 
            <select>
              <option>20</option>
            </select>
            Ⅹ 
            <select>
              <option>1</option>
              <option>2</option>
            </select>  
          </td>
        </tr>
         <tr>
         <td>
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
            Ⅹ 
            <select>
              <option>30</option>
            </select>
            Ⅹ 
            <select>
              <option>1</option>
              <option>2</option>
            </select>  
          </td>
        </tr>
         <tr>
         <td>
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
            Ⅹ 
            <select>
              <option>40</option>
            </select>
            Ⅹ 
            <select>
              <option>1</option>
            </select>  
          </td>
        </tr>
         <tr>
          <td rowspan=2>최근5회</td>
          <td>
            <label for="a">(중복)</label>
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
            <input type="checkbox" id="a"> <label for="a">포함</label>
            <input type="checkbox" id="a"> <label for="a">제외</label>
          </td>
          <tr>
          <td>
            <label for="a">(미출)</label>
            <select>
              <option>1</option>
              <option>2</option>
              <option>3</option>
            </select>
            <input type="checkbox" id="a"> <label for="a">포함</label>
            <input type="checkbox" id="a"> <label for="a">제외</label>
          </td>
        </tr>
        <tr>
          <td>행운수</td>
          <td>
           <input type="checkbox" id="a"> <label for="a">포함</label>
          </td>
         </tr>  
        <tr>
          <td>구매금액</td>
          <td>
           <select>
              <option>1,000</option>
              <option>2,000</option>
              <option>3,000</option>
            </select>
          </td>
         </tr>  
         
        <tr>
          <td>등록번호</td>
          <td>
               <input type="text" id="no0" name="no0" value="" style="width: 40px"/>
               <input type="text" id="no1" name="no1" value="" style="width: 40px"/>
               <input type="text" id="no2" name="no2" value="" style="width: 40px"/>
               <input type="text" id="no3" name="no3" value="" style="width: 40px"/>
               <input type="text" id="no4" name="no4" value="" style="width: 40px"/>
               <input type="text" id="no5" name="no5" value="" style="width: 40px"/>
          </td>
         </tr>  
      </table>
        </div>
        
        <form>
        <div id="jb-header">
            <p>
            <input type="button" class="img-button">
            <a href="#" id="getLotto">Get Lotto</a>
            </p>
        </div>
   </form>
    </div>
  </body>
</html>