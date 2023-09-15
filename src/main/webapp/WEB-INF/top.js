function menu_click(clickedElement, parent) {
    // 모든 nav-item 요소에서 active 클래스를 제거합니다.
    var navItems = document.querySelectorAll(".nav-item");
    navItems.forEach(function(item) {
        item.classList.remove("active");
    });

    if (parent) {
        // 부모 요소에 active 클래스 추가
        clickedElement.parentElement.classList.add("active");
    } else {
        // 클릭한 요소에 active 클래스를 추가
        clickedElement.classList.add('active');
    }
}

// 각 링크에 이벤트 핸들러 등록
var links = document.querySelectorAll(".nav-link");
links.forEach(function(link) {
    link.addEventListener("click", function(event) {
        menu_click(this, true);
    });
});
