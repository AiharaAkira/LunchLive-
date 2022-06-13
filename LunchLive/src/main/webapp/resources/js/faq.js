$(document).ready(function () {



   $("li.faq_question").click(function () {

        $(this).next().toggle("fast");

    });

   /* $("li.faq_question").mouseover(function () {

        $(this).next().toggle("fast");
    });*/



});

