<div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 220px; min-height: 100vh;">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
        <span class="fs-4">Menu</span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
            <a href="{{ route('dashboard') }}" class="nav-link {{ request()->routeIs('dashboard') ? 'active' : 'link-dark' }}">Dashboard</a>
        </li>
        <li>
            <a href="{{ route('films.index') }}" class="nav-link {{ request()->is('films*') ? 'active' : 'link-dark' }}">Film</a>
        </li>
        <li>
            <a href="{{ route('reviewers.index') }}" class="nav-link {{ request()->is('reviewers*') ? 'active' : 'link-dark' }}">Reviewer</a>
        </li>
        <li>
            <a href="{{ route('reviews.index') }}" class="nav-link {{ request()->is('reviews*') ? 'active' : 'link-dark' }}">Review</a>
        </li>
    </ul>
</div> 