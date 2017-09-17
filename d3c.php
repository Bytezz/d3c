<?php
function d3c($text,$pw,$ty) {
	if ($ty=="0") {
		$pwo=0;
	} elseif ($ty=="1") {
		$pwo="";
	} else {
		die("ERROR.");
	}
	for ($i=0;$i<strlen($pw);$i++) {
		if ($ty=="0") {
			$pwo+=ord($pw{$i});
		} elseif ($ty=="1") {
			$pwo.=ord($pw{$i});
		} else {
			die("ERROR.");
		}
	}
	$pw=(int)$pwo;
	for ($i=0;$i<strlen($text);$i++) {
		$out.=(ord($text{$i})+$pw).";";
	}
	return $out;
}
function dd3c($text,$pw,$ty) {
	if ($ty=="0") {
		$pwo=0;
	} elseif ($ty=="1") {
		$pwo="";
	} else {
		die("ERROR.");
	}
	for ($i=0;$i<strlen($pw);$i++) {
		if ($ty=="0") {
			$pwo+=ord($pw{$i});
		} elseif ($ty=="1") {
			$pwo.=ord($pw{$i});
		} else {
			die("ERROR.");
		}
	}
	$pw=(int)$pwo;
	$text=explode(";",$text);
	for ($i=0;$i<count($text);$i++) {
		if ($text[$i]!="") {
			$out.=(chr(($text[$i])-$pw));
		}
	}
	return $out;
}
?>