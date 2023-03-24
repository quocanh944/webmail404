<?php require base_path('views/partials/head.php') ?>

<main style="padding-top: 10%; padding-bottom: 10%">
    <form class="w-25 m-auto" action="/session" method="POST">
        <!-- Email input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="email">Email address</label>
            <input type="email" id="email" name="email" class="form-control" />
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="password">Password</label>
            <input type="password" id="password" name="password" class="form-control" />
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>

        <!-- Register buttons -->
        <div class="text-center">
            <p>Not a member? <a href="register">Register</a></p>
        </div>
    </form>
</main>

<?php require base_path('views/partials/footer.php') ?>