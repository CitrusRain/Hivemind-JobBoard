<h2>Create a new list of questions</h2>

<?php echo validation_errors(); ?>

<?php echo form_open('questions/makelist') ?>
	
	<label for="ListName">Name of new list:</label>
	<input type="text" name="ListName"/><br/>
	<br/>
	<input type="submit" name="submit" value="Make a list to add questions to" />
	
</form>