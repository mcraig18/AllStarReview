<table>
	<tr>
		<th>Name</th>
		<th>Product Number</th>
		<th>Description</th>
		<th>Rating</th>
		<th># Reviews</th>
		<th>Actions</th>
	</tr>
		
	<cfoutput query="ResultList">  
    	<tr>  
    		<td>#Name#</td>
    		<td>#ProductNumber#</td>  
    		<td>#Description#</td>  
    		<td>#AverageRating#</td>
    		<td><a href ='http://localhost:8500/AllStarReview/details.cfm?Id=#ID#'>#TotalRatings#</a></td>
    		<td><i class="fas fa-times-circle" onClick="ColdFusion.Window.create('Window1', 'Confirmation', 'deletemodal.cfm?Id=#ID#', {height:600,width:600,modal:true,closable:false,draggable:false,resizable:true,center:true,initshow:true,minheight:500,minwidth:500 })"><i class="fas fa-pencil-alt" onClick="ColdFusion.Window.create('Window1', 'Edit Product', 'addeditmodal.cfm?Page=Edit&Id=#ID#', {height:600,width:600,modal:true,closable:false,draggable:false,resizable:true,center:true,initshow:true,minheight:500,minwidth:500 })"></i></td>
  		</tr>  
 	</cfoutput> 
</table>