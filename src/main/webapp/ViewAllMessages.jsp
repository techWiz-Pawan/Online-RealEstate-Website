<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%@ page import="java.util.List" %>
<%@ page import="com.easy.project.model.Message" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Messages</title>
    <style>
        .container {
            margin-top: 50px;
        }
        .table-buttons {
            width: 150px; /* Adjust width as needed */
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container" id="mainContainer">
        <h2>All Messages</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% List<Message> messageList = (List<Message>) request.getAttribute("messageList");
                   for (Message message : messageList) { %>
                <tr>
                    <td><%= message.getName() %></td>
                    <td><%= message.getEmail() %></td>
                    <td><%= message.getMobile() %></td>
                    <td>
                        <button class="btn btn-primary view-btn" type="button" data-toggle="modal" data-target="#messageModal" data-message="<%= message.getMessage() %>">View</button>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="messageModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="messageModalLabel">Message</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p id="messageContent"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function(){
            $('#messageModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); // Button that triggered the modal
                var message = button.data('message'); // Extract info from data-* attributes
                var modal = $(this);
                modal.find('.modal-body #messageContent').text(message);
            });
        });
    </script>
</body>
</html> 
