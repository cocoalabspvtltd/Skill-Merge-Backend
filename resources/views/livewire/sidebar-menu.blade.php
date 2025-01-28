 <!--Start sidebar-wrapper-->
 <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
    <div class="brand-logo">
        <a href="index.html">
            <img src="{{ asset('public/assets/logo.svg')}}" class="logo-icon" alt="logo icon" style="display:inline !important; width:115px !important;">

        </a>
    </div>
    <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header">MAIN NAVIGATION</li>
        {{-- <li>
            <a href="{{ route('dashboard')}}">
                <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
            </a>
        </li> --}}

        <li>
            <a href="{{ route('about-us.index')}}">
                <i class="zmdi zmdi-invert-colors"></i> <span>About Us</span>
            </a>
        </li>

        <li>
            <a href="{{ route('teams.index')}}">
                <i class="zmdi zmdi-format-list-bulleted"></i> <span>Teams</span>
            </a>
        </li>

        <li>
            <a href="{{ route('homeSlider.index')}}">
                <i class="zmdi zmdi-grid"></i> <span>Home Slider</span>
            </a>
        </li>

        <li>
            <a href="{{ route('what-we-do.index')}}">
                <i class="zmdi zmdi-calendar-check"></i> <span>What-we-do</span>

            </a>
        </li>

        <li>
            <a href="{{ route('programs.index')}}">
                <i class="zmdi zmdi-assignment"></i> <span>Programs</span>
            </a>
        </li>

        <li>
            <a href="{{ route('why-choose-us.index') }}" >
                <i class="zmdi zmdi-help"></i> <span>Why Choose Us</span>
            </a>
        </li>

        <li>
            <a href="{{ route('our-approach.index')}}" >
                <i class="zmdi zmdi-nature-people"></i> <span>Our Approachs</span>
            </a>
        </li>

        <li>
            <a href="{{ route('selection-process.index')}}" >
                <i class="zmdi zmdi-assignment-account"></i> <span>Candidate Selection Process</span>
            </a>
        </li>

        <li>
            <a href="{{ route('news-and-blogs.index')}}" >
                <i class="zmdi zmdi-collection-text"></i> <span>News and Blogs</span>
            </a>
        </li>

        <li>
            <a href="{{ route('latest-jobs.index')}}" >
                <i class="zmdi zmdi-case"></i> <span>Latest Jobs</span>
            </a>
        </li>

        <li>
            <a href="{{ route('hackverse.index')}}" >
                <i class="zmdi zmdi-code"></i> <span>Hackverse Community</span>
            </a>
        </li>

        <li>
            <a href="{{ route('testimonials.index')}}" >
                <i class="zmdi zmdi-comment"></i> <span>Testimonials</span>
            </a>
        </li>

        <li>
            <a href="{{ route('faq.index')}}" >
                <i class="zmdi zmdi-help"></i> <span>FAQ</span>
            </a>
        </li>
        
        
        <li>
            <a href="{{ route('global-certification-partners.index')}}" >
                <i class="zmdi zmdi-card-membership"></i> <span>Global Certification Partners</span>
            </a>
        </li>

        <li>
            <a href="{{ route('placement-drives.index')}}" >
                <i class="zmdi zmdi-assignment-account"></i> <span>Placement Drives</span>
            </a>
        </li>

        <li>
            <a href="{{ route('aminities.index')}}" >
                <i class="zmdi zmdi-zmdi zmdi-wrench"></i> <span>Aminities</span>
            </a>
        </li>
        
{{--
        <li>
            <a href="{{ route('news-and-blogs.index')}}" target="_blank">
                <i class="zmdi zmdi-account-circle"></i> <span>News and Blogs</span>
            </a>
        </li> --}}
    </ul>

</div>
<!--End sidebar-wrapper-->
