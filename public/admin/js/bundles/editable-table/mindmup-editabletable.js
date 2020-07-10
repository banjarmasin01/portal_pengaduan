/*global $, window*/
let base_url = `${window.location.origin + '/' + window.location.pathname.split('/')[1]}`,
	token = $('meta[name="_token"]').attr('content');	
$.fn.editableTableWidget = function (options) {
	'use strict';
	return $(this).each(function () {
		var buildDefaultOptions = function () {
				var opts = $.extend({}, $.fn.editableTableWidget.defaultOptions);
				opts.editor = opts.editor.clone();
				return opts;
			},
			activeOptions = $.extend(buildDefaultOptions(), options),
			ARROW_LEFT = 37, ARROW_UP = 38, ARROW_RIGHT = 39, ARROW_DOWN = 40, ENTER = 13, ESC = 27, TAB = 9,
			element = $(this),
			editor = activeOptions.editor.css('position', 'absolute').hide().appendTo(element.parent()),
			active,
			showEditor = function (select) {
				active = element.find('td:focus');				
				if (active.length) {
					editor.val(active.text().trim())
						.removeClass('error')
						.show()
						.offset(active.offset())
						.css(active.css(activeOptions.cloneProperties))
						.width(active.width())
						.height(active.height())
						.focus();
					if (select) {
						editor.select();
					}
				}
			},
			setActiveText = function () {
				var text = editor.val(),
					evt = $.Event('change'),
					originalContent;					
				if (active.text() === text || editor.hasClass('error')) {
					return true;
				}
				originalContent = active.html();				
				active.text(text).trigger(evt, text);
				if (evt.result === false) {
					active.html(originalContent);
				}
			},
			movement = function (element, keycode) {
				if (keycode === ARROW_RIGHT) {
					return element.next('td');
				} else if (keycode === ARROW_LEFT) {
					return element.prev('td');
				} else if (keycode === ARROW_UP) {
					return element.parent().prev().children().eq(element.index());
				} else if (keycode === ARROW_DOWN) {
					return element.parent().next().children().eq(element.index());
				}
				return [];
			};
		editor.blur(function () {
			setActiveText();
			editor.hide();
		}).keydown(function (e) {
			if (e.which === ENTER) {
				setActiveText();
				editor.hide();
				active.focus();
				e.preventDefault();
				e.stopPropagation();
			} else if (e.which === ESC) {
				editor.val(active.text());
				e.preventDefault();
				e.stopPropagation();
				editor.hide();
				active.focus();
			} else if (e.which === TAB) {
				active.focus();
			} else if (this.selectionEnd - this.selectionStart === this.value.length) {
				var possibleMove = movement(active, e.which);
				if (possibleMove.length > 0) {
					possibleMove.focus();
					e.preventDefault();
					e.stopPropagation();
				}
			}
		})
		.on('input paste', function () {
			var evt = $.Event('validate');
			active.trigger(evt, editor.val());
			if (evt.result === false) {
				editor.addClass('error');
			} else {
				editor.removeClass('error');
			}
		});
		// element.on('click keypress dblclick', showEditor)
		// .css('cursor', 'pointer')
		// .keydown(function (e) {
		// 	var prevent = true,
		// 		possibleMove = movement($(e.target), e.which);
		// 	if (possibleMove.length > 0) {
		// 		possibleMove.focus();
		// 	} else if (e.which === ENTER) {
		// 		showEditor(false);
		// 	} else if (e.which === 17 || e.which === 91 || e.which === 93) {
		// 		showEditor(true);
		// 		prevent = false;
		// 	} else {
		// 		prevent = false;
		// 	}
		// 	if (prevent) {
		// 		e.stopPropagation();
		// 		e.preventDefault();
		// 	}
		// });

		// element.find('td').prop('tabindex', 1);

		$('.editable-td').on('click keypress dblclick', showEditor)
			.css('cursor', 'pointer')
			.keydown(function (e) {
				var prevent = true,
					possibleMove = movement($(e.target), e.which);
				if (possibleMove.length > 0) {
					possibleMove.focus();
				} else if (e.which === ENTER) {
					showEditor(false);
				} else if (e.which === 17 || e.which === 91 || e.which === 93) {
					showEditor(true);
					prevent = false;
				} else {
					prevent = false;
				}
				if (prevent) {
					e.stopPropagation();
					e.preventDefault();
				}
			});

		element.find('.editable-td').prop('tabindex', 1);
		
		$(".editable-td").on('change', function (evt, newValue) {			
			let val = newValue.trim();
			if (val.length == 0) {
				$(prevFocus).html(prevValue);
				Swal.fire({
					icon: 'warning',
					title: 'Warning!',
					html: '<p>Isian tidak boleh kosong</p>'
				});
				
			} else {				
				$.ajax({
					url: base_url+'/admin/save-changes',
					dataType: 'json',
					type: 'POST',
					data: { _token: token, data: { val: val, kategori: $(this).data('kategori')}},
					success: function(data) {
						showNotification(
							"bg-black",
							"Berhasil menyimpan perubahan data",
							"top",
							"right",
							"",
							""
						);
						console.log(data.result);
					},
					error: function(err) {
						console.log(err.responseText);
					}
				});
			}
		});
		let prevValue = '',
			prevFocus = '';
		$(".editable-td").on('focus', function(){
			prevValue = $(this).html();
			prevFocus = $(this);
		})

		$(window).on('resize', function () {
			if (editor.is(':visible')) {
				editor.offset(active.offset())
				.width(active.width())
				.height(active.height());
			}
		});
	});

};
$.fn.editableTableWidget.defaultOptions = {
	cloneProperties: ['padding', 'padding-top', 'padding-bottom', 'padding-left', 'padding-right',
					  'text-align', 'font', 'font-size', 'font-family', 'font-weight',
					  'border', 'border-top', 'border-bottom', 'border-left', 'border-right'],
	editor: $('<input>')
};

