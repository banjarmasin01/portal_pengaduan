<aside id="leftsidebar" class="sidebar">
    <!-- Menu -->
    <div class="menu">
        <ul class="list">
            <li class="header">-- Main</li>
            <li class="{{ last(request()->segments()) == 'home' ? 'active' : '' }}">
                <a href="{{ url('/admin/') }}">
                    <i data-feather="home"></i>
                    <span>Home</span>
                </a>
            </li>
            <li class="{{ last(request()->segments()) == 'master-kategori-pengaduan' ? 'active' : '' }}">
                <a href="{{ url('/admin/master-kategori-pengaduan') }}">
                    <i data-feather="grid"></i>
                    <span>Master Kategori Pengaduan</span>
                </a>
            </li>
            <li class="{{ last(request()->segments()) == 'daftar-pengaduan' || request()->segment(2) == 'daftar-pengaduan' ? 'active' : '' }}">
                <a href="{{ url('/admin/daftar-pengaduan') }}">
                    <i data-feather="slack"></i>
                    <span>Daftar Laporan Pengaduan</span>
                </a>
            </li>
        </ul>
    </div>
    <!-- #Menu -->
</aside>