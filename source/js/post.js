$(function () {

    /**
     * 在代码的右上角显示代码的格式，方法需要配合CSS的支持
     */
    let displayCodeFormat = (codeSelector) => {
        $(codeSelector).each(function () {
            let languages = $(this).attr("class").split(' ').filter((value) => value && value.trim() && value.startsWith("language"));
            let language = languages.length && languages[0].substring(9) || '';
            language = language && `${language[0].toUpperCase()}${language.slice(1)}`;
            $(this).parent().wrap(
                `<div class='code-format' data-code-format="${language}"></div>`
            );
        });
    };

    /**
     * 代码前面加入行号 Todo 效率有点低
     */
     let addLineNumber = (codeSelector) => {
        $(codeSelector).each(function () {
            let lis = $(this).html().trimRight().split("\n")
                .map((value, index, array) => {
                    let lineDigit = String(array.length).length;
                    if (lineDigit === 1) lineDigit = 2;
                    // 修复复制时没有空行的问题
                    return `<li class="line-number" data-line-number="${String(index + 1).padStart(lineDigit, 0)}">${(value && value.trim()) ? value : '<br>'}</li>`
                }).join('');
            $(this).html(`<ol>${lis}</ol>`);
        });
    };

    /**
     * 剪切板功能
     */
    let clipBoardSupport = () => {
        $("pre").each(function (index) {
            // 在当前pre中加入id
            $(this).attr("id", `codeBlock${index}`);
            // 如果用户关闭了code-format功能，需要这一步
            ($(this).parent().attr("class") || "").includes("code-format") || $(this).wrap($("<div class='code-format'></div>"));
            // 复制按钮
            let clipButton = $(`<button type='button' class='btn-clipboard' data-toggle="tooltip" data-placement="top" title="复制代码" data-clipboard-target='#codeBlock${index}'>
                    <i class="fas fa-clipboard"></i>
                </button>`
            );
            // 添加复制按钮到页面上
            $(this).parent(".code-format").append(clipButton);
            // 复位tooltip
            let hideClipButtonToolTip = () => {
                clipButton.tooltip('hide');
                clipButton.attr("data-original-title", "复制代码");
            };
            // 在每个pre上添加鼠标放上后的操作
            $(this).hover(function () {
                // ignore
            }, function () {
                hideClipButtonToolTip();
            });
            // 在每个复制按钮上加入鼠标放上后的操作
            clipButton.hover(function () {
                // ignore
            }, function () {
                hideClipButtonToolTip();
            });
        });

        // 开启ToolTip
        $('[data-toggle="tooltip"]').tooltip();

        let clipboard = new ClipboardJS('.btn-clipboard');
        clipboard.on('success', function (e) {
            e.clearSelection();
            e.trigger && $(e.trigger).attr("data-original-title", "已复制到剪切板").tooltip('show');
        });
        clipboard.on('error', function (e) {
            e.clearSelection();
            e.trigger && $(e.trigger).attr("data-original-title", "您的浏览器不支持复制").tooltip('show');
        });
    };

    // 1、代码前面加入行号
    displayLineNumber && addLineNumber("pre code");
    
    // 4、在代码的右上角显示代码的格式
    displayCodeType && displayCodeFormat("pre > code");
    // 5、代码可复制
    enableCodeCopy && clipBoardSupport();
});