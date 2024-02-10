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
		<nav
				class="bg-white dark:bg-gray-900 fixed w-full z-20 top-0 start-0 border-b border-gray-200 dark:border-gray-600">
				<div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
					<a href="/" class="flex items-center space-x-3 rtl:space-x-reverse"> <img
							src="https://flowbite.com/docs/images/logo.svg" class="h-8" alt="Flowbite Logo"> <span
							class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Krishan</span>
					</a>
					<div class="flex md:order-2 space-x-3 md:space-x-0 rtl:space-x-reverse">
						<!-- <button type="button"
							class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Get
							started</button> -->
						<button data-collapse-toggle="navbar-sticky" type="button"
							class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
							aria-controls="navbar-sticky" aria-expanded="false">
							<span class="sr-only">Open main menu</span>
							<svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 17 14">
								<path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
									stroke-width="2" d="M1 1h15M1 7h15M1 13h15" />
							</svg>
						</button>
					</div>
					<div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1"
						id="navbar-sticky">
						<ul
							class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
							<li>
								<a href="/"
										class="block py-2 px-3 text-white rounded md:bg-transparent md:p-0  md:hover:text-blue-700"
										>Home
								</a>
							</li>
							<li>
								<a href="#"
									class="block py-2 px-3 rounded hover:bg-gray-100 md:dark:text-blue-500 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
									aria-current="page">
									Add New
								</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		

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