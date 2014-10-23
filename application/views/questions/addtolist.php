<h2>Adding to a question list</h2>
<?php echo validation_errors(); ?>

<?php echo form_open('questions/addtolist/'.$questions_item['QuestionID']) ?>

<?php
echo '<b>'.$questions_item['Contents'].'</b><br/>';
?>

<input type="radio" name="answer" id="r1" value="a">
<label for="r1"><?php echo $questions_item['answers']['Answer1']; ?></label>
<br/><input type="radio" name="answer" id="r2" value="b">
<label for="r2"><?php echo $questions_item['answers']['Answer2']; ?></label>
<br/><input type="radio" name="answer" id="r3" value="c">
<label for="r3"><?php echo $questions_item['answers']['Answer3']; ?></label>
<br/><input type="radio" name="answer" id="r4" value="d">
<label for="r4"><?php echo $questions_item['answers']['Answer4']; ?></label>
<br/><input type="radio" name="answer" id="r5" value="e">
<label for="r5"><?php echo $questions_item['answers']['Answer5']; ?></label>

<br/>
<br/>
	
	<label for="pointvalue">How much is the answer worth?:</label>
	<input type="text" name="pointvalue" value="5"/><br/>
	<br/>
	<label for="listlist">Select the list to add this to:</label>
	<select name="listlist">
		<option>Select a list</option>
		<?php foreach ($questionlists as $list):
			echo '<option value="'.$list['ListID'].'">'.$list['ListName'].'</option>';
			endforeach
		?>
	</select>
	
	<br/>
	<input type="submit" name="submit" value="Add to my list" />
	
</form>