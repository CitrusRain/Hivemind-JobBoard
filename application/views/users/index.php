<hr/>
<?php foreach ($users as $users_item): ?>

		<div class="main">
			<h4><?php echo $users_item['UserAlias'] ?></h4>
			<p><?php echo $users_item['UserFName'] ?> <?php echo $users_item['UserLName'] ?></p>
			<p><?php echo $users_item['ZipCode'] ?></p>
			<p><a href="<?php echo $users_item['ID'] ?>">View...</a></p>
		</div>
		<hr/>
<?php endforeach ?>