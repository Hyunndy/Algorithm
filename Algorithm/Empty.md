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

# Stack
## Stack 코테 적용 방법
- LIFO(Last-Input-First-Out) 특성을 활용한 문제
- DFS(깊이 우선 탐색)에 사용

## 
- 짝을 맞춰야 하는가?
- LIFO를 들이밀었을 때 대충 풀릴 것 같은가?
- 괄호 처럼 예쁜 짝이 아니더라도, 날씨 처럼 어떻게든 짝이 이뤄져야 pop 되는애들인지 보자.


## 대표 문제 유형
- 괄호 유효성 문제: https://leetcode.com/problems/valid-parentheses/
- 오늘의 날씨 : https://leetcode.com/problems/daily-temperatures/submissions/915741750/

# Hash Table
존.나 많이나옵니다.
## HashTable이란?
hash func h에 key값을 넣어서 얻은 해시 값 h(key)를 index(위치) 삼아 key-value 데이터 쌍을 저장한다.
Collision 이슈가 있어서 최아그이 경우 O(n)이 될 수 있음
이걸 쓰는 이유는 메모리를 많이 써서 시간 복잡도를 줄이기 위함임.
문제에서 대놓고 시간 복잡도 빡세보이면 Hash Table 활용을 생각해보는게 좋다.

## Swift에서 사용 하기
- Dictionary
- Set

- 데이터 찾기 시간 복잡도: O(1)

## 대표 문제 유형
- Two Sum:
    https://leetcode.com/problems/two-sum/
- 연속된 순열(존나별표): https://leetcode.com/problems/longest-consecutive-sequence
