function loadFile(input) {
    var file = input.files[0];	// 선택된 파일 가져오기
    var fileExtension = file.name.split('.').pop().toLowerCase(); // 파일 확장자

    // 미리 만들어 놓은 div에 text(파일 이름) 추가
    var name = document.getElementById('fileName');
    name.textContent = file.name;

    // 새로운 요소 생성 (이미지 or 비디오)
    var newElement;
    if (fileExtension === 'mp4' || fileExtension === 'webm' || fileExtension === 'ogg') {
        // 동영상일 경우
        newElement = document.createElement("video");
        newElement.setAttribute("class", 'video');
        newElement.controls = true; // 비디오 컨트롤러 표시

        // 동영상 source 설정
        var source = document.createElement("source");
        source.src = URL.createObjectURL(file);
        newElement.appendChild(source);
        
        console.log('1'); // 동영상인 경우 1 출력
    } else if (fileExtension === 'jpg' || fileExtension === 'jpeg' || fileExtension === 'png') {
        // 이미지일 경우
        newElement = document.createElement("img");
        newElement.setAttribute("class", 'img');
        newElement.src = URL.createObjectURL(file);
        
        console.log('0'); // 이미지인 경우 0 출력
    }

    newElement.style.width = "70%";
    newElement.style.height = "70%";
    newElement.style.visibility = "hidden";   // 버튼을 누르기 전까지는 요소를 숨김
    newElement.style.objectFit = "contain";

    // 이미지/비디오 요소를 image-show div에 추가
    var container = document.getElementById('image-show');
    container.innerHTML = ''; // 이전에 추가된 요소 삭제
    container.appendChild(newElement);
};
