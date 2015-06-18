
        $(document).ready(function () {
            $('#profile').css('display', 'none');
            $('#messages').css('display', 'none');
            $('ul li').click(function () {
                $('#home').css('display', 'none');
                $('#profile').css('display', 'none');
                $('#messages').css('display', 'none');
                if ($(this).attr('id') == '1') $('#home').css('display', '');
                if ($(this).attr('id') == '2') $('#profile').css('display', '');
                if ($(this).attr('id') == '3') $('#messages').css('display', '');
            });

            $('#pagination1').smartpaginator({ totalrecords: 5, recordsperpage: 2, datacontainer: 'divs1', dataelement: 'div', initval: 0, next: 'Next', prev: 'Prev', first: 'First', last: 'Last', theme: 'green' });

            $('#pagination2').smartpaginator({ totalrecords: 5, recordsperpage: 3, datacontainer: 'divs2', dataelement: 'div', initval: 0, next: 'Next', prev: 'Prev', first: 'First', last: 'Last', theme: 'black' });

            $('#pagination').smartpaginator({ totalrecords: 5, recordsperpage: 2, datacontainer:'divs',dataelement:'div', next: 'Next', prev: 'Prev', first: 'First', last: 'Last', theme: 'red', controlsalways: true, onchange: function (newPage) {
            	
            }
            });

        });
       