<cfif #FORM.id# gt 0>
    <cfquery result="UpdateResult" datasource="AllStarReview">
        UPDATE Product
        SET Name = '#FORM.name#', ProductNumber = '#FORM.productNumber#', Description = '#FORM.description#', StandardCost = #FORM.price#
        WHERE Id = #FORM.id#
    </cfquery>
<cfelse>
    <cfquery result="InsertResult" datasource="AllStarReview">
        INSERT INTO Product
        (
            Name, ProductNumber, Description, StandardCost, ListPrice
        )
        VALUES
        (
            <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.name#" />,
            <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.productNumber#" />,
            <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#FORM.description#" />,
            <cfqueryparam cfsqltype="CF_SQL_DECIMAL" value="#FORM.price#" />,
            <cfqueryparam cfsqltype="CF_SQL_DECIMAL" value="#FORM.price#" />
        )          
    </cfquery>
</cfif>

<p>
    System successfully <cfoutput>#FORM.page#</cfoutput> a record.
    <input type="button" name="CloseButton" value="Close" onClick="ColdFusion.Window.destroy('Window1',true)">
</p>

