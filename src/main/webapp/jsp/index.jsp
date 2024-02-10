<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<script src="https://cdn.tailwindcss.com"></script>
<style>
body {
	padding-top: 64px;
	/* Adjust this value according to the height of your navbar */
}
</style>
</head>

<body class="bg-gradient-to-r from-violet-500 to-fuchsia-500">
	<div class="continer">
		<nav
			class="bg-white dark:bg-gray-900 fixed w-full z-20 top-0 start-0 border-b border-gray-200 dark:border-gray-600">
			<div
				class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
				<a href="/" class="flex items-center space-x-3 rtl:space-x-reverse">
					<img src="https://flowbite.com/docs/images/logo.svg" class="h-8"
					alt="Flowbite Logo"> <span
					class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Krishan</span>
				</a>
				<div
					class="flex md:order-2 space-x-3 md:space-x-0 rtl:space-x-reverse">
					<!-- <button type="button"
							class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Get
							started
						</button> -->
					<button data-collapse-toggle="navbar-sticky" type="button"
						class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
						aria-controls="navbar-sticky" aria-expanded="false">
						<span class="sr-only">Open main menu</span>
						<svg class="w-5 h-5" aria-hidden="true"
							xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 17 14">
								<path stroke="currentColor" stroke-linecap="round"
								stroke-linejoin="round" stroke-width="2"
								d="M1 1h15M1 7h15M1 13h15" />
							</svg>
					</button>
				</div>
				<div
					class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1"
					id="navbar-sticky">
					<ul
						class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
						<li><a href="/"
							class="block py-2 px-3 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500"
							aria-current="page">Home </a></li>
						<li><a href="/add"
							class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">
								Add New </a></li>
					</ul>
				</div>
			</div>
		</nav>


		<!-- <h1 class="text-3xl font-bold ">Hello, Welcome</h1> -->
		<h2 class="text-2xl font-bold ml-40">Your tasks:</h2>
		<%-- 

			<c:if test="${not empty todos}">

				<ul>
					<c:forEach var="listValue" items="${todos}">
						<li>${listValue}</li>
					</c:forEach>
				</ul>
			</c:if> --%>

		<!-- component -->
		<section class="container mx-auto p-6 font-mono">
			<div class="w-full mb-8 overflow-hidden rounded-lg shadow-lg">
				<div class="w-full overflow-x-auto">
					<table class="w-full">
						<thead>
							<tr
								class="text-md font-semibold tracking-wide text-left text-gray-900 bg-gray-100 uppercase border-b border-gray-600">
								<th class="px-4 py-3">Title</th>
								<th class="px-4 py-3">Due date</th>
								<th class="px-4 py-3">Last Modified</th>
								<th class="px-4 py-3">Status</th>
								<th class="px-4 py-3">Actions</th>
							</tr>
						</thead>

						<tbody class="bg-white" id="todoTableBody">
							<c:forEach var="todo" items="${todos}">
								<tr class="text-gray-700">
									<td class="px-4 py-3 border">
										<div class="flex items-center text-sm">
											<div>
												<p class="font-semibold text-black">${todo.title}</p>
											</div>
										</div>
									</td>
									<td class="px-4 py-3 text-sm font-semibold border">${todo.dueDate}</td>
									<td class="px-4 py-3 text-ms font-semibold border">${todo.addedDate}</td>
									<td class="px-4 py-3 text-xs border"><span
										class="px-2 py-1 font-semibold leading-tight ${todo.isDone == true ? 'text-green-700 bg-green-100' : 'text-orange-700 bg-gray-100'} rounded-sm">
											${todo.isDone ? 'Done' : 'Pending'} </span></td>
									<td class="px-4 py-3 text-sm border"><a
										href='/update?id=${todo.id}'
										class="text-white font-bold bg-orange-400 py-1.5 px-2 m-2 rounded">&#128393;</a>
										<a href='/delete?id=${todo.id}'
										class="text-white font-bold bg-red-500 py-1.5 px-2 m-2 rounded">&#10008;</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				</div>
				
			</div>
			<div class="flex justify-end">
				<div class="add-button flex justify-center items-end text-white font-bold bg-orange-400 py-1.5 px-2 rounded-lg cursor-pointer hover:bg-orange-500">
					<a href="/add">Add New Task</a>
				</div>
			</div>
			
		</section>
	</div>



</body>

</html>