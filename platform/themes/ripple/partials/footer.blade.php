</div>
<footer class="page-footer bg-dark pt-50">
    <div class="container">
        <div class="row">
            @if (theme_option('address') || theme_option('website') || theme_option('contact_email') || theme_option('site_description'))
            <div class="col-lg-3 col-md-3 col-sm-6 col-12">
                <aside class="widget widget--transparent widget__footer widget__about">
                    <div class="widget__header">
                        <h3 class="widget__title">{{ __('About us') }}</h3>
                    </div>
                    <div class="widget__content">
                        <p>{{ theme_option('site_description') }}</p>
                        <div class="person-detail">
                            @if ($address = theme_option('address'))
                                <p><i class="ion-home"></i>{{ $address }}</p>
                            @endif
                            @if ($website = theme_option('website'))
                                <p><i class="ion-earth"></i><a href="{{ $website }}">{{ $website }}</a></p>
                            @endif
                            @if ($email = theme_option('contact_email'))
                                <p><i class="ion-email"></i>{{ Html::mailto($email) }}</p>
                            @endif
                        </div>
                    </div>
                </aside>
            </div>
            @endif
            {!! dynamic_sidebar('footer_sidebar') !!}
        </div>
    </div>
    <div class="page-footer__bottom">
        <div class="container">
            <div class="row">
                @if($copyright = theme_option('copyright'))
                    <div class="col-md-8 col-sm-6 text-start">
                        <div class="page-copyright">
                            <p>{!! BaseHelper::clean(str_replace('%Y', Carbon\Carbon::now()->year, $copyright)) !!}</p>
                        </div>
                    </div>
                @endif
                @if ($socialLinks = Theme::getSocialLinks())
                    <div class="col-md-4 col-sm-6 text-end">
                        <div class="page-footer__social">
                            <ul class="social social--simple">
                                @foreach($socialLinks as $socialLink)
                                    @continue(! $icon = $socialLink->getIconHtml())

                                    <li>
                                        <a href="{{ $socialLink->getUrl() }}"
                                           title="{{ $socialLink->getName() }}" target="_blank">
                                            {{ $icon }}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
</footer>
<div id="back2top"><i class="fa fa-angle-up"></i></div>

{!! Theme::footer() !!}

@include('packages/theme::toast-notification')

</body>
</html>
