require 'test_helper'

class LazyImagesTest < ActionView::TestCase
  test "truth" do
    assert_kind_of Module, LazyImages
  end

    test "image_tag outputs wrapped image with placeholder and noscript" do
      markup = %(<div data-rli-image-src="/images/foo.png" data-rli-placeholder="true" class="rli-wrapper"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024" class="rli-placeholder">
  <path class="moon" d="M832 288c0 53.020-42.98 96-96 96s-96-42.98-96-96 42.98-96 96-96 96 42.98 96 96z"></path>
  <path class="mountain" d="M896 832h-768v-128l224-384 256 320h64l224-192z"></path>
</svg>
<noscript><img src="/images/foo.png" class=" rli-image" alt="Foo" /></noscript></div>)

    assert_dom_equal markup, image_tag('foo.png')
  end
end
