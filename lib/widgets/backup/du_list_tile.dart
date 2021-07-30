// import 'package:du_mobile/index.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:du_mobile/utils/extension/extension.dart';

// /// 이미지 모양
// enum ImageShape {
//   ///사각형
//   SQUARE,

//   ///원형
//   CIRCLE,
// }

// /// 수업 타입
// enum ClassType {
//   ///수업중
//   START,

//   ///수업종료
//   END,

//   ///수업정지
//   STOP,
// }

// // ignore: must_be_immutable
// class DUListTile extends StatefulWidget {
//   /// 리스트타일 상품타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F486ce563-6627-40f6-afdd-e607aa36481f%2FUntitled.png?table=block&id=20f4a091-e24e-4e13-877a-37bedc3e81d0&spaceId=d70ee7e1-e708-4ce8-a027-8aa2ca80df25&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.typeProduct(
//   ///   maker: '나이키',
//   ///   title: '나이키 X 사카이 베이퍼와 플 Black And White',
//   ///   datetime: DateTime.now(),
//   ///   costPrice: 219000,
//   ///   discountPrice: 219000,
//   ///   discountRate: 45,
//   ///   isFreeDelivery: true,
//   ///   onTap: () {
//   ///     print('typeProduct');
//   ///   },
//   /// )
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [onTap], 클릭 이벤트
//   ///  * [maker], 메이커
//   ///  * [title], 제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [datetime], 판매시간
//   ///  * [discountRate], 할인율
//   ///  * [discountPrice], 할인된 가격
//   ///  * [costPrice], 원가
//   ///  * [isFreeDelivery], 무료배송 여부
//   ///
//   ///
//   DUListTile.typeProduct({
//     String? maker,
//     String? title,
//     VoidCallback? onTapShare,
//     VoidCallback? onTapLike,
//     DateTime? datetime,
//     int? discountRate,
//     int? discountPrice,
//     int? costPrice,
//     bool? isFreeDelivery,
//     bool? isOnline,
//   }) : widget = _TypeProduct(
//           maker: maker,
//           title: title,
//           onTapShare: onTapShare,
//           onTapLike: onTapLike,
//           datetime: datetime,
//           discountRate: discountRate,
//           discountPrice: discountPrice,
//           costPrice: costPrice,
//           isFreeDelivery: isFreeDelivery ?? false,
//           isOnline: isOnline ?? false,
//         );

//   /// 리스트타일 공지타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Ff604fcf2-c573-494c-8e8e-c2d503f22743%2FUntitled.png?table=block&id=61199d6d-1f6f-448d-9ef8-8abc75ec9965&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.typeNotice(
//   ///   title: '들어오시면 간단한 자기소개를 해주세요.',
//   ///   subTitle: '2020.05.28',
//   ///   onTap: () {
//   ///     print('typeNotice');
//   ///   },
//   // ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 주제목
//   ///  * [subTitle], 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.typeNotice({
//     String? title,
//     String? subTitle,
//     VoidCallback? onTap,
//     bool isEffect = true,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _TypeNotice(
//           title: title ?? '',
//           isEffect: isEffect,
//           subTitle: subTitle,
//           onTap: onTap,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//         );

//   /// 리스트타일 파일타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fbf1e23fd-710b-4e1e-8104-ba94ec229db2%2FUntitled.png?table=block&id=13bdd77b-a4cd-45cd-a0b9-64dd0ee3040d&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.typeFile(
//   ///   title: '비즈플레이 지출결의서 작성법.mkv',
//   ///   firstSubTitle: '19.4 MB',
//   ///   secondSubTitle: '유효기간 2020.09.06',
//   ///   onTap: () {
//   ///     print('typeFile');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [title], 주제목
//   ///  * [firstSubTitle], 첫번째 부제목
//   ///  * [secondSubTitle], 두번째 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.typeFile({
//     String? title,
//     String? firstSubTitle,
//     String? secondSubTitle,
//     VoidCallback? onTap,
//     bool? isEffect,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _TypeFile(
//           isEffect: isEffect ?? false,
//           title: title,
//           firstSubTitle: firstSubTitle,
//           secondSubTitle: secondSubTitle,
//           onTap: onTap,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//         );

//   /// 리스트타일 비디오타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F3c6bcfd0-3d43-4b64-a27d-80e52ec8eeb5%2FUntitled.png?table=block&id=cad37ded-2bde-4ccd-b1a3-4b45acf23fb8&width=2880&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.typeVideo(
//   ///   imagePath: 'assets/images/icon/...'
//   ///   title: '오늘의 메뉴!! 새우 튀김과 양송이 스프, 어디까지 먹어봤니',
//   ///   firstSubTitle: '2019년 8월 28일',
//   ///   secondSubTitle: '983회',
//   ///   onTap: () {
//   ///     print('typeVideo');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [title], 주제목
//   ///  * [firstSubTitle], 첫번째 부제목
//   ///  * [secondSubTitle], 두번째 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.typeVideo({
//     String? imagePath,
//     String? title,
//     String? firstSubTitle,
//     String? secondSubTitle,
//     VoidCallback? onTap,
//     bool? isEffect,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _TypeVideo(
//             imagePath: imagePath ?? '',
//             title: title ?? '',
//             firstSubTitle: firstSubTitle ?? '',
//             secondSubTitle: secondSubTitle ?? '',
//             onTap: onTap,
//             padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//             isEffect: isEffect ?? false);

