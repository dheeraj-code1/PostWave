# PostWave

PostWave is a Django-based web application that allows users to sign up, log in, upload posts, edit their posts, and more. It uses the default SQLite database for storing data and integrates Tailwind CSS for styling.

## Features

- User Authentication (Sign Up, Log In, Log Out)
- Create and Upload Posts
- Edit and Delete Posts
- View Posts
- User Profiles

## Installation

### Prerequisites

- Python 3.x
- pip (Python package installer)
- Node.js and npm (Node package manager) for Tailwind CSS
- Virtualenv (optional but recommended)

### Steps

1. **Clone the repository:**

    ```bash
    git clone https://github.com/dheeraj-code1/PostWave.git
    cd PostWave
    ```

2. **Create and activate a virtual environment:**

    ```bash
    python -m venv venv
    venv\Scripts\activate
    
    # On Linux use 
    `source venv/bin/activate`
    ```

3. **Install the required Python packages:**

    ```bash
    pip install -r requirements.txt
    ```

4. **Install Tailwind CSS and other Node packages:**

    ```bash
    npm install
    ```

5. **Apply migrations:**

    ```bash
    python manage.py migrate
    ```

6. **Create a superuser (optional but recommended):**

    ```bash
    python manage.py createsuperuser
    ```

7. **Build the static files with Tailwind CSS (for production):**

    ```bash
    npm run build
    ```

8. **Run the development server:**

    ```bash
    python manage.py runserver
    ```

9. **Access the application:**

    Open your web browser and navigate to `http://127.0.0.1:8000/`.

## Usage

1. **Sign Up:**
    - Create a new account using the Sign Up page.
2. **Log In:**
    - Log in with your credentials.
3. **Create a Post:**
    - Navigate to the 'Create Post' page and fill in the details to create a new post.
4. **Edit or Delete a Post:**
    - Go to 'My Posts' to view, edit, or delete your posts.
5. **View Posts:**
    - Browse all posts from various users on the home page.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes. Ensure that your code adheres to the existing code style and includes appropriate tests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

- [Django](https://www.djangoproject.com/) - The web framework used for this project.
- [SQLite](https://www.sqlite.org/index.html) - The database used.
- All the contributors and developers involved in the project.

## Special Thanks

A heartfelt thank you to [Hitesh Choudhary](https://www.youtube.com/playlist?list=PLu71SKxNbfoDOf-6vAcKmazT92uLnWAgy) for providing the foundational knowledge and step-by-step guidance needed to complete this project. The tutorial series was instrumental in shaping the development process and ensuring the project's success.
