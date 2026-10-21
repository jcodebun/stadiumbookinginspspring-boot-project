<%@page import="java.text.DateFormat"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page import="java.util.Date"%>

<body class="bg-image bgimage" >
<section class="vh-100 gradient-custom ">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
           <%@include file="businessMessage.jsp" %>
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Ticket Booking</h3>
            
             
            <sf:form method="post" action="${pageContext.request.contextPath}/addBooking" modelAttribute="form">
            <sf:input type="hidden" id="id" class="form-control form-control-lg" path="id" name="id" value="${form.id}"/>
            <sf:input type="hidden" id="stadium_id" class="form-control form-control-lg" path="stadium_id" name="stadium_id" value="${stadium.id}"/>
              <div class="row">
        
                <div class="col-md-6 mb-4">
                
                  <div class="form-outline">
                  <s:bind path="stadiumName">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="stadiumName" class="form-control form-control-lg" path="stadiumName" value="${stadium.stadiumName}" readonly="true"/>
                    <label class="form-label" for="trainNumber">Stadium Name</label>
                  </s:bind>
                  </div>
               
                </div>
                
              </div>


              <div class="row">
                
           
                <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="firstName">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="firstName" class="form-control form-control-lg" path="firstName" value="${user.firstName}" readonly="true"/>
                    <label class="form-label" for="firstName">First Name</label>
                  </div>
					</s:bind>
                </div> 
                
                <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="lastName">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="lastName" class="form-control form-control-lg" path="lastName" value="${user.lastName}" readonly="true"/>
                    <label class="form-label" for="lastName">Last Name</label>
                  </div>
					</s:bind>
                </div>
                
                 <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="email">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="email" id="email" class="form-control form-control-lg" path="email" value="${user.email}" readonly="true"/>
                    <label class="form-label" for="email">email</label>
                  </div>
					</s:bind>
                </div>
                
                    <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="contact">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="contact" id="email" class="form-control form-control-lg" path="contact" value="${user.phoneNumber}" readonly="true"/>
                    <label class="form-label" for="contact">contact</label>
                  </div>
					</s:bind>
                </div>
                
                 <div class="col-md-6 mb-4 pb-2">
                 <s:bind path="numberOfTicket">
                  <div class="form-outline">
                  <font color="red" style="font-size: 15px"><sf:errors path="${status.expression}" /></font>
                    <sf:input type="text" id="numberOfTicket" class="form-control form-control-lg" path="numberOfTicket" />
                    <label class="form-label" for="numberOfTicket">Number Of Ticket</label>
                  </div>
					</s:bind>
                </div>
                
                
              </div>
 

                <c:choose>
  				<c:when test="${form.id>0}">
   				  <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Pay and Book" />
              </div>   
 			</c:when>

  			<c:otherwise>
             <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Pay and Book" />
              </div>
  			</c:otherwise>
			</c:choose> 

           </sf:form>
          
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>