//   /// 이미지30 사이즈 리스트타일 A타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F591766d2-3ffa-4829-a812-f51e25983ccb%2FUntitled.png?table=block&id=5a956a75-4d5f-426f-8476-925ea803e3e9&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type30A(
//   ///   imagePath: 'assets/images/icon/...'
//   ///   title: '이여름',
//   ///   subTitle: '6월 18일 오전 11:22',
//   ///   content:
//   ///       '코로나로 인하여 이번주 수업은 미진행될 예정입니다.\n6월 22~26일까지 5일간 미진행\n참고 부탁드립니다.',
//   ///   onTap: () {
//   ///     print('type30A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [subTitle], 부제목
//   ///  * [content], 내용
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type30A({
//     String? imagePath,
//     ImageShape? imageShape,
//     String? title,
//     String? subTitle,
//     String? content,
//     VoidCallback? onTap,
//     bool? isEffect,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type30A(
//           imagePath: imagePath ?? '',
//           imageShape: imageShape ?? ImageShape.SQUARE,
//           title: title ?? '',
//           subTitle: subTitle ?? '',
//           content: content ?? '',
//           onTap: onTap,
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//         );

//   /// 이미지40 사이즈 리스트타일 A타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fd4665f6b-1f86-42f8-a64f-016e0de07d5f%2FUntitled.png?table=block&id=a5db4ac4-072d-4a7c-8775-96eadc2c9af5&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F2ed8454e-de89-40b7-9961-55d876f808a5%2FUntitled.png?table=block&id=45a65d12-dbc2-4546-ad74-150f14258595&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F504c959f-bd79-4c85-a5de-cc87da97be83%2FUntitled.png?table=block&id=830745cf-f23c-488f-b30c-ccbc004ba413&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type40A(
//   ///   imagePath: 'assets/images/icon/...',
//   ///   title: '이여름',
//   ///   subTitle: '1학년 / 3반 / 2번',
//   ///   onTap: () {
//   ///     print('type40A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [subTitle], 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [trailing], 후열 위젯
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type40A({
//     Widget? trailing,
//     String? imagePath,
//     ImageShape? imageShape,
//     String? title,
//     String? subTitle,
//     VoidCallback? onTap,
//     String? classTime,
//     bool? isEffect,
//     bool? isOnline,
//     bool? isClassOpen,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type40A(
//           imagePath: imagePath ?? '',
//           imageShape: imageShape ?? ImageShape.SQUARE,
//           title: title ?? '',
//           subTitle: subTitle ?? '',
//           onTap: onTap,
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//         );

//   /// 이미지40 사이즈 리스트타일 B타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F0cc7adf7-41f7-46ab-9ebf-d79db9c1ee25%2FUntitled.png?table=block&id=d1e22ca5-a8d7-4d37-a936-c10a8e556f46&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type40B(
//   ///   title: '이여름',
//   ///   rating: 3,
//   ///   datetime: DateTime.now(),
//   ///   subTitle: '방송스피치 성우 A 18일 오전 11:22',
//   ///   contentTitle: '방송스피치 성우 A',
//   ///   content:'번에도 요청사항 잘 챙겨주셔서 감사해용 양파 많이 부탁드린다고 적어 놓으신걸 잊었는데 양파까지 챙겨주셔서 감동 받았습니다.',
//   ///   onTap: () {
//   ///     print('type30A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [datetime], 시간
//   ///  * [rating], 평점
//   ///  * [title], 주제목
//   ///  * [subTitle], 부제목
//   ///  * [contentTitle], 내용 제목
//   ///  * [content], 내용
//   ///  * [onTap], 클릭 이벤트
//   ///  * [trailing], 후열 위젯
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type40B({
//     String? imagePath,
//     ImageShape? imageShape,
//     String? title,
//     String? subTitle,
//     VoidCallback? onTap,
//     bool? isEffect,
//     DateTime? datetime,
//     String? content,
//     int rating = 0,
//     String? contentTitle,
//     Widget? trailing,
//     EdgeInsetsGeometry? padding,
//   })  : assert(rating >= 0 && rating <= 5),
//         widget = _Type40B(
//           imagePath: imagePath ?? '',
//           imageShape: imageShape,
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           content: content,
//           contentTitle: contentTitle,
//           datetime: datetime,
//           onTap: onTap,
//           rating: rating,
//           subTitle: subTitle,
//           title: title ?? '',
//           trailing: trailing,
//         );

//   /// 이미지48 사이즈 리스트타일 A타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fb56565d0-5734-43e7-9e81-7359a8248339%2FUntitled.png?table=block&id=54cf5052-e3f6-460f-9f04-479e15e27afa&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fe31b9914-b871-4f49-a78e-7d23e720a856%2FUntitled.png?table=block&id=da740898-cd22-43be-a373-38c05d2418e8&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type48A(
//   ///   imagePath: 'assets/images/icon/...'
//   ///   title: '에캄샬라 오전반11111111111111',
//   ///   subTitle: '아미비리. 약학과 우라라라라',
//   ///   onTap: () {
//   ///     print('type48A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [datetime], 시간
//   ///  * [subTitle], 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type48A({
//     String? imagePath,
//     ImageShape? imageShape,
//     bool? isEffect,
//     bool? showVideo,
//     bool? isAlramOff,
//     int? roomMemberCount,
//     String? subTitle,
//     String? title,
//     DateTime? datetime,
//     VoidCallback? onTap,
//     Widget? trailing,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type48A(
//           imagePath: imagePath ?? '',
//           imageShape: imageShape,
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           datetime: datetime,
//           onTap: onTap,
//           isAlramOff: isAlramOff ?? false,
//           roomMemberCount: roomMemberCount,
//           showVideo: showVideo ?? false,
//           subTitle: subTitle,
//           title: title ?? '',
//           trailing: trailing,
//         );

//   /// 이미지54 사이즈 리스트타일 A타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F98e8c1a9-5f2c-4054-97d8-dcfeb7a56074%2FUntitled.png?table=block&id=6822e4b8-a04a-44f2-8723-ac07bba125b9&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F4fa03673-6cf3-4501-b22b-b5d8dba3093c%2FUntitled.png?table=block&id=38935fe9-0e08-4b3f-91b1-c179cb3dd342&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type54A(
//   ///   imagePath: 'assets/images/icon/...'
//   ///   title: '고인정 부원장',
//   ///   subTitle: '여수 밤바다 이 조명에 담긴 아름다운 얘기 가 있어 네게 들려주고파 전활해주고싶어',
//   ///   onTap: () {
//   ///     print('type54A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [subTitle], 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type54A({
//     String? imagePath,
//     ImageShape? imageShape,
//     String? title,
//     String? subTitle,
//     VoidCallback? onTap,
//     bool? isEffect,
//     Widget? trailing,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type54A(
//           imagePath: imagePath ?? '',
//           imageShape: imageShape ?? ImageShape.SQUARE,
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           onTap: onTap,
//           subTitle: subTitle,
//           title: title ?? '',
//           trailing: trailing,
//         );

//   /// 이미지54 사이즈 리스트타일 B타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F4d4e131c-f62f-4ef0-acfc-730e3fddee83%2FUntitled.png?table=block&id=8e66d0bd-7d31-403b-a7aa-c6c4bdfa48fd&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type54B(
//   ///   title: '삼평초등학교',
//   ///   firstSubTitle: '어린이들의 새로운 소식을 전합니다.',
//   ///   secondSubTitle: 'www.naver.com',
//   ///   onTap: () {
//   ///     print('type54B');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [firstSubTitle], 첫번째 부제목
//   ///  * [secondSubTitle], 두번째 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type54B({
//     String? imagePath,
//     String? title,
//     String? firstSubTitle,
//     String? secondSubTitle,
//     VoidCallback? onTap,
//     bool? isEffect,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type54B(
//           imagePath: imagePath ?? '',
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           onTap: onTap,
//           firstSubTitle: firstSubTitle,
//           secondSubTitle: secondSubTitle,
//           title: title ?? '',
//         );

//   /// 이미지54 사이즈 리스트타일 C타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fc874292e-eb87-4d77-ac95-a633a5e378b5%2FUntitled.png?table=block&id=fbd1ea72-50bc-4af4-a606-04643086c888&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type54C(
//   ///   title: '트레이닝슈즈',
//   ///   firstSubTitle: 'ABC마트2',
//   ///   secondSubTitle: '6월 13일 16:19 결제완료',
//   ///   onTap: () {
//   ///     print('type54C');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [firstSubTitle], 첫번째 부제목
//   ///  * [secondSubTitle], 두번째 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type54C({
//     String? imagePath,
//     String? title,
//     String? firstSubTitle,
//     String? secondSubTitle,
//     VoidCallback? onTap,
//     Widget? trailing,
//     bool? isEffect,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type54C(
//           imagePath: imagePath ?? '',
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           onTap: onTap,
//           firstSubTitle: firstSubTitle,
//           secondSubTitle: secondSubTitle,
//           title: title ?? '',
//           trailing: trailing,
//         );

//   /// 이미지54 사이즈 리스트타일 D타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F1338ffa9-617f-4ac9-b0c2-4f514159fc21%2FUntitled.png?table=block&id=27259f25-0849-4ec1-a845-3a5206ea25d9&spaceId=d70ee7e1-e708-4ce8-a027-8aa2ca80df25&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type54D(
//   ///   time: '1600',
//   ///   title: '클래식 필라테스',
//   ///   firstSubTitle: '최아름 강사',
//   ///   secondSubTitle: '2/3명',
//   ///   isOnline: true,
//   ///   onTap: () {
//   ///     print('type54D');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [classTime], 시간
//   ///  * [title], 주제목
//   ///  * [firstSubTitle], 첫번째 부제목
//   ///  * [secondSubTitle], 두번째 부제목
//   ///  * [isOnline], 온라인 여부
//   ///  * [isClassOpen], 개설 여부
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type54D({
//     String? imagePath,
//     ImageShape? imageShape,
//     String? classTime,
//     String? title,
//     String? firstSubTitle,
//     String? secondSubTitle,
//     String? subTitle,
//     bool? isOnline,
//     bool? isClassOpen,
//     VoidCallback? onTap,
//     bool? isEffect,
//     Widget? trailing,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type54D(
//           imagePath: imagePath ?? '',
//           imageShape: imageShape ?? ImageShape.SQUARE,
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           onTap: onTap,
//           firstSubTitle: firstSubTitle,
//           secondSubTitle: secondSubTitle,
//           title: title ?? '',
//           trailing: trailing,
//           classTime: classTime ?? '0000',
//           isOnline: isOnline ?? false,
//           subTitle: subTitle,
//           isClassOpen: isClassOpen ?? false,
//         );

//   /// 이미지60 사이즈 리스트타일 A타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F3f954fb6-81a3-4d72-86e1-8438116febd5%2FUntitled.png?table=block&id=b97f8036-3644-487c-afae-6e366a04022d&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type60A(
//   ///   imagePath: 'assets/images/icon/...'
//   ///   title: '피어 오브 갓',
//   ///   firstSubTitle: '60,000원',
//   ///   secondSubTitle: '등록일 2020.10.17',
//   ///   onTap: () {
//   ///     print('type60A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [firstSubTitle], 첫번째 부제목
//   ///  * [secondSubTitle], 두번째 부제목
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type60A({
//     String? imagePath,
//     ImageShape? imageShape,
//     String? title,
//     String? firstSubTitle,
//     String? secondSubTitle,
//     VoidCallback? onTap,
//     bool? isEffect,
//     Widget? trailing,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type60A(
//           imagePath: imagePath ?? '',
//           imageShape: ImageShape.SQUARE,
//           title: title ?? '',
//           firstSubTitle: firstSubTitle ?? '',
//           secondSubTitle: secondSubTitle ?? '',
//           onTap: onTap,
//           isEffect: isEffect ?? true,
//           trailing: trailing,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//         );

//   /// 이미지108 사이즈 리스트타일 A타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F685e50bf-def9-4da6-84c6-a2a48f113913%2FUntitled.png?table=block&id=defd45fb-c2e8-47f6-9ce0-b975052da60b&width=2560&userId=b0204581-9f2f-445d-9abf-5841aafe9f52&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type108A(
//   ///   imagePath: 'assets/images/icon/...'
//   ///   subTitle: '보평중학교',
//   ///   title: '백조의 호수 발레수업 너도 백조가 될수 있어',
//   ///   costPrice: 4000000000,
//   ///   discountRate: 20,
//   ///   discountPrice: 36000000,
//   ///   onTap: () {
//   ///     print('type108A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [subTitle], 부제목
//   ///  * [discountRate], 할인율
//   ///  * [discountPrice], 할인된 가격
//   ///  * [costPrice], 원가
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type108A({
//     String? imagePath,
//     ImageShape? imageShape,
//     String? title,
//     String? subTitle,
//     String? productName,
//     VoidCallback? onTap,
//     bool? isEffect,
//     Widget? trailing,
//     int? costPrice,
//     int? discountPrice,
//     int? discountRate,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type108A(
//           costPrice: costPrice,
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           discountPrice: discountPrice,
//           discountRate: discountRate,
//           imagePath: imagePath ?? '',
//           imageShape: ImageShape.SQUARE,
//           onTap: onTap,
//           productName: productName,
//           subTitle: subTitle,
//           title: title,
//         );

//   /// 이미지108 사이즈 리스트타일 B타입
//   ///
//   /// ![](https://www.notion.so/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Ff6a0826d-87ef-44d3-87f4-022f9ff5d49f%2FUntitled.png?table=block&id=f76c1b48-d864-486e-855d-95c8abdd0f05&spaceId=d70ee7e1-e708-4ce8-a027-8aa2ca80df25&width=2650&userId=05066ac8-8f94-4da3-9abd-eec86cc4a05b&cache=v2)
//   ///
//   /// {@tool snippet}
//   ///
//   /// ```dart
//   /// DUListTile.type108B(
//   ///   title: '전문가의 상담이 필요한 때, 지인IN 엑스퍼트, 집콕 생활이 지루할 때 지루할 때 지루할 때 지루할 때',
//   ///   discountRate: 20,
//   ///   discountPrice: 33600,
//   ///   costPrice: 42000,
//   ///   productList: ['최아름 강사', '이예선 강사', '박정현 강사', '김정훈 강사'],
//   ///   classType: ClassType.START,
//   ///   onTap: () {
//   ///     print('type108A');
//   ///   },
//   /// ),
//   /// ```
//   /// {@end-tool}
//   ///
//   /// See also:
//   ///
//   ///  * [imagePath], 이미지 아이콘
//   ///  * [imageShape], 이미지 모양(사각형,원형)
//   ///  * [title], 주제목
//   ///  * [discountRate], 할인율
//   ///  * [discountPrice], 할인된 가격
//   ///  * [costPrice], 원가
//   ///  * [productList], 강사 리스트
//   ///  * [classType], 수업상태
//   ///  * [onTap], 클릭 이벤트
//   ///  * [padding], 패딩
//   ///
//   DUListTile.type108B({
//     String? imagePath,
//     ImageShape? imageShape,
//     String? title,
//     int? discountRate,
//     int? discountPrice,
//     int? costPrice,
//     List<String>? productList,
//     ClassType? classType,
//     VoidCallback? onTap,
//     bool? isEffect,
//     EdgeInsetsGeometry? padding,
//   }) : widget = _Type108B(
//           isEffect: isEffect ?? true,
//           padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//           classType: classType,
//           costPrice: costPrice,
//           discountPrice: discountPrice,
//           discountRate: discountRate,
//           imagePath: imagePath ?? '',
//           imageShape: imageShape ?? ImageShape.SQUARE,
//           onTap: onTap,
//           productList: productList ?? [],
//           title: title,
//         );

//   DUListTile.typeIconAddress({
//     Key? key,
//     String? iconPath,
//     String? touchIconPath,
//     String? lotAddress,
//     String? strAddress,
//     String? title,
//     bool? isEffect,
//     bool? initValue,
//     VoidCallback? onTap,
//     EdgeInsetsGeometry? padding,
//   })  : widget = _TypeIconAddress(
//           iconPath: iconPath,
//           touchIconPath: touchIconPath,
//           lotAddress: lotAddress,
//           onTap: onTap,
//           initValue: initValue,
//           padding: padding,
//           isEffect: isEffect,
//           strAddress: strAddress,
//           title: title,
//         ),
//         super(key: key);

//   /// common widget
//   final State<StatefulWidget> widget;

//   @override
//   State<StatefulWidget> createState() => widget;
// }

// class _TypeVideo extends State<DUListTile> {
//   _TypeVideo(
//       {this.onTap,
//       this.title,
//       this.subTitle,
//       this.firstSubTitle,
//       this.secondSubTitle,
//       required this.imagePath,
//       required this.isEffect,
//       required this.padding});

//   /// 이미지 경로
//   final String imagePath;

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 첫번째 부제목
//   final String? firstSubTitle;

//   /// 두번째 부제목
//   final String? secondSubTitle;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: onTap,
//         hoverColor: isEffect ? null : Colors.transparent,
//         highlightColor: isEffect ? null : Colors.transparent,
//         splashColor: isEffect ? null : Colors.transparent,
//         child: Padding(
//           padding: padding,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 135,
//                   height: 76,
//                   child: duGetImageWidget(imagePath),
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         title ?? '',
//                         style: DUTextStyle.black_2D2D2D_14,
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       SizedBox(
//                         height: 2,
//                       ),
//                       Text(
//                         firstSubTitle.toString() +
//                             ' ∙ ' +
//                             secondSubTitle.toString(),
//                         style: DUTextStyle.grey_8F8F8F_12,
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class _TypeIconAddress extends State<DUListTile> {
//   _TypeIconAddress({
//     String? iconPath,
//     String? touchIconPath,
//     String? strAddress,
//     String? lotAddress,
//     String? title,
//     bool? initValue,
//     EdgeInsetsGeometry? padding,
//     bool? isEffect,
//     this.onTap,
//   })  : this.iconPath = iconPath ?? DUIcons.svgMarkerDim,
//         this.touchIconPath = touchIconPath ?? DUIcons.svgMarker,
//         this.strAddress = strAddress ?? '',
//         this.lotAddress = lotAddress ?? '',
//         this.isEffect = isEffect ?? true,
//         this.title = title,
//         this.initValue = initValue ?? false,
//         this.padding = padding ?? const EdgeInsets.symmetric(horizontal: 16);

//   /// 아이콘 경로
//   final String iconPath;

//   /// 아이콘 경로
//   final String touchIconPath;

//   /// 타이틀
//   final String? title;

//   /// 도로명 주소
//   final String strAddress;

//   /// 지번 주소
//   final String lotAddress;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   ///선택 여부
//   final bool initValue;

//   late bool touch;

//   @override
//   void initState() {
//     super.initState();
//     touch = initValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       onTap: () {
//         if (onTap != null) onTap!();

//         setState(() {
//           touch = !touch;
//         });
//       },
//       child: Container(
//         padding: padding,
//         child: Padding(
//           padding: DUPadding.vertical8,
//           child: Row(
//             children: [
//               SvgPicture.asset(touch ? touchIconPath : iconPath),
//               DUSizedBox.w16(),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   if (title != null)
//                     Text(
//                       title!,
//                       style: DUTextStyle.black_2D2D2D_16,
//                     ),
//                   Text(
//                     strAddress,
//                     style: DUTextStyle.black_2D2D2D_12,
//                   ),
//                   Text(
//                     lotAddress,
//                     style: DUTextStyle.grey_B7B7B7_12,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _Type30A extends State<DUListTile> {
//   _Type30A(
//       {required this.imagePath,
//       required this.imageShape,
//       this.title,
//       this.subTitle,
//       this.onTap,
//       required this.isEffect,
//       required this.padding,
//       this.firstSubTitle,
//       this.secondSubTitle,
//       this.classTime,
//       this.isOnline,
//       this.isClassOpen,
//       this.content,
//       this.trailing});

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   final ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 첫번째 부제목
//   final String? firstSubTitle;

//   /// 두번째 부제목
//   final String? secondSubTitle;

//   /// 수업시간(오후4시 -> '1600')
//   final String? classTime;

//   /// 온라인 여부
//   final bool? isOnline;

//   /// 수업 개설 여부
//   final bool? isClassOpen;

//   /// 본문내용
//   final String? content;

//   /// 후열 위젯
//   final Widget? trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   ClipRRect(
//                     borderRadius: imageShape == ImageShape.CIRCLE
//                         ? BorderRadius.circular(50)
//                         : BorderRadius.circular(0),
//                     child: SizedBox(
//                       width: 30,
//                       height: 30,
//                       child: duGetImageWidget(imagePath),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           title ?? '',
//                           style: DUTextStyle.black_2D2D2D_15,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         if (subTitle.isNullOrEmpty)
//                           Text(
//                             subTitle ?? '',
//                             style: DUTextStyle.grey_8F8F8F_12,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               // ListTile(
//               //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
//               //   horizontalTitleGap: 8,
//               //   leading: ClipRRect(
//               //     borderRadius: imageShape == ImageShape.CIRCLE
//               //         ? BorderRadius.circular(50)
//               //         : BorderRadius.circular(0),
//               //     child: SizedBox(
//               //       width: 30,
//               //       height: 30,
//               //       child: duGetImageWidget(imagePath),
//               //     ),
//               //   ),
//               //   title: Text(
//               //     title ?? '',
//               //     style: DUTextStyle.black_2D2D2D_15,
//               //     maxLines: 1,
//               //     overflow: TextOverflow.ellipsis,
//               //   ),
//               //   subtitle: subTitle == null
//               //       ? null
//               //       : Text(
//               //           subTitle ?? '',
//               //           style: DUTextStyle.grey_8F8F8F_12,
//               //           maxLines: 2,
//               //           overflow: TextOverflow.ellipsis,
//               //         ),
//               // ),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 0),
//                 child: content == null
//                     ? Container()
//                     : Text(
//                         content ?? '',
//                         style: DUTextStyle.black_2D2D2D_14,
//                       ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _Type40A extends State<DUListTile> {
//   _Type40A(
//       {required this.imagePath,
//       required this.imageShape,
//       this.title,
//       this.subTitle,
//       this.onTap,
//       required this.isEffect,
//       required this.padding,
//       this.trailing});

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   final ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 후열 위젯
//   final Widget? trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 40,
//                   height: 40,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_15,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     if (subTitle.isNullOrEmpty) ...[
//                       SizedBox(
//                         height: 2,
//                       ),
//                       Text(
//                         subTitle ?? '',
//                         style: DUTextStyle.grey_8F8F8F_12,
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ]
//                   ],
//                 ),
//               ),
//               if (trailing != null) trailing!
//             ],
//           ),
//         ),
//         // child: ListTile(
//         //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
//         //   horizontalTitleGap: 8,
//         //   leading: ClipRRect(
//         //     borderRadius: imageShape == ImageShape.CIRCLE
//         //         ? BorderRadius.circular(50)
//         //         : BorderRadius.circular(0),
//         //     child: SizedBox(
//         //       width: 40,
//         //       height: 40,
//         //       child: duGetImageWidget(imagePath),
//         //     ),
//         //   ),
//         //   title: Text(
//         //     title ?? '',
//         //     style: DUTextStyle.black_2D2D2D_15,
//         //     maxLines: 1,
//         //     overflow: TextOverflow.ellipsis,
//         //   ),
//         //   subtitle: subTitle == null
//         //       ? null
//         //       : Text(
//         //           subTitle ?? '',
//         //           style: DUTextStyle.grey_8F8F8F_12,
//         //           maxLines: 2,
//         //           overflow: TextOverflow.ellipsis,
//         //         ),
//         //   trailing: trailing,
//         // ),
//       ),
//     );
//   }
// }

// class _Type40B extends State<DUListTile> {
//   _Type40B(
//       {required this.imagePath,
//       required this.imageShape,
//       this.title,
//       this.subTitle,
//       this.onTap,
//       required this.isEffect,
//       required this.padding,
//       this.datetime,
//       this.content,
//       this.rating,
//       this.contentTitle,
//       this.trailing});

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   final ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 채팅시간 & 상품시간 & 판매시간
//   final DateTime? datetime;

//   /// 본문내용
//   final String? content;

//   /// 평가점수
//   final int? rating;

//   /// 본문내용
//   final String? contentTitle;

//   /// 후열 위젯
//   final Widget? trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 children: [
//                   ClipRRect(
//                     borderRadius: imageShape == ImageShape.CIRCLE
//                         ? BorderRadius.circular(50)
//                         : BorderRadius.circular(0),
//                     child: SizedBox(
//                       width: 40,
//                       height: 40,
//                       child: duGetImageWidget(imagePath),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 40,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Row(
//                               children: [
//                                 Text(
//                                   title ?? '',
//                                   style: DUTextStyle.black_2D2D2D_14,
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 if (datetime != null) ...[
//                                   SizedBox(
//                                     width: 8,
//                                   ),
//                                   Text(
//                                     datetime!.toFullDateString3(),
//                                     style: DUTextStyle.grey_8F8F8F_12,
//                                   )
//                                 ]
//                               ],
//                             ),
//                           ),
//                           if (subTitle.isNullOrEmpty) ...[
//                             Expanded(
//                               child: RatingBarIndicator(
//                                 rating: rating!.toDouble(),
//                                 itemBuilder: (context, index) => Icon(
//                                   Icons.star,
//                                   color: Colors.amber,
//                                 ),
//                                 itemCount: 5,
//                                 itemSize: 16.0,
//                                 unratedColor: Colors.amber.withAlpha(50),
//                                 direction: Axis.horizontal,
//                               ),
//                             ),
//                           ],
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     content == null
//                         ? Container()
//                         : Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 contentTitle ?? '',
//                                 style: DUTextStyle.grey_8F8F8F_14,
//                               ),
//                               SizedBox(
//                                 height: 4,
//                               ),
//                               Text(
//                                 content ?? '',
//                                 style: DUTextStyle.black_2D2D2D_14,
//                               ),
//                             ],
//                           ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           // child: Column(
//           //   crossAxisAlignment: CrossAxisAlignment.start,
//           //   children: [
//           //     Row(
//           //       children: [
//           //         ClipRRect(
//           //           borderRadius: imageShape == ImageShape.CIRCLE
//           //               ? BorderRadius.circular(50)
//           //               : BorderRadius.circular(0),
//           //           child: SizedBox(
//           //             width: 40,
//           //             height: 40,
//           //             child: duGetImageWidget(imagePath),
//           //           ),
//           //         ),
//           //         SizedBox(
//           //           width: 8,
//           //         ),
//           //         Expanded(
//           //           child: Column(
//           //             crossAxisAlignment: CrossAxisAlignment.start,
//           //             children: [
//           //               Row(
//           //                 children: [
//           //                   Text(
//           //                     title ?? '',
//           //                     style: DUTextStyle.black_2D2D2D_14,
//           //                     maxLines: 1,
//           //                     overflow: TextOverflow.ellipsis,
//           //                   ),
//           //                   if (datetime != null) ...[
//           //                     SizedBox(
//           //                       width: 8,
//           //                     ),
//           //                     Text(
//           //                       datetime!.toFullDateString3(),
//           //                       style: DUTextStyle.grey_8F8F8F_12,
//           //                     )
//           //                   ]
//           //                 ],
//           //               ),
//           //               if (subTitle.isNullOrEmpty) ...[
//           //                 SizedBox(height: 4),
//           //                 RatingBarIndicator(
//           //                   rating: rating!.toDouble(),
//           //                   itemBuilder: (context, index) => Icon(
//           //                     Icons.star,
//           //                     color: Colors.amber,
//           //                   ),
//           //                   itemCount: 5,
//           //                   itemSize: 16.0,
//           //                   unratedColor: Colors.amber.withAlpha(50),
//           //                   direction: Axis.horizontal,
//           //                 ),
//           //               ]
//           //             ],
//           //           ),
//           //         ),
//           //       ],
//           //     ),
//           //     SizedBox(
//           //       height: 8,
//           //     ),
//           //     Padding(
//           //       padding: EdgeInsets.only(left: 48),
//           //       child: content == null
//           //           ? Container()
//           //           : Column(
//           //               crossAxisAlignment: CrossAxisAlignment.start,
//           //               children: [
//           //                 Text(
//           //                   contentTitle ?? '',
//           //                   style: DUTextStyle.grey_8F8F8F_14,
//           //                 ),
//           //                 SizedBox(
//           //                   height: 4,
//           //                 ),
//           //                 Text(
//           //                   content ?? '',
//           //                   style: DUTextStyle.black_2D2D2D_14,
//           //                 ),
//           //               ],
//           //             ),
//           //     ),
//           //   ],
//           // ),
//         ),
//       ),
//     );
//   }
// }

// class _Type48A extends State<DUListTile> {
//   _Type48A({
//     required this.imagePath,
//     required this.title,
//     this.subTitle,
//     this.onTap,
//     required this.isEffect,
//     required this.padding,
//     this.trailing,
//     this.datetime,
//     required this.isAlramOff,
//     required this.showVideo,
//     this.imageShape,
//     this.roomMemberCount,
//   });

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 후열 위젯
//   final Widget? trailing;

//   /// 채팅시간 & 상품시간 & 판매시간
//   final DateTime? datetime;

//   /// 방 인원수
//   final int? roomMemberCount;

//   /// 알림 꺼짐 여부
//   final bool isAlramOff;

//   /// 줌 방송중 표시여부
//   final bool showVideo;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 48,
//                   height: 48,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(
//                           child: Row(
//                             children: [
//                               Flexible(
//                                 // maxWidth: duWindowWidth * 0.35,
//                                 child: Text(
//                                   (title ?? '').replaceAll("", "\u{200B}"),
//                                   style: DUTextStyle.black_2D2D2D_15,
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                   softWrap: true,
//                                 ),
//                               ),
//                               if (roomMemberCount != null)
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 4),
//                                   child: Text(
//                                     roomMemberCount.toString(),
//                                     style: DUTextStyle.grey_8F8F8F_15,
//                                   ),
//                                 ),
//                               if (isAlramOff)
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 4),
//                                   child:
//                                       duGetIconWidget(DUIcons.svgAlramOffChat),
//                                 ),
//                               if (showVideo)
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 4),
//                                   child: duGetIconWidget(
//                                       'assets/images/icon/zoom_icon.jpg'),
//                                 )
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         datetime == null
//                             ? Text('')
//                             : Text(
//                                 datetime!.toTimestampString1(),
//                                 style: DUTextStyle.grey_8F8F8F_11,
//                               ),
//                       ],
//                     ),
//                     if (subTitle.isNullOrEmpty)
//                       Text(
//                         subTitle ?? '',
//                         style: DUTextStyle.grey_8F8F8F_12,
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                   ],
//                 ),
//               ),
//               if (trailing != null) trailing!
//             ],
//           ),
//         ),
//         // child: ListTile(
//         //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
//         //   horizontalTitleGap: 8,
//         //   dense: true,
//         //   leading: ClipRRect(
//         //     borderRadius: imageShape == ImageShape.CIRCLE
//         //         ? BorderRadius.circular(50)
//         //         : BorderRadius.circular(0),
//         //     child: SizedBox(
//         //       width: 40,
//         //       height: 40,
//         //       child: duGetImageWidget(imagePath),
//         //     ),
//         //   ),
//         //   title: Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     children: [
//         //       Expanded(
//         //         child: Text(
//         //           title ?? '',
//         //           style: DUTextStyle.black_2D2D2D_15,
//         //           maxLines: 1,
//         //           overflow: TextOverflow.ellipsis,
//         //         ),
//         //       ),
//         //       datetime == null
//         //           ? Text('')
//         //           : Text(
//         //               datetime!.toTimestampString1(),
//         //               style: DUTextStyle.grey_8F8F8F_11,
//         //             ),
//         //     ],
//         //   ),
//         //   subtitle: Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     children: [
//         //       Expanded(
//         //         child: Text(
//         //           subTitle ?? '',
//         //           style: DUTextStyle.grey_8F8F8F_12,
//         //           maxLines: 2,
//         //           overflow: TextOverflow.ellipsis,
//         //         ),
//         //       ),
//         //       SizedBox(
//         //         width: 24,
//         //         height: 18,
//         //         child: null,
//         //       )
//         //     ],
//         //   ),
//         //   trailing: trailing,
//         // ),
//       ),
//     );
//   }
// }

// class _Type54A extends State<DUListTile> {
//   _Type54A(
//       {required this.imagePath,
//       this.imageShape,
//       this.title,
//       this.subTitle,
//       this.onTap,
//       required this.isEffect,
//       required this.padding,
//       this.trailing});

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   final ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 후열 위젯
//   final Widget? trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 54,
//                   height: 54,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_15,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     if (subTitle.isNullOrEmpty)
//                       Text(
//                         subTitle ?? '',
//                         style: DUTextStyle.grey_8F8F8F_12,
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                   ],
//                 ),
//               ),
//               if (trailing != null) trailing!
//             ],
//           ),
//         ),
//         // child: ListTile(
//         //   visualDensity: VisualDensity.compact,
//         //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
//         //   horizontalTitleGap: 8,
//         //   leading: ClipRRect(
//         //     borderRadius: imageShape == ImageShape.CIRCLE
//         //         ? BorderRadius.circular(50)
//         //         : BorderRadius.circular(0),
//         //     child: SizedBox(
//         //       width: 54,
//         //       height: 54,
//         //       child: duGetImageWidget(imagePath),
//         //     ),
//         //   ),
//         //   title: Text(
//         //     title ?? '',
//         //     style: DUTextStyle.black_2D2D2D_15,
//         //     maxLines: 1,
//         //     overflow: TextOverflow.ellipsis,
//         //   ),
//         //   subtitle: subTitle == null ? null : Text(
//         //     subTitle ?? '',
//         //     style: DUTextStyle.grey_8F8F8F_12,
//         //     maxLines: 2,
//         //     overflow: TextOverflow.ellipsis,
//         //   ),
//         //   trailing: trailing
//         // ),
//       ),
//     );
//   }
// }

// class _Type54B extends State<DUListTile> {
//   _Type54B({
//     required this.imagePath,
//     this.title,
//     this.onTap,
//     required this.isEffect,
//     required this.padding,
//     this.firstSubTitle,
//     this.secondSubTitle,
//   });

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 첫번째 부제목
//   final String? firstSubTitle;

//   /// 두번째 부제목
//   final String? secondSubTitle;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 54,
//                   height: 54,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_15,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(height: 2),
//                     Text(
//                       firstSubTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Text(
//                       secondSubTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SvgPicture.asset(DUIcons.svgMore),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         // child: ListTile(
//         //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
//         //   horizontalTitleGap: 8,
//         //   isThreeLine: true,
//         //   leading: ClipRRect(
//         //     borderRadius: imageShape == ImageShape.CIRCLE
//         //         ? BorderRadius.circular(50)
//         //         : BorderRadius.circular(0),
//         //     child: SizedBox(
//         //       width: 54,
//         //       height: 54,
//         //       child: duGetImageWidget(imagePath),
//         //     ),
//         //   ),
//         //   title: Text(
//         //     title ?? '',
//         //     style: DUTextStyle.black_2D2D2D_14,
//         //     maxLines: 1,
//         //     overflow: TextOverflow.ellipsis,
//         //   ),
//         //   subtitle: Column(
//         //     crossAxisAlignment: CrossAxisAlignment.start,
//         //     children: [
//         //       Text(
//         //         firstSubTitle ?? '',
//         //         style: DUTextStyle.grey_8F8F8F_12,
//         //         maxLines: 1,
//         //         overflow: TextOverflow.ellipsis,
//         //       ),
//         //       Text(
//         //         secondSubTitle ?? '',
//         //         style: DUTextStyle.grey_8F8F8F_12,
//         //         maxLines: 1,
//         //         overflow: TextOverflow.ellipsis,
//         //       ),
//         //     ],
//         //   ),
//         //   trailing: Column(
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     children: <Widget>[
//         //       SvgPicture.asset(DUIcons.svgMore),
//         //     ],
//         //   ),
//         // ),
//       ),
//     );
//   }
// }

// class _Type54C extends State<DUListTile> {
//   _Type54C(
//       {required this.imagePath,
//       this.title,
//       this.onTap,
//       required this.isEffect,
//       required this.padding,
//       this.firstSubTitle,
//       this.secondSubTitle,
//       this.trailing});

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 첫번째 부제목
//   final String? firstSubTitle;

//   /// 두번째 부제목
//   final String? secondSubTitle;

//   /// 후열 위젯
//   final Widget? trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 54,
//                   height: 54,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_15,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(height: 2),
//                     Text(
//                       firstSubTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Text(
//                       secondSubTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//               if (trailing != null) trailing!
//             ],
//           ),
//         ),
//         // child: ListTile(
//         //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
//         //   horizontalTitleGap: 16,
//         //   isThreeLine: true,
//         //   leading: ClipRRect(
//         //     borderRadius: imageShape == ImageShape.CIRCLE
//         //         ? BorderRadius.circular(50)
//         //         : BorderRadius.circular(0),
//         //     child: SizedBox(
//         //       width: 54,
//         //       height: 54,
//         //       child: duGetImageWidget(imagePath),
//         //     ),
//         //   ),
//         //   title: Text(
//         //     title ?? '',
//         //     style: DUTextStyle.black_2D2D2D_14,
//         //     maxLines: 1,
//         //     overflow: TextOverflow.ellipsis,
//         //   ),
//         //   subtitle: Column(
//         //     crossAxisAlignment: CrossAxisAlignment.start,
//         //     children: [
//         //       Text(
//         //         firstSubTitle ?? '',
//         //         style: DUTextStyle.grey_8F8F8F_12,
//         //         maxLines: 1,
//         //         overflow: TextOverflow.ellipsis,
//         //       ),
//         //       Text(
//         //         secondSubTitle ?? '',
//         //         style: DUTextStyle.grey_8F8F8F_12,
//         //         maxLines: 1,
//         //         overflow: TextOverflow.ellipsis,
//         //       ),
//         //     ],
//         //   ),
//         //   trailing: trailing,
//         // ),
//       ),
//     );
//   }
// }

// class _Type54D extends State<DUListTile> {
//   _Type54D(
//       {required this.imagePath,
//       required this.imageShape,
//       this.title,
//       this.subTitle,
//       this.onTap,
//       required this.isEffect,
//       required this.padding,
//       this.firstSubTitle,
//       this.secondSubTitle,
//       this.classTime,
//       this.isOnline,
//       this.isClassOpen,
//       this.trailing});

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   final ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 첫번째 부제목
//   final String? firstSubTitle;

//   /// 두번째 부제목
//   final String? secondSubTitle;

//   /// 수업시간(오후4시 -> '1600')
//   final String? classTime;

//   /// 온라인 여부
//   final bool? isOnline;

//   /// 수업 개설 여부
//   final bool? isClassOpen;

//   /// 후열 위젯
//   final Widget? trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: Container(
//                   width: 54,
//                   height: 54,
//                   color: DUColors.white_F6F7FF,
//                   child: Center(
//                     child: Text(
//                       classTime.toString().substring(0, 2) +
//                           ':' +
//                           classTime.toString().substring(2, 4),
//                       style: isClassOpen!
//                           ? DUTextStyle.black_2D2D2D_18
//                           : DUTextStyle.grey_FFFFFF_18,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           title ?? '',
//                           style: DUTextStyle.black_2D2D2D_14,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         if (isOnline!) ...[
//                           SizedBox(
//                             width: 8,
//                           ),
//                           Container(
//                             alignment: Alignment.center,
//                             constraints: BoxConstraints(
//                               minWidth: 40,
//                               minHeight: 20,
//                             ),
//                             decoration: BoxDecoration(
//                               color: DUColors.blue_0191FF,
//                             ),
//                             padding: EdgeInsets.all(4),
//                             child: Text(
//                               'ONLINE',
//                               style: DUTextStyle.white_FFFFFF_11,
//                             ),
//                           )
//                         ]
//                       ],
//                     ),
//                     SizedBox(
//                       height: 2,
//                     ),
//                     Text(
//                       firstSubTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Text(
//                       secondSubTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//               if (trailing != null) trailing!
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _Type60A extends State<DUListTile> {
//   _Type60A(
//       {required this.imagePath,
//       required this.imageShape,
//       this.title,
//       this.onTap,
//       required this.isEffect,
//       required this.padding,
//       this.firstSubTitle,
//       this.trailing,
//       this.secondSubTitle});

//   /// 이미지 경로
//   final String imagePath;

//   /// 이미지모양(사각형,원형)
//   ImageShape? imageShape;

//   /// 타이틀
//   final String? title;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 첫번째 부제목
//   final String? firstSubTitle;

//   /// 두번째 부제목
//   final String? secondSubTitle;

//   /// 후열 위젯
//   final Widget? trailing;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 60,
//                   height: 60,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_15,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Text(
//                       firstSubTitle ?? '',
//                       style: DUTextStyle.purple_7540EE_14,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Text(
//                       secondSubTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//               if (trailing != null) trailing!
//             ],
//           ),
//         ),
//         // child: ListTile(
//         //   contentPadding: EdgeInsets.symmetric(horizontal: 0),
//         //   horizontalTitleGap: 8,
//         //   leading: ClipRRect(
//         //     borderRadius: imageShape == ImageShape.CIRCLE
//         //         ? BorderRadius.circular(50)
//         //         : BorderRadius.circular(0),
//         //     child: SizedBox(
//         //       width: 60,
//         //       height: 60,
//         //       child: duGetImageWidget(imagePath),
//         //     ),
//         //   ),
//         //   title: Text(
//         //     title ?? '',
//         //     style: DUTextStyle.black_2D2D2D_15,
//         //     maxLines: 1,
//         //     overflow: TextOverflow.ellipsis,
//         //   ),
//         //   subtitle: Column(
//         //     crossAxisAlignment: CrossAxisAlignment.start,
//         //     children: [
//         //       Text(
//         //         firstSubTitle ?? '',
//         //         style: DUTextStyle.purple_7540EE_14,
//         //         maxLines: 1,
//         //         overflow: TextOverflow.ellipsis,
//         //       ),
//         //       Text(
//         //         secondSubTitle ?? '',
//         //         style: DUTextStyle.grey_8F8F8F_12,
//         //         maxLines: 1,
//         //         overflow: TextOverflow.ellipsis,
//         //       ),
//         //     ],
//         //   ),
//         //   trailing: trailing,
//         // ),
//       ),
//     );
//   }
// }

// class _Type108A extends State<DUListTile> {
//   _Type108A(
//       {this.title,
//       this.imagePath,
//       this.onTap,
//       this.imageShape,
//       required this.isEffect,
//       this.discountRate,
//       this.costPrice,
//       this.discountPrice,
//       required this.padding,
//       this.subTitle,
//       this.productName});

//   /// 제목
//   final String? title;

//   /// 이미지 경로
//   final String? imagePath;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 이미지모양(사각형,원형)
//   final ImageShape? imageShape;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 상품 타입(할인율)
//   final int? discountRate;

//   /// 상품 타입(원가)
//   final int? costPrice;

//   /// 상품 타입(할인된 가격)
//   final int? discountPrice;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 부제목
//   final String? subTitle;

//   /// 강사 이름
//   final String? productName;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 108,
//                   height: 108,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       subTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_14,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Wrap(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 5),
//                           child: Text(
//                             discountRate != null
//                                 ? discountRate.toString() + '%'
//                                 : "",
//                             style: DUTextStyle.purple_7540EE_14,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 4),
//                           child: Text(
//                             discountPrice != null
//                                 ? discountPrice.toCurrency() + '원'
//                                 : "",
//                             style: DUTextStyle.black_2D2D2D_14,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: Text(
//                             costPrice != null
//                                 ? costPrice.toCurrency() + '원'
//                                 : "",
//                             style: DUTextStyle.grey_B7B7B7_14,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       color: DUColors.grey_D8D8D8,
//                       child: Text(
//                         productName ?? '',
//                         style: DUTextStyle.black_2D2D2D_14,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _Type108B extends State<DUListTile> {
//   _Type108B({
//     this.title,
//     this.imagePath,
//     this.onTap,
//     this.imageShape,
//     required this.isEffect,
//     this.discountRate,
//     this.classType,
//     this.costPrice,
//     this.discountPrice,
//     required this.padding,
//     this.productList,
//   });

//   /// 제목
//   final String? title;

//   /// 이미지 경로
//   final String? imagePath;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 이미지모양(사각형,원형)
//   final ImageShape? imageShape;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 상품 타입(할인율)
//   final int? discountRate;

//   /// 상품 타입(원가)
//   final int? costPrice;

//   /// 상품 타입(할인된 가격)
//   final int? discountPrice;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 강사 목록
//   final List<String>? productList;

//   /// 수업타입
//   final ClassType? classType;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Padding(
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ClipRRect(
//                 borderRadius: imageShape == ImageShape.CIRCLE
//                     ? BorderRadius.circular(50)
//                     : BorderRadius.circular(0),
//                 child: SizedBox(
//                   width: 108,
//                   height: 108,
//                   child: duGetImageWidget(imagePath),
//                 ),
//               ),
//               SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_14,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     if (discountRate == null)
//                       Text(
//                         costPrice.toCurrency() + '원',
//                         style: DUTextStyle.black_2D2D2D_14,
//                       ),
//                     if (discountRate != null)
//                       Wrap(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 4),
//                             child: Text(
//                               discountPrice.toCurrency() + '원',
//                               style: DUTextStyle.black_2D2D2D_14,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 4,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 5),
//                             child: Text(
//                               costPrice.toCurrency(),
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: DUColors.grey_8F8F8F,
//                                 decoration: TextDecoration.lineThrough,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 4,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 4),
//                             child: Text(
//                               discountRate.toString() + '%',
//                               style: DUTextStyle.purple_7540EE_14,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 4,
//                           ),
//                         ],
//                       ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       productList!.join(', '),
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     if (classType == ClassType.START)
//                       Container(
//                         decoration: BoxDecoration(
//                             color: DUColors.green_6DD400,
//                             borderRadius: BorderRadius.circular(2)),
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//                         child: Text('수업중', style: DUTextStyle.white_FFFFFF_11),
//                       ),
//                     if (classType == ClassType.END)
//                       Container(
//                         decoration: BoxDecoration(
//                             color: DUColors.grey_EFEFEF,
//                             borderRadius: BorderRadius.circular(2)),
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//                         child: Text('수업종료', style: DUTextStyle.black_2D2D2D_11),
//                       ),
//                     if (classType == ClassType.STOP)
//                       Container(
//                         decoration: BoxDecoration(
//                             color: DUColors.yellow_FFD04E,
//                             borderRadius: BorderRadius.circular(2)),
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//                         child: Text('수업정지', style: DUTextStyle.white_FFFFFF_11),
//                       ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _TypeFile extends State<DUListTile> {
//   _TypeFile(
//       {this.onTap,
//       this.title,
//       this.subTitle,
//       this.firstSubTitle,
//       this.secondSubTitle,
//       required this.isEffect,
//       required this.padding});

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   /// 첫번째 부제목
//   final String? firstSubTitle;

//   /// 두번째 부제목
//   final String? secondSubTitle;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Container(
//         constraints: BoxConstraints(minHeight: 56),
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_14,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           firstSubTitle ?? '',
//                           style: DUTextStyle.grey_B7B7B7_12,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         Divider(),
//                         Text(
//                           secondSubTitle ?? '',
//                           style: DUTextStyle.grey_B7B7B7_12,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               if (onTap != null) SvgPicture.asset(DUIcons.svgMore),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _TypeNotice extends State<DUListTile> {
//   _TypeNotice(
//       {this.onTap,
//       this.title,
//       this.subTitle,
//       required this.isEffect,
//       required this.padding});

//   /// 타이틀
//   final String? title;

//   /// 서브 타이틀
//   final String? subTitle;

//   /// 클릭이벤트
//   final VoidCallback? onTap;

//   /// 클릭 이펙트 여부
//   final bool isEffect;

//   /// 패딩
//   final EdgeInsetsGeometry padding;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       hoverColor: isEffect ? null : Colors.transparent,
//       highlightColor: isEffect ? null : Colors.transparent,
//       splashColor: isEffect ? null : Colors.transparent,
//       child: Container(
//         constraints: BoxConstraints(minHeight: 56),
//         padding: padding,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title ?? '',
//                       style: DUTextStyle.black_2D2D2D_16,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       subTitle ?? '',
//                       style: DUTextStyle.grey_8F8F8F_12,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _TypeProduct extends State<DUListTile> {
//   _TypeProduct({
//     this.title,
//     this.maker,
//     this.datetime,
//     this.isFreeDelivery,
//     this.onTapShare,
//     this.onTapLike,
//     this.discountPrice,
//     this.discountRate,
//     this.costPrice,
//     this.isOnline,
//   });

//   /// 메이커
//   final String? maker;

//   /// 제목
//   final String? title;

//   /// 채팅시간 & 상품시간 & 판매시간
//   final DateTime? datetime;

//   /// 무료배송 여부
//   final bool? isFreeDelivery;

//   /// 상품 타입(할인된 가격)
//   final int? discountPrice;

//   /// 상품 타입(할인율)
//   final int? discountRate;

//   /// 상품 타입(원가)
//   final int? costPrice;

//   /// 온라인 여부
//   final bool? isOnline;

//   /// 공유 클릭 이벤트
//   final VoidCallback? onTapShare;

//   /// 좋아요 클릭 이벤트
//   final VoidCallback? onTapLike;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (maker != null) ...[
//             Row(
//               children: [
//                 Text(
//                   maker.toString(),
//                   style: DUTextStyle.grey_8F8F8F_14,
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 4,
//             ),
//           ],
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Container(
//                   width: 216,
//                   child: Text(title.toString(),
//                       style: DUTextStyle.black_2D2D2D_20_w400,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis),
//                 ),
//               ),
//               Row(
//                 children: [
//                   InkWell(
//                     onTap: onTapShare,
//                     child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: SvgPicture.asset(DUIcons.svgShare)),
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   InkWell(
//                     onTap: onTapLike,
//                     child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: SvgPicture.asset(DUIcons.svgLike)),
//                   )
//                 ],
//               )
//             ],
//           ),
//           if (isOnline!) ...[
//             SizedBox(
//               height: 8,
//             ),
//             DUStatusBar.live(liveStatus: LiveStatus.ONLINE)
//           ],
//           if (datetime != null) ...[
//             SizedBox(
//               height: 8,
//             ),
//             Text(
//               datetime!.toFullDateTimeString4() + ' 판매시작',
//               style: DUTextStyle.grey_8F8F8F_14,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//           SizedBox(
//             height: 32,
//           ),
//           Row(
//             children: [
//               RichText(
//                 text: TextSpan(
//                   text: discountPrice.toCurrency(),
//                   style: DUTextStyle.purple_7540EE_20,
//                   children: const <TextSpan>[
//                     TextSpan(text: '원', style: DUTextStyle.purple_7540EE_14),
//                   ],
//                 ),
//               ),
//               if (discountRate != null) ...[
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(4),
//                   decoration: BoxDecoration(color: DUColors.yellow_FFD04E),
//                   child: Text('${discountRate.toString()}%',
//                       style: DUTextStyle.purple_7540EE_14),
//                 ),
//               ],
//               SizedBox(
//                 width: 8,
//               ),
//               isFreeDelivery!
//                   ? Container(
//                       padding: EdgeInsets.all(4),
//                       decoration: BoxDecoration(color: DUColors.lime_44D7B6),
//                       child: Text('무료배송', style: DUTextStyle.white_FFFFFF_14),
//                     )
//                   : Container()
//             ],
//           ),
//           Row(
//             children: [
//               Text(
//                 costPrice.toCurrency(),
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: DUColors.grey_8F8F8F,
//                   decoration: TextDecoration.lineThrough,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
