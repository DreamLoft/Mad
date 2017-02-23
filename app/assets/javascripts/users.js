$(document).ready(function(){
      $('#user_designation').change(function() {
            var a= $('#user_designation').find('option:selected').text();
            var b = $("#user_weight");


                  if (a == "Research Executive (RE)") {
                        b.val(0.75);
                  }
                  if (a == "Senior Research Executive (SRE)")  {
                        b.val(1.0);
                  }
                  if (a == "Associate Research Manager (AM)") {
                              b.val(1.5);
                        }
                  if (a == "Research Manager (RM)") {
                              b.val(2.0);
                  }
                  if (a == "Senior Research Manager (SRM)") {
                              b.val(3.0);
                  }
                  if (a == "Associate Vice President (AVP)") {
                              b.val(3.5);
                  }
                  if (a == "Vice President (VP)") {
                              b.val(4.0);
                  }
                  if (a == "Senior Vice President (SVP)") {
                              b.val(6.0);
                        }
                  if (a == "Executive Officer (CEO)")  {
                              b.val(8.0);
                  }
                  if (a == "Chief Operating Officer (COO)")  {
                              b.val(8.0);
                  }
                  if (a == "Director")  {
                              b.val(10.0);
                  }
                  if (a == "Operations Executive (OE)")  {
                              b.val(0.75);
                  }
                  if (a == "Senior Operations Executive (SOE)")  {
                              b.val(1.0);
                  }
                  if (a == "Associate Manager Operations (AMO)")  {
                              b.val(1.5);
                  }
                  if (a == "Manager Operations (MO)")  {
                              b.val(2.0);
                  }
                  if (a == "Senior Manager Operations (SMO)")  {
                              b.val(3.0);
                  }
      });
});
