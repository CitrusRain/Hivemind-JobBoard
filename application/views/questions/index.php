<?php foreach ($questions as $questions_item): ?>

		<h2><?php echo $questions_item['Contents'] ?></h2>
		<div class="main">
				<?php echo $questions_item['DatePosted'] ?>
		</div>
		<p><a href="<?php echo $questions_item['QuestionID'] ?>">View...</a></p>
		
<?php endforeach ?>