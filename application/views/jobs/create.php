<h2>Create a new job listing</h2>

<?php echo validation_errors(); ?>

<?php //Prepare the selectbox functionality
	$listbox = "";	
	foreach ($questionlists as $questionlist): 
		
		$listbox = $listbox.'
			<option value="'.$questionlist['ListID'].'">'.$questionlist['ListName'].'</option>';
		
		endforeach ?>

<?php echo form_open('jobs/create') ?>
	
	<div border="1">
	<label for="EmployerID">*Employer ID:</label>
	<input type="text" value="1" name="EmployerID"/><br/>
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
		<?php echo $listbox ?>
	</select><br/>

	<label for="QuestionList2">Question List 2 (optional):</label>
	<select name="QuestionList2">
		<option value="">Select a question list</option>
		<?php echo $listbox ?>
	</select><br/>
	
	
	<br/><br/>
	<input type="submit" name="submit" value="List Job" />
	
</form>
