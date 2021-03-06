<?php if ($function == 'QuestionLists'):?>
<h3>Viewing all lists</h3>
<hr/>
<?php foreach ($QuestionLists as $list): ?>

		<div class="main">
			<h4><?php echo $list['ListName'] ?></h4>
			<sub>Owner ID: <?php echo $list['ListOwnerID'] ?></sub>
			<p><a href="<?php echo $list['ListID'] ?>">View...</a></p>
		</div>
		<hr/>
<?php endforeach;
	endif;?>
<?php if ($function == 'QuestionListItems'):?>
<a href="../viewlists/">View all lists</a>
<h3>Viewing list contents</h3>
<hr/>
<?php foreach ($QuestionListItems as $listitem): ?>

		<div class="main">
			<sub>ListID: <?php echo $listitem['ListID'] ?></sub><br/>
			<sub>QuestionID: <?php echo $listitem['QuestionID'] ?></sub><br/>
			<sub>CorrectAnswer: <?php echo $listitem['CorrectAnswer'] ?></sub><br/>
			<sub>PointsScored: <?php echo $listitem['PointsScored'] ?></sub><br/>
			<p><a href="<?php echo base_url().'index.php/questions/'.$listitem['QuestionID'] ?>">View Question...</a></p>
		</div>
		<hr/>
<?php endforeach; 
	endif;?>
