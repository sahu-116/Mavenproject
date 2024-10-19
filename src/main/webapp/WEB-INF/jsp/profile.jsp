<%@page import="java.util.*" %>

    <jsp:include page="sheader.jsp" />
    <title>Profile page</title>

    <style>
        .container-profile {
            max-width: 100%;
            width: 100%;
            height: auto;
            margin: 0 auto;
            padding: 20px;
            background-color: azure;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }

        .profile-photo {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            display: block;
            margin: 0 auto;
        }

        h2 {
            text-align: center;
        }

        .profile-info {
            text-align: center;
            margin-top: 20px;
        }

        a {
            text-decoration: none;
            color: #007bff;
            display: block;
            text-align: center;
            margin-top: 20px;
        }

        a:hover {
            color: #0056b3;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container-profile {
                width: 90%;
                padding: 15px;
            }

            .profile-photo {
                width: 80px;
                height: 80px;
            }
        }

        @media (max-width: 480px) {
            .container-profile {
                width: 100%;
                padding: 10px;
            }

            .profile-photo {
                width: 60px;
                height: 60px;
            }
        }
    </style>

    <br><br><br><br>

    <div class="container-profile">
        <h2>Profile</h2>

        <!-- Null check for image data to prevent NullPointerException -->
        <% byte[] s=(byte[]) request.getAttribute("imageData"); if (s !=null) { %>
            <img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(s)%>" class="profile-photo"
                alt="Profile Photo" /><br><br>
            <% } else { %>
                <img src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(s)%>" class="profile-photo"
                    alt="Default Profile Photo" /><br><br>
                <% } %>

                    <div class="profile-info">
                        <p>Name: <%= session.getAttribute("name") !=null ? session.getAttribute("name") : "N/A" %>
                        </p>
                        <p>Email: <%= session.getAttribute("email") !=null ? session.getAttribute("email") : "N/A" %>
                        </p>
                        <p>Age: <%= request.getAttribute("imageData") !=null ? session.getAttribute("imageData") : "N/A" %>
                        </p>
                    </div>

                    <a href="edit_profile">Edit Profile</a>
    </div>

    <jsp:include page="footer.jsp" />