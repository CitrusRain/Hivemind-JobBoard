<?php
echo '<h2>'.$jobs_item['Title'].'</h2>';
echo '<b>'.$jobs_item['Location'].'</b><br/>';

echo $jobs_item['Description'];

echo '<br/><br/>QuestionList1: '.$jobs_item['QuestionList1'];
echo '<br/><br/>QuestionList2: '.$jobs_item['QuestionList2'];

echo '<br/><br/>Date posted: '.$jobs_item['DatePosted'];
echo '<br/><br/>Employer: <a href="../employers/'.$employers_item['ID'].'">'.
				$employers_item['EmployerName'].'</a>';
?>

<br/><br/>