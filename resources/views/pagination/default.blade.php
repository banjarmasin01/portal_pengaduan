@if ($paginator->hasPages())
    <ul class="pagination">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <li class="paginate_button page-item previous disabled"><a class="page-link" style="cursor: context-menu;" href="javascript:void(0);">PREVIOUS </a></li>                      
        @else            
            <li class="paginate_button page-item previous"><a class="page-link" href="{{ $paginator->previousPageUrl() }}" rel="prev">PREVIOUS </a></li>        
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="paginate_button page-item"><a style="cursor: context-menu;" class="page-link" href="javascript:void(0)"> {{$element}} </a></li>                
            @endif

            {{-- Array Of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())                    
                    	<li class="paginate_button page-item active"><a style="cursor: context-menu;" class="page-link" href="javascript:void(0);">{{ $page }}</a></li>                        
                    @else
                    	<li class="paginate_button page-item"><a class="page-link" href="{{ $url }}">{{ $page }}</a></li>                        
                    @endif
                @endforeach
            @endif
        @endforeach

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <li class="paginate_button page-item next"><a class="page-link" href="{{ $paginator->nextPageUrl() }}" rel="next">NEXT</a></li>
        @else
            <li class="paginate_button page-item next disabled"><a style="cursor: context-menu;" class="page-link" href="javascript:void(0)"> NEXT </a></li>
        @endif
    </ul>
@endif