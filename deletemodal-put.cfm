<cfquery result="DeleteResult" datasource="AllStarReview">
    DELETE FROM Product
    WHERE Id = '#FORM.id#'
</cfquery>

<p>
    System successfully deleted a record.
    <input type="button" name="CloseButton" value="Close" onClick="ColdFusion.Window.destroy('Window1',true)">
</p>