$('body').on('change', '.set-kategori', function () {		
	$.ajax({
		url: base_url+'/admin/set-kategori',
		dataType: 'json',
		type: 'POST',
		data: { _token: token, data: { active: ($(this).prop('checked') ? 1 : 0), kategori: $(this).data('kategori')}},
		success: function(data) {
			showNotification(
				"bg-black",
				"Berhasil merubah status aktif kategori",
				"top",
				"right",
				"",
				""
			);
		},
		error: function(err) {
			console.log(err.responseText);
			Swal.fire({
				icon: 'error',
				title: 'Error!',
				html: '<p>Terdapat kesalahan pada jaringan anda. Refresh halaman ini. Terima kasih</p>'
			})
		}
	})
})

function showNotification(
	colorName,
	text,
	placementFrom,
	placementAlign,
	animateEnter,
	animateExit
) {
	if (colorName === null || colorName === "") {
		colorName = "bg-black";
	}
	if (text === null || text === "") {
		text = "Turning standard Bootstrap alerts";
	}
	if (animateEnter === null || animateEnter === "") {
		animateEnter = "animated fadeInDown";
	}
	if (animateExit === null || animateExit === "") {
		animateExit = "animated fadeOutUp";
	}
	var allowDismiss = true;

	$.notify(
		{
			message: text
		},
		{
			type: colorName,
			allow_dismiss: allowDismiss,
			newest_on_top: true,
			timer: 1000,
			placement: {
				from: placementFrom,
				align: placementAlign
			},
			animate: {
				enter: animateEnter,
				exit: animateExit
			},
			template:
				'<div data-notify="container" class="bootstrap-notify-container alert alert-dismissible {0} ' +
				(allowDismiss ? "p-r-35" : "") +
				'" role="alert">' +
				'<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
				'<span data-notify="icon"></span> ' +
				'<span data-notify="title">{1}</span> ' +
				'<span data-notify="message">{2}</span>' +
				'<div class="progress" data-notify="progressbar">' +
				'<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
				"</div>" +
				'<a href="{3}" target="{4}" data-notify="url"></a>' +
				"</div>"
		}
	);
} // end of notification function

let loader = `
        <div class="sk-cube-grid loader-square" >
            <div class="sk-cube sk-cube1"></div>
            <div class="sk-cube sk-cube2"></div>
            <div class="sk-cube sk-cube3"></div>
            <div class="sk-cube sk-cube4"></div>
            <div class="sk-cube sk-cube5"></div>
            <div class="sk-cube sk-cube6"></div>
            <div class="sk-cube sk-cube7"></div>
            <div class="sk-cube sk-cube8"></div>
            <div class="sk-cube sk-cube9"></div>
        </div>
    `;

