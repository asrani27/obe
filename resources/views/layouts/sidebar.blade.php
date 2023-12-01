
<section class="sidebar">
    <!-- Sidebar Menu -->
    <ul class="sidebar-menu" data-widget="tree">
    <li class="header">MENU UTAMA</li>
    
    @if (Auth::user()->hasRole('superadmin'))
        
    <li class="{{ (request()->is('superadmin')) ? 'active' : '' }}"><a href="/superadmin"><i class="fa fa-home"></i> <span><i>Beranda</i></span></a></li>
    
    <li class="header">DATA MASTER</li>
    
    
    <li class="{{ (request()->is('superadmin/user*')) ? 'active' : '' }}"><a href="/superadmin/user"><i class="fa fa-arrow-right"></i> <span><i>Data User</i></span></a></li>
    <li class="{{ (request()->is('superadmin/dosen*')) ? 'active' : '' }}"><a href="/superadmin/dosen"><i class="fa fa-arrow-right"></i> <span><i>Data Dosen</i></span></a></li>
    <li class="{{ (request()->is('superadmin/mahasiswa*')) ? 'active' : '' }}"><a href="/superadmin/mahasiswa"><i class="fa fa-arrow-right"></i> <span><i>Data Mahasiswa</i></span></a></li>

    <li class="header">KONFIGURASI FRONTEND</li>
    <li class="{{ (request()->is('superadmin/beranda*')) ? 'active' : '' }}"><a href="/superadmin/beranda"><i class="fa fa-arrow-right"></i> <span><i>Beranda</i></span></a></li>
    <li class="{{ (request()->is('superadmin/fitur*')) ? 'active' : '' }}"><a href="/superadmin/fitur"><i class="fa fa-arrow-right"></i> <span><i>Fitur</i></span></a></li>
    <li class="{{ (request()->is('superadmin/tim*')) ? 'active' : '' }}"><a href="/superadmin/tim"><i class="fa fa-arrow-right"></i> <span><i>Tim</i></span></a></li>
    <li class="{{ (request()->is('superadmin/partner*')) ? 'active' : '' }}"><a href="/superadmin/partner"><i class="fa fa-arrow-right"></i> <span><i>Partner</i></span></a></li>
    <li class="{{ (request()->is('superadmin/hubungikami*')) ? 'active' : '' }}"><a href="/superadmin/hubungikami"><i class="fa fa-arrow-right"></i> <span><i>Hubungi Kami</i></span></a></li>
    <li class="header">SETTING</li>
    <li class="{{ (request()->is('superadmin/gp*')) ? 'active' : '' }}"><a href="/superadmin/gp"><i class="fa fa-key"></i> <span><i>Ganti Pass</i></span></a></li>
    <li><a href="/logout"><i class="fa fa-sign-out"></i> <span><i>Logout</i></span></a></li>
    @else
        
    <li class="{{ (request()->is('pemohon')) ? 'active' : '' }}"><a href="/pemohon"><i class="fa fa-home"></i> <span><i>Dashboard</i></span></a></li>
    <li class="{{ (request()->is('pemohon/pengajuan*')) ? 'active' : '' }}"><a href="/pemohon/pengajuan"><i class="fa fa-check"></i> <span><i>Pengajuan Bibit</i></span></a></li>
    <li class="{{ (request()->is('pemohon/serahterima*')) ? 'active' : '' }}"><a href="/pemohon/serahterima"><i class="fa fa-check"></i> <span><i>Serah Terima Bibit</i></span></a></li>
    <li class="{{ (request()->is('pemohon/gp*')) ? 'active' : '' }}"><a href="/pemohon/gp"><i class="fa fa-key"></i> <span><i>Ganti Pass</i></span></a></li>
    <li><a href="/logout"><i class="fa fa-sign-out"></i> <span><i>Logout</i></span></a></li>
    {{-- <li class="{{ (request()->is('pemohon/daftar-layanan*')) ? 'active' : '' }}"><a href="/pemohon/daftar-layanan"><i class="fa fa-list"></i> <span>Daftar Layanan</span></a></li> --}}
    @endif
    </ul>
    <!-- /.sidebar-menu -->
</section>