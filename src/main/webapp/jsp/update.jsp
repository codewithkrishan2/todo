<div %@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Update Todo</title>
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
		<%@ include file="common/navbar.html"%>


		<div class="mx-auto w-full max-w-[550px] border-2 rounded-lg p-12">
			<h2
				class="text-3xl font-bold text-white text-center mb-4 uppercase tracking-widest font-sans underline">Update</h2>

			<form action="update" method="POST">

				<div class="mb-5">
					<!-- <label for="id" class="mb-3 block text-base font-medium text-white">
						Id </label>  -->
					<input type="hidden" name="id" id="id" value='${ todo.id }'
						readonly required
						class="w-full appearance-none rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md" />
				</div>

				<div class="mb-5">
					<label for="title"
						class="mb-3 block text-base font-medium text-white"> Title
					</label>
					<textarea name="title" id="title" required
						class="w-full appearance-none rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md">${ todo.title }</textarea>
				</div>

				<div class="mb-5">
					<div class="mb-5">
						<label for="dueDate"
							class="mb-3 block text-base font-medium text-white">
							Target Date </label> <input value='${ todo.dueDate }' type="date"
							name="dueDate" id="dueDate" required
							class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-base font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md" />
					</div>
				</div>

				<div class="mb-5">
					<div class="mb-5">
						<div class="mb-3 block text-base font-medium text-white">
							<!-- Changed text color to gray-800 for better visibility -->
							Mark as Completed
						</div>
						<div class="flex items-center space-x-4">
							<input type="hidden" name="isDone" id="isDoneHidden"
								value="${ todo.isDone }">

							<!-- Used flexbox for better alignment and spacing -->
							<input type="radio" name="isDone" id="isDoneYes" value="true"
								required
								class="w-4 h-4 text-indigo-600 border-gray-300 focus:ring-indigo-500">
							<label for="isDoneYes"
								class="text-base font-medium text-white cursor-pointer">Yes</label>
							<input type="radio" name="isDone" id="isDoneNo" value="false"
								required
								class="w-4 h-4 text-indigo-600 border-gray-300 focus:ring-indigo-500">
							<label for="isDoneNo"
								class="text-base font-medium text-white cursor-pointer">No</label>
						</div>
					</div>
				</div>



				<div>
					<button
						class=" hover:shadow-form rounded-lg bg-orange-500 py-3 px-8 text-center text-base font-semibold text-white outline-none">
						Update</button>
				</div>
			</form>
		</div>
	</div>


	<script>
		// Get the dueDate value from the input field
		const dueDateValue = '${ todo.dueDate }';

		// Extract the date part from the dueDateValue
		const dueDateParts = dueDateValue.split(' ')[0].split('-');

		// Create a Date object from the extracted date parts
		const dueDate = new Date(Date.UTC(dueDateParts[0], dueDateParts[1] - 1,
				dueDateParts[2])); // Months are zero-based in JavaScript

		// Format the date to display it in the input field
		const formattedDueDate = dueDate.toISOString().split('T')[0]; // Extract YYYY-MM-DD part

		// Set the value of the input field to the formatted dueDate
		document.getElementById("dueDate").value = formattedDueDate;

		//isDone Value handling----------------
		// Get the isDone value from the input field
		// Get the isDone value from the hidden input field
		const isDoneValue = document.getElementById("isDoneHidden").value;

		// Check the radio button based on the isDone value from the database
		if (isDoneValue === "true") {
			document.getElementById("isDoneYes").checked = true;
		} else {
			document.getElementById("isDoneNo").checked = true;
		}

		// Add event listeners to the radio buttons to update the hidden input field
		document.getElementById("isDoneYes").addEventListener("change",
				function() {
					document.getElementById("isDoneHidden").value = "true";
				});

		document.getElementById("isDoneNo").addEventListener("change",
				function() {
					document.getElementById("isDoneHidden").value = "false";
				});
	</script>




</body>

	</html>