$('.add-kategori').click(function () {
	$("#add_kategori_modal").modal('toggle');
});

$(".simpan-kategori").click(function () {
	saveNewKategori();
	
});

$("#add_kategori_modal").on('shown.bs.modal', function () {
	$(".field_kategori").val('');
	$(".field_kategori").focus();
})

$('.field_kategori').on('keyup', function (e) {
	if (e.which == 13) {
		saveNewKategori();

	}
});

function reloadTable() {
	$("#mainTable tbody").html(`<tr><td colspan="3">${loader}</td></tr>`);
	$.ajax({
		url: base_url + '/admin/get-kategori',
		dataType: 'json',
		type: 'GET',
		success: function (data) {
			let row = '';
			for(let i = 0; i < data.result.length; i++)
			{
				row += `
					<tr>
						<td>${i + 1}</td>
						<td class="editable-td" data-kategori="${data.result[i].id}">${data.result[i].kategori}</td>
						<td><input class="set-kategori" type="checkbox" data-kategori="${data.result[i].id}" ${data.result[i].is_active == '1' ? 'checked' : ''}  data-toggle="toggle"></td>
						<td><button class="btn delete-kategori" data-kategori="${data.result[i].id}">
							<i class="material-icons">delete</i>
						</button></td>
					</tr>
				`;
			}
			$("#mainTable tbody").html(`${row}`);
			$("#mainTable").editableTableWidget();
			$('.set-kategori').bootstrapToggle();			
		}
	})
}

function saveNewKategori() {
	let data = $(".field_kategori").val().trim();
	if (data.length == 0) {
		Swal.fire({
			icon: 'warning',
			title: 'Warning!',
			html: '<p>Isian tidak boleh kosong. Terima kasih</p>',
		});
	} else {
		Swal.fire({
			icon: 'question',
			title: 'Konfirmasi!',
			html: '<p>Simpan data ?</p>',
			showCancelButton: true,
			confirmButtonText: 'Ya, Simpan',
			showLoaderOnConfirm: true,
			preConfirm: () => {
				return new Promise((resolve, reject) => {
					$.ajax({
						url: base_url + '/admin/new-kategori',
						dataType: 'json',
						type: 'POST',
						data: { _token: token, data: data },
						success: function (suc) {
							resolve(suc);
						},
						error: function (err) {
							reject(err.responseText);
						}
					})
				}).then((suc) => {
					$("#add_kategori_modal").modal('toggle');
					let newKategori = suc.kategori;
					reloadTable();
					return suc.result;
				}).catch((err) => {
					Swal.showValidationMessage(
						`Request failed: ${err}`
					);
				});
			},
			allowOutsideClick: () => !Swal.isLoading()
		}).then(function (val) {
			if (val.value) {
				Swal.fire({
					icon: 'success',
					title: 'Sukses !!',
					html: `<p>Kategori pengaduan baru berhasil ditambahkan</p>`
				})
			}
		})
	}
}

$('body').on('click','.delete-kategori', function () {
	let kategori = $(this).data('kategori');
	let text = $(this).parent().siblings('.editable-td').html();	
	Swal.fire({
		icon: 'question',
		title: 'Konfirmasi!',
		html: `<p>Anda akan menghapus kategori: <strong>${text}</strong></p>`,
		showCancelButton: true,
		confirmButtonText: 'Ya, Hapus Data',
		showLoaderOnConfirm: true,
		preConfirm: () => {
			return new Promise((resolve, reject) => {
				$.ajax({
					url: base_url + '/admin/delete-kategori',
					dataType: 'json',
					type: 'POST',
					data: { _token: token, data: kategori },
					success: function (suc) {
						resolve(suc);
					},
					error: function (err) {
						reject(err.responseText);
					}
				})
			}).then((suc) => {
				// refresh table
				reloadTable();
				return suc.result;
			}).catch((err) => {
				Swal.showValidationMessage(
					`Request failed: ${err}`
				);
			})
		},
		allowOutsideClick: () => !Swal.isLoading()
	}).then(function (val) {
		Swal.fire({
			icon: 'success',
			title: 'Sukses!',
			html: `<p>Berhasil menghapus kategori <strong>${text}</strong>`
		})
	})
})

