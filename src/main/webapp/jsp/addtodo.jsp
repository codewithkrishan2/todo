<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Add Todo</title>
		<script src="https://cdn.tailwindcss.com"></script>
		<style>
			body {
				padding-top: 64px;
				/* Adjust this value according to the height of your navbar */
			}
		</style>
	</head>

	<body class="bg-gradient-to-r from-violet-500 to-fuchsia-500">
		<div class="flex items-center justify-center p-12">
				<%@ include file="common/navbar.html" %>

		

			<div class="mx-auto w-full max-w-[550px] border-2 rounded-lg p-12">
				<h2 class="text-3xl font-bold text-white text-center mb-4 uppercase tracking-widest font-sans underline">Add Todo</h2>
				
				<form action="add" method="POST">
					
					<div class="mb-5">
						<label for="title" class="mb-3 block text-base font-medium text-white">
							What's in your mind?
						</label>
						<textarea type="text" name="title" id="title" required class="w-full appearance-none rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md" ></textarea>
					</div>

					<div class="mb-5">
						<div class="mb-5">
							<label for="dueDate" class="mb-3 block text-base font-medium text-white">
								Target Date
							</label>
							<input type="date" name="dueDate" id="dueDate" required
								class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md" />
						</div>
					</div>
					<div>
						<button
							class=" hover:shadow-form rounded-lg bg-orange-500 py-3 px-8 text-center text-base font-semibold text-white outline-none">
							Add Now!
						</button>
					</div>
				</form>
			</div>
		</div>


	<script>
	  // Get today's date
	  var today = new Date().toISOString().split('T')[0];
	  
	  // Calculate max date (2 years from today)
	  var maxDate = new Date();
	  maxDate.setFullYear(maxDate.getFullYear() + 2);
	  var maxDateString = maxDate.toISOString().split('T')[0];
	  
	  // Set the minimum and maximum dates for the input field
	  document.getElementById("dueDate").min = today;
	  document.getElementById("dueDate").max = maxDateString;
	</script>
	
	
	</body>

	</html>