#  Array
## 고정된 저장 공간
## 순차적인 데이터 저장
## 접근/수정/delete_back/append : O(1)
## insert at / delete at : O(n) -> for문이 도니까
## 선언 & 초기화: O(n)
## 배열의 sort 시간복잡도 그냥 외우기: O(nlogn) 

# Linked List
## Node
-> value + 다음 Node로의 주소 값 저장
## 메모리가 비연속적으로 저장됨
## head = Linked List의 첫 번째 노드! (tail은 Optional)
## 기본 연산(insert, delete, get 등) 은 tail 없이 반복문 돌면 시간복잡도 : O(n)

## Linked List 코테 적용 방법
- Linked List 자유 자재로 구현 (선형 자료구조 + 중간에 데이터 추가/삭제 용이)
- Tree Or Graph에 활용
- Linked List 단독으로 문제는 잘 안나오고 Tree 나 Graph, 특히 Tree 구현에 많이 나온다.

# 리트코드 대표 문제(반복할 것)
LinkedList: https://leetcode.com/problems/design-browser-history/

