<button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
    <span class="fa fa-bars text-primary"></span>
</button>
<div class="collapse navbar-collapse bg-light py-3 " id="navbarCollapse">
    <div class="navbar-nav mx-auto border-top">
        @foreach ($menu_nodes as $key => $row)
            @if ($row->has_child)
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Dropdown</a>
                    <div class="dropdown-menu m-0 bg-secondary rounded-0">
                        @foreach ($row->child as $key => $row_child)
                            <a href="{{ $row_child->url }}" target="{{ $row_child->target }}"
                                class="nav-item nav-link dropdown-item @if ($row_child->active) active @endif">
                                {{ $row_child->title }}</a>
                        @endforeach
                    </div>
                </div>
            @else
                <a href="{{ $row->url }}" target="{{ $row->target }}"
                    class="nav-item nav-link @if ($row->active) active @endif">
                    @if ($iconImage = $row->getMetadata('icon_image', true))
                        {{ RvMedia::image($iconImage, 'icon', attributes: ['class' => 'menu-icon-image']) }}
                    @elseif ($row->icon_font)
                        <i class='{{ trim($row->icon_font) }}'></i>
                    @endif{{ $row->title }}
                    @if ($row->has_child)
                        <span class="toggle-icon"><i class="fa fa-angle-down"></i></span>
                    @endif
                </a>
            @endif
        @endforeach

    </div>
    <div class="d-flex flex-nowrap border-top pt-3 pt-xl-0">

        <button class="btn-search btn border border-primary btn-md-square rounded-circle bg-white my-auto"
            data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
    </div>
</div>
