
///이메일 형식
const RegExpEMAIL = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

///핸드폰번호 형식
const RegExpSMARTPHONE = r'^01[0-9]{8,9}$'; 

///일반전화번호 형식
const RegExpTEL = r'^0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4])[0-9]{7,8}$'; 

///핸드폰 or 일반전화번호 형식
const RegExpPHONE = r'[0-9]{8,11}$'; 

///소문자 영문 형식
const RegExpLOWERAB = r'(?=.*[a-z])'; 

///대문자 영문 형식
const RegExpUPPERAB = r'(?=.*[A-Z])'; 

///영문 소문자 + 숫자 형식
const RegExpNUMLOWERAB = r'^[\S][a-z0-9_\-=@,\.;]+$'; 

///한글 & 영문 형식
const RegExpKOEN = r'^[가-힣a-z0-9]+$'; 

///숫자 형식
const RegExpNUMBER = r'(\d+)'; 

///특수문자 형식
const RegExpSpecial = r'^[a-zA-Z0-9 ]+$'; 

///URL 형식
const RegURL = r"((http?:www\.)|(http?:\/\/)|(https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{2,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";

///한글 형식
const RegExpKOREAN = r'[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]'; 

///생년월일(6자리) 19991122
const RegExpBirthday = r'([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))'; 
