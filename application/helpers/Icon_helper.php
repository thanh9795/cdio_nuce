<?php

if (!function_exists('get_icon')) {
	function get_icon($ext) {
		if (in_array($ext, ['doc', 'docx'])) {
			return "fa-file-word-o";
		}
		if (in_array($ext, ['xls', 'xlsx'])) {
			return "fa-file-excel-o";
		}
		if (in_array($ext, ['png', 'jpg', 'gif'])) {
			return "fa-file-image-o";
		}
		if (in_array($ext, ['ppt', 'pptx'])) {
			return "fa-file-powerpoint-o ";
		}
		if (in_array($ext, ['pdf'])) {
			return "fa-file-pdf-o";
		}
		if (in_array($ext, ['zip', 'rar', '7z', 'tar', 'gz'])) {
			return "fa-file-archive-o";
		}
		return "fa-file-o";
	}
}
?>