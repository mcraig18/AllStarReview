<cfset picture = "stars/stars_0.png">
<cfset avRating = AverageRating.AverageRating[1]>

<cfif avRating gte 0 && avRating lt 0.5>
	<cfset picture = "stars/stars_0-5.png">
<cfelseif avRating gte 0.5 && avRating lt 1>
	<cfset picture = "stars/stars_1.png">
<cfelseif avRating gte 1 && avRating lt 1.5>
	<cfset picture = "stars/stars_1-5.png">
<cfelseif avRating gte 1.5 && avRating lt 2>
	<cfset picture = "stars/stars_2.png">
<cfelseif avRating gte 2 && avRating lt 2.5>
	<cfset picture = "stars/stars_2-5.png">
<cfelseif avRating gte 2.5 && avRating lt 3>
	<cfset picture = "stars/stars_3.png">
<cfelseif avRating gte 3 && avRating lt 3.5>
	<cfset picture = "stars/stars_3-5.png">
<cfelseif avRating gte 3.5 && avRating lt 4>
	<cfset picture = "stars/stars_4.png">
<cfelseif avRating gte 4 && avRating lt 4.5>
	<cfset picture = "stars/stars_4-5.png">
<cfelseif avRating gte 4.5 && avRating lt 5>
	<cfset picture = "stars/stars_5.png">
</cfif>