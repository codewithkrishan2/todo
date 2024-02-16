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

		<%@ include file="common/navbar.html"%>


		<!-- <h1 class="text-3xl font-bold ">Hello, Welcome</h1> -->
		<h2 class="text-2xl font-bold ml-40">Your tasks:</h2>
		<%-- <c:if test="${not empty todos}">

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
									<td class="px-4 py-3 text-sm font-semibold border">
										${todo.dueDate}</td>
									<td class="px-4 py-3 text-ms font-semibold border">
										${todo.addedDate}</td>
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
				<div
					class="add-button flex justify-center items-end text-white font-bold bg-orange-400 py-1.5 px-2 rounded-lg cursor-pointer hover:bg-orange-500">
					<a href="/add">Add New Task</a>
				</div>
			</div>

		</section>


		<c:if test="${addTodoMessage }">
			<p>Successfully added a todo</p>
		</c:if>
		
		<c:if test="${deleteTodoMessage }">
			<p>Successfully Deleted one todo</p>
		</c:if>
		
		<c:if test="${updateTodoMessage }">
			<p>Successfully updated the todo</p>
		</c:if>

	</div>

	

</body>

</html>