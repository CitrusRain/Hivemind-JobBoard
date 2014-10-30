<hr/>
<?php foreach ($employers as $employer_item): ?>

		<div class="main">
			<h4><?php echo $employer_item['EmployerName'] ?></h4>
			<p><?php echo $employer_item['Location'] ?></p>
			<p><a href="<?php echo $employer_item['ID'] ?>">View...</a></p>
		</div>
		<hr/>
<?php endforeach ?>