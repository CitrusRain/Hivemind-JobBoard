<a href="makelist">Create List</a>
<hr/>
<?php foreach ($questions as $questions_item): ?>

		<div class="main">
			<h4><?php echo $questions_item['Contents'] ?></h4>
			<sub>Type <?php echo $questions_item['Type'] ?> answerset.</sub>
			<p><a href="<?php echo $questions_item['QuestionID'] ?>">View...</a></p>
		</div>
		<hr/>
<?php endforeach ?>