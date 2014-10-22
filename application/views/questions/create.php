<h2>Create a news item</h2>

<?php echo validation_errors(); ?>

<?php echo form_open('questions/create') ?>
	
	<label for="contents">Question</label>
	<textarea name="contents"></textarea><br/>
	
	<input type="submit" name="submit" value="Create new question" />
	
</form>