const { body } = document; //구조분해 할당 (=> const body = document.body )
 
const $table = document.createElement("table");
const $result = document.createElement("div");
 
//rows 배열
// [
//   [td, td, td], ->  cells 배열
//   [td, td, td],
//   [td, td, td],
// ]
const rows = [];
// 표 생성
for (let i = 1; i <= 3; i++) {
  const $tr = document.createElement("tr");
  const cells = [];
  for (let j = 1; j <= 3; j++) {
    const $td = document.createElement("td");
    cells.push($td);
    $tr.append($td);
  }
  rows.push(cells);
  $table.append($tr);
}
 
//표 생성 후 화면에 출력
body.append($table);
body.append($result);
 
// target td의 가로, 세로, 대각선이 같은 모양인지 확인
 
let turn = "O";
 
const checkWinner = (target) => {
  const rowIndex = target.parentNode.rowIndex; //target td의 tr인 행의 인덱스
  const cellIndex = target.cellIndex; //target td의 인덱스
 
  let hasWinner = false; //판단 결과
  //   // 가로줄 검사
  if (
    rows[rowIndex][0].textContent === turn &&
    rows[rowIndex][1].textContent === turn &&
    rows[rowIndex][2].textContent === turn
  ) {
    hasWinner = true;
  }
  //   // 세로줄 검사
  if (
    rows[0][cellIndex].textContent === turn &&
    rows[1][cellIndex].textContent === turn &&
    rows[2][cellIndex].textContent === turn
  ) {
    hasWinner = true;
  }
  //   // 대각선 검사
  if (
    rows[0][0].textContent === turn &&
    rows[1][1].textContent === turn &&
    rows[2][2].textContent === turn
  ) {
    hasWinner = true;
  }
  if (
    rows[0][2].textContent === turn &&
    rows[1][1].textContent === turn &&
    rows[2][0].textContent === turn
  ) {
    hasWinner = true;
  }
  return hasWinner;
};
 
// 3 × 3 표의 td 클릭 이벤트 처리 함수
const callback = (event) => {
  if (event.target.textContent !== "") {
    //현재 클릭 td의 text 값
    console.log("빈칸이 아닙니다.");
    return;
  }
  // 빈칸이면
  console.log("빈칸입니다");
  event.target.textContent = turn; //O, X
 
  // 승부 판단하기
  const hasWinner = checkWinner(event.target);
 
  if (hasWinner) {
    $result.textContent = `${turn}님이 승리!`;
    $table.removeEventListener("click", callback);
    return;
  }
  // 무승부 검사 : td text가 O, X로 다 채워졌으면 무승부
  const draw = rows.flat().every((cell) => cell.textContent);
  if (draw) {
    $result.textContent = `무승부`;
    return;
  }
  turn = turn === "X" ? "O" : "X"; //다음 차례로 바뀐다.
};
 
//버블링 이벤트 , 3 × 3 표의 td 클릭 이벤트 등록
$table.addEventListener("click", callback);