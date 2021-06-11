jQuery(document).ready(function(){

    function getCookie(name) {
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
            return cookieValue;
    }
    
    var csrftoken = getCookie('csrftoken');

    function csrfSafeMethod(method) {
        // these HTTP methods do not require CSRF protection
        return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
    }

    $.ajaxSetup({
        beforeSend: function(xhr, settings) {
            if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
                xhr.setRequestHeader("X-CSRFToken", csrftoken);
            }
        }
    });

    // Выводим сообщение в соответствующий Alert bootstrap
    function displayCounterAlert(say, typeAlert, time){
        $('#successAlert').remove();
            $('form input[name="col_water"], form input[name="hot_water"]').val('');
            $('#counterBtn').before(`<div class="flex-fill  alert  alert-${typeAlert}  mt-3  mb-5" id="successAlert"><p>${say}</p></div>`);
            setTimeout(function(){
                $('#successAlert').remove();
            }, time);
    };

    //Ловим событие формы currentCount
    $('#currentCountBtn').on('click', function (e) {
        e.preventDefault();
        var mForm = $('#currentCountForm').serialize();
        console.log(mForm);
        $.ajax({
            type : 'POST',
            data: mForm,
            success: function (data) {
                say = `Данные успешно приняты!`;
                time = 15000;
                typeAlert = `success`;
                displayCounterAlert(say, typeAlert, time);
            },
            error: function (data) {
                say = `Что-то пошло не так! Попробуйте чуть позже!`;
                time = 15000;
                typeAlert = `danger`;
                displayCounterAlert(say, typeAlert, time);
            }
        });
    });

    //Ловим событие формы 2
    $('#recalcBtn').on('click', function (e) {
        e.preventDefault();
        var mForm = $('#recalcForm').serialize();
        console.log(mForm);
        $.ajax({
            type : 'POST',
            data: mForm,
            success: function (data) {
        	    console.log(data.responseText);
            },
            error: function (data) {
                console.log(data.responseText);
            }
        });
    });

    // USER_LIST
    //Ловим событие формы COUNTERFORM
    $('#counterBtn').on('click', function (e) {
        e.preventDefault();
        var mForm = $('#counterForm').serialize();
        $.ajax({
            type : 'POST',
            data: mForm,
            success: function (data) {
                say = `Данные успешно приняты!`;
                time = 15000;
                typeAlert = `success`;
                displayCounterAlert(say, typeAlert, time);
            },
            error: function (data) {
                say = `Что-то пошло не так! Попробуйте чуть позже!`;
                time = 15000;
                typeAlert = `danger`;
                displayCounterAlert(say, typeAlert, time);
            }
        });
    });
});
