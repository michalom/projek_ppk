var Application = {
	initApplication : function() {
		$(window).load('pageinit', '#hal-satu', function(){
			Application.initShowTim();
		})
		$(document).on('click', '#team', function(){
			var id_team = $(this).data('id_team');
			Application.initShowPosisi(id_team);
		})
		$(document).on('click', '#posisi', function(){
			var team = $(this).data('team');
			var id_posisi = $(this).data('posisi');
			Application.initShowPlayer(team, id_posisi);
		})
		$(document).on('click', '#player', function(){
			var id_player = $(this).data('id_player');
			Application.initShowProfil(id_player);
		})
	},

	initShowTim : function(){
		$.ajax({
			url : 'http://localhost/ppkproyek/web_tim.php',
			type : 'get',
			beforeSend : function() {
				$.mobile.loading('show', {
					text : 'Please wait while retrieveing data...',
					textVisible : true
				});
			},
			success : function(dataObject) {

				for (var i = 0; i < dataObject.length; i++) {
					var appendList = '<li><a href="#hal-dua?id_tim='+dataObject[i].ID+'" target="_self" id="team" data-id_team="'+
					dataObject[i].ID+'"><h2>'+dataObject[i].tim+'</h2><p></a></li>';
					$('#list-tim').append(appendList);
				}
				$('#list-tim').listview('refresh');
				
			},
			complete : function() {
				$.mobile.loading('hide');
			}
		});
	},

	initShowPosisi : function(id_team){
		$.ajax({
			url : 'http://localhost/ppkproyek/web_posisi.php?id_tim='+id_team,
			type : 'get',
			beforeSend : function() {
				$.mobile.loading('show', {
					text : 'Please wait while retriving data...',
					textVisible : true
				});
			},
			success : function(dataObject) {
				$('#list-posisi').empty();
				for (var i = 0; i < dataObject.length; i++) {
						var appendList = '<li><a href="#hal-tiga?id_tim='+dataObject[i].id_tim+'&id_posisi='
                        +dataObject[i].id_position+'"target="_self" id="posisi" data-posisi="'
                        +dataObject[i].id_position+'"data-team="'+id_team+'"><h2>'
                        +dataObject[i].posisi+'</h2></a></li>';
					$('#list-posisi').append(appendList);
				}
				$('#list-posisi').listview('refresh');
				
			},
			complete : function() {
				$.mobile.loading('hide');
            }
        });   
    },
    initShowPlayer : function(team, id_posisi){
		$.ajax({
			url : 'http://localhost/ppkproyek/web_player.php?id_tim='+team+'&id_posisi='+id_posisi,
			type : 'get',
			beforeSend : function() {
				$.mobile.loading('show', {
					text : 'Please wait while retrieveing data...',
					textVisible : true
				});
			},
			success : function(dataObject) {
					$('#list-pemain').empty();
				for (var i = 0; i < dataObject.length; i++) {
					var appendList = '<li><a href="#hal-empat?id='+dataObject[i].id_player+'" target="_self" id="player" data-id_player="'+
					dataObject[i].id_player+'"><h2>'+dataObject[i].nama+'</h2><p></a></li>';
					$('#list-pemain').append(appendList);
				}
				$('#list-pemain').listview('refresh');
				
			},
			complete : function() {
				$.mobile.loading('hide');
			}
		});
	},
	initShowProfil : function(id_player){
		$.ajax({
			url : 'http://localhost/ppkproyek/web_profil.php?id_player='+id_player,
			type : 'get',
			beforeSend : function() {
				$.mobile.loading('show', {
					text : 'Please wait while retrieveing data...',
					textVisible : true
				});
			},
			success : function(dataObject) {
				console.log(id_player);
					$('#p-nama, #p-nationality, #p-dob, #p-height, #p-weight, #p-tim, #p-posisi').empty();
					$('#p-nama').append('<b>Nama: </b>'+dataObject[0].nama);
					$('#p-nationality').append('<b>Nationality: </b>'+dataObject[0].nationality);
					$('#p-dob').append('<b>DOB: </b>'+dataObject[0].dob);
					$('#p-height').append('<b>Height: </b>'+dataObject[0].height);
					$('#p-weight').append('<b>Weight: </b>'+dataObject[0].weight);
					$('#p-tim').append('<b>Tim: </b>'+dataObject[0].tim);
					$('#p-posisi').append('<b>Posisi: </b>'+dataObject[0].posisi);
			},
			complete : function() {
				$.mobile.loading('hide');
			}
		});
	},
}