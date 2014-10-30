<a href="create">Create job</a>
<hr/>
<?php foreach ($jobs as $job_item): ?>

		<div class="main">
			<h4><?php echo $job_item['Title'] ?></h4>
			<p><?php echo $job_item['Description'] ?></p>
			<p><?php echo $job_item['Location'] ?></p>
			<p><a href="<?php echo $job_item['ID'] ?>">View...</a></p>
		</div>
		<hr/>
<?php endforeach ?>