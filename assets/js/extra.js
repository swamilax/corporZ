(function ($) {
    $(document).on('change', '#field-catname', function () {
        var seoURL = convertToSlug($(this).val());
        $('#field-link').val(seoURL);
    });

    function convertToSlug(Text) {
        return Text
            .toLowerCase()
            .replace(/ /g, '-')
            .replace(/[^\w-]+/g, '')
            ;
    }

}(jQuery));