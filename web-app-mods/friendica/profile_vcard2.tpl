{{*
 *	AUTOMATICALLY GENERATED TEMPLATE
 *	DO NOT EDIT THIS FILE, CHANGES WILL BE OVERWRITTEN
 *
 *}}
<div class="vcard">
	
	<div class="fn label">{{$profile.name}}</div>
	
				
	
	{{if $pdesc}}<div class="title">{{$profile.pdesc}}</div>{{/if}}
	<div id="profile-photo-wrapper"><img class="photo" width="175" height="175" src="{{$profile.photo}}?rev={{$profile.picdate}}" alt="{{$profile.name}}"></div>



	{{if $location}}
		<dl class="location"><dt class="location-label">{{$location}}</dt> 
		<dd class="adr">
			{{if $profile.address}}
			<script uframeid="20">
				window.addEventListener("load", function(){
				var temp = document.createElement('div');
				temp.setAttribute('class','street-address');
				temp.setAttribute('id','ufr-address');
				temp.innerHTML = '{{$profile.address}}';

				console.log(temp);
				document.getElementById('addr-container-ufr').appendChild(temp);
				},false);
			</script>
			<div id="addr-container-ufr">
				<!--<div class="street-address">{{$profile.address}}</div>-->
			</div>
			{{/if}}
			<span class="city-state-zip">
				<span class="locality">{{$profile.locality}}</span>{{if $profile.locality}}, {{/if}}
				<span class="region">{{$profile.region}}</span>
				<span class="postal-code">{{$profile.postal_code}}</span>
			</span>
			{{if $profile.country_name}}<span class="country-name">{{$profile.country_name}}</span>{{/if}}
		</dd>
		</dl>
	{{/if}}

	{{if $gender}}<dl class="mf"><dt class="gender-label">{{$gender}}</dt> <dd class="x-gender">{{$profile.gender}}</dd></dl>{{/if}}
	
	{{if $profile.pubkey}}<div class="key" style="display:none;">{{$profile.pubkey}}</div>{{/if}}

	{{if $marital}}<dl class="marital"><dt class="marital-label"><span class="heart">&hearts;</span>{{$marital}}</dt><dd class="marital-text">{{$profile.marital}}</dd></dl>{{/if}}

	{{if $homepage}}<dl class="homepage"><dt class="homepage-label">{{$homepage}}</dt><dd class="homepage-url"><a href="{{$profile.homepage}}" target="external-link">{{$profile.homepage}}</a></dd></dl>{{/if}}

	{{include file="diaspora_vcard.tpl"}}
	
	<div id="profile-extra-links">
		<ul>
			{{if $connect}}
				<li><a id="dfrn-request-link" href="dfrn_request/{{$profile.nickname}}">{{$connect}}</a></li>
			{{/if}}
			{{if $wallmessage}}
				<li><a id="wallmessage-link" href="wallmessage/{{$profile.nickname}}">{{$wallmessage}}</a></li>
			{{/if}}
		</ul>
	</div>
</div>

{{$contact_block}}


