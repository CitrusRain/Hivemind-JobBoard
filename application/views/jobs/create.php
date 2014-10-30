<h2>Create a new job listing</h2>

<?php echo validation_errors(); ?>


<?php echo form_open('jobs/create') ?>
	
	<div border="1">
	<label for="EIN">*Employer Identification Number:</label>
	<input type="text" value="1" name="EIN"/><br/>
	<sub>Will be based on a value of the logged in client</sub>
	</div>

	<label for="jobtitle">*Job Title:</label>
	<input type="text" name="jobtitle"/><br/>	
	
	<label for="location">*Location:</label>
	<input type="text" name="location"/><br/>	
	
	<label for="description">*Description:</label>
	<textarea name="description"></textarea><br/>
		
	<label for="QuestionList1">*Question List:</label>
	<select name="QuestionList1">
		<option value="">Select a question list</option>
		<option value="1">(this option is hardcoded) QuestionListID = 1</option>
		<option value="2">(this option is hardcoded) QuestionListID = 2</option>
		<option value="3">(this option is hardcoded) QuestionListID = 3</option>
	</select><br/>

	<label for="QuestionList2">Question List 2 (optional):</label>
	<select name="QuestionList2">
		<option value="">Select a question list</option>
		<option value="1">(this option is hardcoded) QuestionListID = 1</option>
		<option value="2">(this option is hardcoded) QuestionListID = 2</option>
		<option value="3">(this option is hardcoded) QuestionListID = 3</option>
	</select><br/>
	
	
	<br/><br/>
	<input type="submit" name="submit" value="Create new question" />
	
</form>
