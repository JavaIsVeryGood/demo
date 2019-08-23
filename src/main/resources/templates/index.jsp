<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <style>
   	html { margin:0; padding:0; font-size:62.5%; }
   	body { max-width:800px; min-width:300px; margin:0 auto; padding:20px 10px; font-size:14px; font-size:1.4em; }
   	h1 { font-size:1.8em; }
   	.demo { overflow:auto; border:1px solid silver; min-height:100px; }
   	</style>
   	<link rel="stylesheet" href="../../dist/themes/default/style.min.css" />
   </head>
   <body>


   	<h1>Inline data demo</h1>
   	<div id="data" class="demo"></div>

   <!-- 	<h1>Data format demo</h1>
   	<div id="frmt" class="demo"></div>

   	<h1>AJAX demo</h1>
   	<div id="ajax" class="demo"></div>

   	<h1>Lazy loading demo</h1>
   	<div id="lazy" class="demo"></div>

   	<h1>Callback function data demo</h1>
   	<div id="clbk" class="demo"></div> -->

   	<h1>Interaction and events demo</h1>
   	<button id="evts_button">select node with id 1</button> <em>either click the button or a node in the tree</em>
   	<div id="evts" class="demo"></div>

   	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   	<script src="../../dist/jstree.min.js"></script>

   	<script>
   	// html demo
   	$('#html').jstree();

   	// inline data demo
   	$('#data').jstree({
   		'core' : {
   			'data' :
   			[{"icon":"jstree-folder","id":"0","parent":"#","text":"OJ_FareReshopperRS"},{"icon":"jstree-folder","id":"1","parent":"0","text":"FltSegs"},{"icon":"jstree-folder","id":"2","parent":"0","text":"AirReservation"},{"icon":"jstree-file","id":"3","parent":"0","text":"TimeStamp"},{"icon":"jstree-file","id":"4","parent":"0","text":"Success"},{"icon":"jstree-folder","id":"5","parent":"0","text":"TXs"},{"icon":"jstree-file","id":"6","parent":"0","text":"xmlns"},{"icon":"jstree-file","id":"7","parent":"0","text":"Curr"},{"icon":"jstree-folder","id":"8","parent":"0","text":"FInfos"},{"icon":"jstree-folder","id":"9","parent":"0","text":"POS"},{"icon":"jstree-folder","id":"10","parent":"0","text":"Itins"},{"icon":"jstree-folder","id":"11","parent":"0","text":"BagInfos"},{"icon":"jstree-file","id":"12","parent":"0","text":"LeadPTC"},{"icon":"jstree-file","id":"13","parent":"0","text":"SessionID"},{"icon":"jstree-folder","id":"14","parent":"0","text":"Warnings"},{"icon":"jstree-folder","id":"15","parent":"0","text":"ODItins"},{"icon":"jstree-folder","id":"16","parent":"0","text":"ODs"},{"icon":"jstree-folder","id":"17","parent":"1","text":"FltSeg"},{"icon":"jstree-folder","id":"18","parent":"2","text":"AirItinerary"},{"icon":"jstree-file","id":"19","parent":"2","text":"numProcessedPassengers"},{"icon":"jstree-folder","id":"20","parent":"2","text":"Ticketing"},{"icon":"jstree-folder","id":"21","parent":"2","text":"BookingReferenceID"},{"icon":"jstree-file","id":"22","parent":"2","text":"Historic"},{"icon":"jstree-file","id":"23","parent":"2","text":"BookingStatus"},{"icon":"jstree-folder","id":"24","parent":"2","text":"TravelerInfo"},{"icon":"jstree-folder","id":"25","parent":"2","text":"PriceInfo"},{"icon":"jstree-folder","id":"26","parent":"5","text":"TX"},{"icon":"jstree-folder","id":"27","parent":"8","text":"FInfo"},{"icon":"jstree-folder","id":"28","parent":"9","text":"Source"},{"icon":"jstree-folder","id":"29","parent":"10","text":"Itin"},{"icon":"jstree-folder","id":"30","parent":"11","text":"BagAllows"},{"icon":"jstree-folder","id":"31","parent":"11","text":"PceInfos"},{"icon":"jstree-folder","id":"32","parent":"11","text":"PceTypes"},{"icon":"jstree-folder","id":"33","parent":"14","text":"Warning"},{"icon":"jstree-folder","id":"34","parent":"15","text":"ODItin"},{"icon":"jstree-folder","id":"35","parent":"16","text":"OD"},{"icon":"jstree-file","id":"36","parent":"17","text":"Arr"},{"icon":"jstree-file","id":"37","parent":"17","text":"EquipType"},{"icon":"jstree-file","id":"38","parent":"17","text":"OpAir"},{"icon":"jstree-file","id":"39","parent":"17","text":"Mileage"},{"icon":"jstree-file","id":"40","parent":"17","text":"ArrDateTime"},{"icon":"jstree-file","id":"41","parent":"17","text":"OpFltNum"},{"icon":"jstree-file","id":"42","parent":"17","text":"Duration"},{"icon":"jstree-file","id":"43","parent":"17","text":"ArrTerminal"},{"icon":"jstree-file","id":"44","parent":"17","text":"Dep"},{"icon":"jstree-file","id":"45","parent":"17","text":"DepTerminal"},{"icon":"jstree-file","id":"46","parent":"17","text":"MktgAir"},{"icon":"jstree-file","id":"47","parent":"17","text":"StopQty"},{"icon":"jstree-file","id":"48","parent":"17","text":"DepDateTime"},{"icon":"jstree-file","id":"49","parent":"17","text":"Stops"},{"icon":"jstree-file","id":"50","parent":"17","text":"ID"},{"icon":"jstree-file","id":"51","parent":"17","text":"MktgFltNum"},{"icon":"jstree-folder","id":"52","parent":"18","text":"OriginDestinationOptions"},{"icon":"jstree-file","id":"53","parent":"18","text":"DirectionInd"},{"icon":"jstree-file","id":"54","parent":"20","text":"FormAndSerialNumber"},{"icon":"jstree-file","id":"55","parent":"20","text":"AirlineAccountingCode"},{"icon":"jstree-file","id":"56","parent":"20","text":"DateOfIssue"},{"icon":"jstree-file","id":"57","parent":"20","text":"TravelerRefNumber"},{"icon":"jstree-file","id":"58","parent":"20","text":"IATANumber"},{"icon":"jstree-file","id":"59","parent":"20","text":"FlightSegmentRefNumber"},{"icon":"jstree-file","id":"60","parent":"20","text":"eTicketNumber"},{"icon":"jstree-file","id":"61","parent":"20","text":"TicketType"},{"icon":"jstree-file","id":"62","parent":"20","text":"PassengerTypeCode"},{"icon":"jstree-file","id":"63","parent":"20","text":"PseudoCityCode"},{"icon":"jstree-file","id":"64","parent":"20","text":"PlatingCarrier"},{"icon":"jstree-file","id":"65","parent":"24","text":"AllTravellerIncl"},{"icon":"jstree-folder","id":"66","parent":"24","text":"AirTraveler"},{"icon":"jstree-folder","id":"67","parent":"25","text":"PTC_FareBreakdowns"},{"icon":"jstree-folder","id":"68","parent":"25","text":"ItinTotalFare"},{"icon":"jstree-file","id":"69","parent":"25","text":"PricingSource"},{"icon":"jstree-file","id":"70","parent":"26","text":"Amt"},{"icon":"jstree-file","id":"71","parent":"26","text":"ID"},{"icon":"jstree-file","id":"72","parent":"26","text":"Code"},{"icon":"jstree-file","id":"73","parent":"27","text":"Arr"},{"icon":"jstree-file","id":"74","parent":"27","text":"Type"},{"icon":"jstree-file","id":"75","parent":"27","text":"Cabin"},{"icon":"jstree-file","id":"76","parent":"27","text":"FltSegID"},{"icon":"jstree-file","id":"77","parent":"27","text":"Airline"},{"icon":"jstree-file","id":"78","parent":"27","text":"RBD"},{"icon":"jstree-file","id":"79","parent":"27","text":"FBC"},{"icon":"jstree-file","id":"80","parent":"27","text":"ID"},{"icon":"jstree-file","id":"81","parent":"27","text":"RBDQty"},{"icon":"jstree-file","id":"82","parent":"27","text":"Dep"},{"icon":"jstree-file","id":"83","parent":"28","text":"Locale"},{"icon":"jstree-file","id":"84","parent":"28","text":"AirportCode"},{"icon":"jstree-file","id":"85","parent":"28","text":"AgentDutyCode"},{"icon":"jstree-file","id":"86","parent":"28","text":"Channel"},{"icon":"jstree-file","id":"87","parent":"28","text":"AirlineVendorID"},{"icon":"jstree-file","id":"88","parent":"28","text":"PseudoCityCode"},{"icon":"jstree-file","id":"89","parent":"28","text":"ISOCurrency"},{"icon":"jstree-file","id":"90","parent":"28","text":"ISOCountry"},{"icon":"jstree-folder","id":"91","parent":"28","text":"RequestorID"},{"icon":"jstree-folder","id":"92","parent":"29","text":"PI"},{"icon":"jstree-file","id":"93","parent":"29","text":"ID"},{"icon":"jstree-folder","id":"94","parent":"29","text":"ODItins"},{"icon":"jstree-folder","id":"95","parent":"30","text":"BagAllow"},{"icon":"jstree-folder","id":"96","parent":"31","text":"PceInfo"},{"icon":"jstree-folder","id":"97","parent":"32","text":"PceType"},{"icon":"jstree-file","id":"98","parent":"33","text":"Type"},{"icon":"jstree-file","id":"99","parent":"33","text":"content"},{"icon":"jstree-folder","id":"100","parent":"34","text":"FltSegs"},{"icon":"jstree-folder","id":"101","parent":"34","text":"PI"},{"icon":"jstree-file","id":"102","parent":"34","text":"Duration"},{"icon":"jstree-file","id":"103","parent":"34","text":"ID"},{"icon":"jstree-file","id":"104","parent":"34","text":"IDX"},{"icon":"jstree-file","id":"105","parent":"35","text":"Arr"},{"icon":"jstree-file","id":"106","parent":"35","text":"IDX"},{"icon":"jstree-file","id":"107","parent":"35","text":"Dep"},{"icon":"jstree-file","id":"108","parent":"35","text":"Date"},{"icon":"jstree-folder","id":"109","parent":"52","text":"OriginDestinationOption"},{"icon":"jstree-folder","id":"110","parent":"66","text":"PersonName"},{"icon":"jstree-folder","id":"111","parent":"66","text":"CitizenCountryName"},{"icon":"jstree-folder","id":"112","parent":"66","text":"TravelerRefNumber"},{"icon":"jstree-file","id":"113","parent":"66","text":"OJ_SuperPNR_RPH"},{"icon":"jstree-file","id":"114","parent":"66","text":"PassengerTypeCode"},{"icon":"jstree-folder","id":"115","parent":"66","text":"Document"},{"icon":"jstree-file","id":"116","parent":"66","text":"BirthDate"},{"icon":"jstree-folder","id":"117","parent":"66","text":"CustLoyalty"},{"icon":"jstree-folder","id":"118","parent":"67","text":"PTC_FareBreakdown"},{"icon":"jstree-folder","id":"119","parent":"68","text":"TotalFare"},{"icon":"jstree-folder","id":"120","parent":"68","text":"Taxes"},{"icon":"jstree-folder","id":"121","parent":"68","text":"BaseFare"},{"icon":"jstree-folder","id":"122","parent":"68","text":"EquivFare"},{"icon":"jstree-folder","id":"123","parent":"91","text":"CompanyName"},{"icon":"jstree-file","id":"124","parent":"91","text":"ID"},{"icon":"jstree-file","id":"125","parent":"92","text":"PlatAir"},{"icon":"jstree-file","id":"126","parent":"92","text":"Suppl"},{"icon":"jstree-folder","id":"127","parent":"92","text":"PTC_FBs"},{"icon":"jstree-folder","id":"128","parent":"92","text":"PI_Diff"},{"icon":"jstree-file","id":"129","parent":"92","text":"BFAmt"},{"icon":"jstree-file","id":"130","parent":"92","text":"PIIDs"},{"icon":"jstree-file","id":"131","parent":"92","text":"Pri"},{"icon":"jstree-file","id":"132","parent":"92","text":"TFAmt"},{"icon":"jstree-file","id":"133","parent":"92","text":"ID"},{"icon":"jstree-file","id":"134","parent":"92","text":"TXsAmt"},{"icon":"jstree-folder","id":"135","parent":"94","text":"ID"},{"icon":"jstree-file","id":"136","parent":"95","text":"TPces"},{"icon":"jstree-file","id":"137","parent":"95","text":"Type"},{"icon":"jstree-file","id":"138","parent":"95","text":"WgtUnit"},{"icon":"jstree-file","id":"139","parent":"95","text":"Wgt"},{"icon":"jstree-file","id":"140","parent":"95","text":"PceInfoID"},{"icon":"jstree-file","id":"141","parent":"95","text":"ID"},{"icon":"jstree-folder","id":"142","parent":"95","text":"PceTypeIDs"},{"icon":"jstree-file","id":"143","parent":"96","text":"DimUnit"},{"icon":"jstree-file","id":"144","parent":"96","text":"Wid"},{"icon":"jstree-file","id":"145","parent":"96","text":"Hgt"},{"icon":"jstree-file","id":"146","parent":"96","text":"Len"},{"icon":"jstree-file","id":"147","parent":"96","text":"ID"},{"icon":"jstree-file","id":"148","parent":"97","text":"ID"},{"icon":"jstree-file","id":"149","parent":"97","text":"Name"},{"icon":"jstree-folder","id":"150","parent":"100","text":"ID"},{"icon":"jstree-file","id":"151","parent":"101","text":"Suppl"},{"icon":"jstree-folder","id":"152","parent":"101","text":"PTC_FBs"},{"icon":"jstree-file","id":"153","parent":"101","text":"PIIDs"},{"icon":"jstree-file","id":"154","parent":"101","text":"Pri"},{"icon":"jstree-file","id":"155","parent":"101","text":"ID"},{"icon":"jstree-folder","id":"156","parent":"109","text":"FlightSegment"},{"icon":"jstree-file","id":"157","parent":"109","text":"BookingChannel"},{"icon":"jstree-file","id":"158","parent":"109","text":"RPH"},{"icon":"jstree-file","id":"159","parent":"110","text":"NamePrefix"},{"icon":"jstree-folder","id":"160","parent":"110","text":"GivenName"},{"icon":"jstree-folder","id":"161","parent":"110","text":"Surname"},{"icon":"jstree-file","id":"162","parent":"111","text":"Code"},{"icon":"jstree-file","id":"163","parent":"112","text":"RPH"},{"icon":"jstree-file","id":"164","parent":"115","text":"DocID"},{"icon":"jstree-file","id":"165","parent":"115","text":"ExpireDate"},{"icon":"jstree-file","id":"166","parent":"115","text":"DocType"},{"icon":"jstree-file","id":"167","parent":"117","text":"MembershipID"},{"icon":"jstree-file","id":"168","parent":"117","text":"RPH"},{"icon":"jstree-file","id":"169","parent":"117","text":"ProgramID"},{"icon":"jstree-file","id":"170","parent":"117","text":"LoyalLevel"},{"icon":"jstree-folder","id":"171","parent":"118","text":"FareBasisCodes"},{"icon":"jstree-folder","id":"172","parent":"118","text":"PassengerTypeQuantity"},{"icon":"jstree-folder","id":"173","parent":"118","text":"PassengerFare"},{"icon":"jstree-folder","id":"174","parent":"118","text":"TravelerRefNumber"},{"icon":"jstree-file","id":"175","parent":"119","text":"CurrencyCode"},{"icon":"jstree-file","id":"176","parent":"119","text":"Amount"},{"icon":"jstree-folder","id":"177","parent":"120","text":"Tax"},{"icon":"jstree-file","id":"178","parent":"121","text":"CurrencyCode"},{"icon":"jstree-file","id":"179","parent":"121","text":"Amount"},{"icon":"jstree-file","id":"180","parent":"122","text":"CurrencyCode"},{"icon":"jstree-file","id":"181","parent":"122","text":"Amount"},{"icon":"jstree-file","id":"182","parent":"123","text":"CompanyShortName"},{"icon":"jstree-file","id":"183","parent":"123","text":"Division"},{"icon":"jstree-file","id":"184","parent":"123","text":"Code"},{"icon":"jstree-folder","id":"185","parent":"127","text":"PTC_FB"},{"icon":"jstree-file","id":"186","parent":"128","text":"BFAmt"},{"icon":"jstree-file","id":"187","parent":"128","text":"TFAmt"},{"icon":"jstree-file","id":"188","parent":"128","text":"TFAdjAmt"},{"icon":"jstree-file","id":"189","parent":"128","text":"BFAdjAmt"},{"icon":"jstree-file","id":"190","parent":"128","text":"ChgFee"},{"icon":"jstree-file","id":"191","parent":"128","text":"TXsAmt"},{"icon":"jstree-file","id":"192","parent":"142","text":"ID"},{"icon":"jstree-folder","id":"193","parent":"152","text":"PTC_FB"},{"icon":"jstree-file","id":"194","parent":"156","text":"Status"},{"icon":"jstree-folder","id":"195","parent":"156","text":"DepartureAirport"},{"icon":"jstree-folder","id":"196","parent":"156","text":"ArrivalAirport"},{"icon":"jstree-folder","id":"197","parent":"156","text":"MarketingAirline"},{"icon":"jstree-file","id":"198","parent":"156","text":"StopQuantity"},{"icon":"jstree-file","id":"199","parent":"156","text":"ResBookDesigCode"},{"icon":"jstree-file","id":"200","parent":"156","text":"RPH"},{"icon":"jstree-file","id":"201","parent":"156","text":"CabinCode"},{"icon":"jstree-folder","id":"202","parent":"156","text":"Equipment"},{"icon":"jstree-file","id":"203","parent":"156","text":"DepartureDateTime"},{"icon":"jstree-file","id":"204","parent":"156","text":"ArrivalDateTime"},{"icon":"jstree-file","id":"205","parent":"156","text":"FlightNumber"},{"icon":"jstree-folder","id":"206","parent":"156","text":"OperatingAirline"},{"icon":"jstree-file","id":"207","parent":"160","text":"Simplified"},{"icon":"jstree-file","id":"208","parent":"160","text":"content"},{"icon":"jstree-file","id":"209","parent":"161","text":"Simplified"},{"icon":"jstree-file","id":"210","parent":"161","text":"content"},{"icon":"jstree-folder","id":"211","parent":"171","text":"FareBasisCode"},{"icon":"jstree-file","id":"212","parent":"172","text":"Quantity"},{"icon":"jstree-file","id":"213","parent":"172","text":"Code"},{"icon":"jstree-folder","id":"214","parent":"173","text":"TotalFare"},{"icon":"jstree-folder","id":"215","parent":"173","text":"Taxes"},{"icon":"jstree-folder","id":"216","parent":"173","text":"BaseFare"},{"icon":"jstree-file","id":"217","parent":"173","text":"UnstructuredFareCalc"},{"icon":"jstree-file","id":"218","parent":"174","text":"RPH"},{"icon":"jstree-file","id":"219","parent":"177","text":"CurrencyCode"},{"icon":"jstree-file","id":"220","parent":"177","text":"TaxCode"},{"icon":"jstree-file","id":"221","parent":"177","text":"Amount"},{"icon":"jstree-folder","id":"222","parent":"185","text":"PTC_FB_Diff"},{"icon":"jstree-file","id":"223","parent":"185","text":"BFAmt"},{"icon":"jstree-file","id":"224","parent":"185","text":"TFAmt"},{"icon":"jstree-file","id":"225","parent":"185","text":"Qty"},{"icon":"jstree-file","id":"226","parent":"185","text":"BagAllowIDs"},{"icon":"jstree-file","id":"227","parent":"185","text":"ID"},{"icon":"jstree-file","id":"228","parent":"185","text":"FInfoIDs"},{"icon":"jstree-file","id":"229","parent":"185","text":"TXIDs"},{"icon":"jstree-file","id":"230","parent":"185","text":"Code"},{"icon":"jstree-file","id":"231","parent":"185","text":"TXsAmt"},{"icon":"jstree-file","id":"232","parent":"193","text":"Qty"},{"icon":"jstree-file","id":"233","parent":"193","text":"ID"},{"icon":"jstree-file","id":"234","parent":"193","text":"FInfoIDs"},{"icon":"jstree-file","id":"235","parent":"193","text":"Code"},{"icon":"jstree-file","id":"236","parent":"195","text":"LocationCode"},{"icon":"jstree-file","id":"237","parent":"195","text":"Terminal"},{"icon":"jstree-file","id":"238","parent":"196","text":"LocationCode"},{"icon":"jstree-file","id":"239","parent":"196","text":"Terminal"},{"icon":"jstree-file","id":"240","parent":"197","text":"Code"},{"icon":"jstree-file","id":"241","parent":"202","text":"AirEquipType"},{"icon":"jstree-file","id":"242","parent":"206","text":"FlightNumber"},{"icon":"jstree-file","id":"243","parent":"206","text":"Code"},{"icon":"jstree-file","id":"244","parent":"211","text":"SegmentRPH"},{"icon":"jstree-file","id":"245","parent":"211","text":"content"},{"icon":"jstree-file","id":"246","parent":"214","text":"CurrencyCode"},{"icon":"jstree-file","id":"247","parent":"214","text":"Amount"},{"icon":"jstree-folder","id":"248","parent":"215","text":"Tax"},{"icon":"jstree-file","id":"249","parent":"216","text":"CurrencyCode"},{"icon":"jstree-file","id":"250","parent":"216","text":"Amount"},{"icon":"jstree-file","id":"251","parent":"222","text":"BFAmt"},{"icon":"jstree-file","id":"252","parent":"222","text":"TFAmt"},{"icon":"jstree-file","id":"253","parent":"222","text":"TFAdjAmt"},{"icon":"jstree-file","id":"254","parent":"222","text":"CanFee"},{"icon":"jstree-file","id":"255","parent":"222","text":"BFAdjAmt"},{"icon":"jstree-file","id":"256","parent":"222","text":"TXsAmt"},{"icon":"jstree-file","id":"257","parent":"248","text":"CurrencyCode"},{"icon":"jstree-file","id":"258","parent":"248","text":"TaxCode"},{"icon":"jstree-file","id":"259","parent":"248","text":"Amount"},{"icon":"jstree-file","id":"260","parent":"96","text":"WgtPPUnit"},{"icon":"jstree-file","id":"261","parent":"96","text":"WgtPP"},{"icon":"jstree-file","id":"262","parent":"66","text":"Age"},{"icon":"jstree-folder","id":"263","parent":"35","text":"AltDate"},{"icon":"jstree-file","id":"264","parent":"263","text":"Date"},{"icon":"jstree-folder","id":"265","parent":"21","text":"CompanyName"},{"icon":"jstree-file","id":"266","parent":"265","text":"Code"},{"icon":"jstree-file","id":"267","parent":"21","text":"ID"}]


   			/*{"id":"1","parent":"#","text":"root"},
   			{"id":"2","parent":"1","text":"child1","icon" : "jstree-file"},
   			{"id":"3","parent":"1","text":"child2"}*/
   				/*{ "text" : "Root node", "children" : [
   						{ "text" : "Child node 1" },
   						{ "text" : "Child node 2" }
   				]}*/

   		}
   	});

   	// data format demo
   	$('#frmt').jstree({
   		'core' : {
   			'data' : [
   				{
   					"text" : "Root node",
   					"state" : { "opened" : true },
   					"children" : [
   						{
   							"text" : "Child node 1",
   							"state" : { "selected" : true },
   							"icon" : "jstree-file"
   						},
   						{ "text" : "Child node 2", "state" : { "disabled" : true } }
   					]
   				}
   			]
   		}
   	});

   	// ajax demo
   	$('#ajax').jstree({
   		'core' : {
   			'data' : {
   				"url" : "root.json",
   				"dataType" : "json" // needed only if you do not supply JSON headers
   			}
   		}
   	});

   	// lazy demo
   	$('#lazy').jstree({
   		'core' : {
   			'data' : {
   				"url" : "www.jstree.com/fiddle/?lazy",
   				"data" : function (node) {
   					return { "id" : node.id };
   				}
   			}
   		}
   	});

   	// data from callback
   	$('#clbk').jstree({
   		'core' : {
   			'data' : function (node, cb) {
   				if(node.id === "#") {
   					cb([{"text" : "Root", "id" : "1", "children" : true}]);
   				}
   				else {
   					cb(["Child"]);
   				}
   			}
   		}
   	});

   	// interaction and events
   	$('#evts_button').on("click", function () {
   		var instance = $('#evts').jstree(true);
   		instance.deselect_all();
   		instance.select_node('1');
   	});
   	$('#evts')
   		.on("changed.jstree", function (e, data) {
   			if(data.selected.length) {
   				alert('The selected node is: ' + data.instance.get_node(data.selected[0]).text);
   			}
   		})
   		.jstree({
   			'core' : {
   				'multiple' : false,
   				'data' : [
   					{ "text" : "Root node", "children" : [
   							{ "text" : "Child node 1", "id" : 1 },
   							{ "text" : "Child node 2" }
   					]}
   				]
   			}
   		});
   	</script>
   </body>
   </html>
