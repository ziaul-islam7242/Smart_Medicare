<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title><spring:message code="title.app"/></title>

<%@ include file="css.jsp"%>

</head>
<%@ include file="headerAndSideManu.jsp"%>


        <div class="wrapper">
            <div class="container">

               
                <!-- Page-Title -->
                <h3 class="text-success counter">${title}</h3>
                 	           <a href="${pageContext.request.contextPath}/product/createproductcategory.do" class="btn btn-primary waves-effect waves-light m-t-10">
					               Create Category
					              </a>  
					    
  				
                <div class="row">
               
               
                    <div class="col-sm-12">
  
                        <div class="card-box">
                       <table id="productcategory" class="table table-bordered table-hover">
								<thead >
									<tr>
										<th>Category Name</th>
										<th>Description</th>
										<th>Status</th>
										<th>Action</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${activityReport}" var="report">
										<tr>
												<td>${report.categoryName}</td>
												<td>${report.categoryDescription}</td>
												<td>${report.catstatus}</td>
												<td>${report.catstatus}</td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
							
                             </div>
                    </div>
                    
                </div>
                
                    

            
                </div>
                </div>
  
  
  <div id="panel-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content p-0 b-0">
                                        <div class="panel panel-color panel-primary">
                                            <div class="panel-heading">
                                                <button type="button" class="close m-t-5" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h3 class="panel-title">Create Category</h3>
                                            </div>
                                            <div class="panel-body">
                                 

           
                                   <form:form action="${pageContext.request.contextPath}/product/createproductcategory.Do" method="post"	commandName="productVO">
                                   
                                       <div class="form-group">
                                           </div> 
									    <label for="inputdefault">Category Name</label>
									    
  								<form:input type="text" class="form-control" path="categoryName"
								placeholder="Category Name" />	
								
									  
  									<div class="form-group">
									  <label for="sel1">Status</label>
									  <form:select class="form-control" path="catstatus">
									    <option value="1">Active</option>
									    <option value="0">Disable</option>
									  </form:select>
								</div>	
								
                                            
                                            
  									<div class="form-group">
									    <label for="inputdefault">Description</label>
									    <form:input type="text" class="form-control" path="categoryDescription" ></form:input>
									  </div>
  								
  									<input type="submit" class="btn btn-primary" value="Save" />	
  									
  									
        						</form:form>
                                       </div>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>              
  
<%@ include file="javascript.jsp"%>
	 
</html>

   <script type="text/javascript">
            $(function () {
            	$('.table').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'print'
                    ]
                });
            });

        </script>
