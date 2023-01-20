class Voca {
   late String voca;
   late String mean;
   late int id;

  static late List<List<Voca>> daysObj  ;

  Voca({required this.id, required this.voca, required this.mean });
  
  static jsonToObject() {
    daysObj = List.empty(growable: true);
    for (var day in days) {
        List<Voca> dayObj = day.map((e) => Voca.fromMap(e)).toList();
        daysObj.add(dayObj) ;      
     }
  }

  Map<String, dynamic> toMap() {
    return {'voca': voca, 'mean': mean};
  }



  Voca.fromMap(Map<String, dynamic> map) {
    voca = map['voca']!;
    mean = map['mean']!;
    id = int.parse(map['id']);
  }

  @override
  String toString() {
    return 'Voca{id: $id,voca: $voca, mean: $mean}';
  }

  static List<List<Map<String, String>>> days = [
    [],
    [
      {
        "id": "0",
        "voca": "resume",
        "mean": "이력서"
      },
      {
        "id": "1",
        "voca": "applicant",
        "mean": "지원자, 신청자"
      },
      {
        "id": "2",
        "voca": "requirement",
        "mean": "필요조건, 요건"
      },
      {
        "id": "3",
        "voca": "meet",
        "mean": "(필요,요구 등을)만족시키다"
      },
      {
        "id": "4",
        "voca": "qualified",
        "mean": "자격있는, 적격의"
      },
      {
        "id": "5",
        "voca": "candidate",
        "mean": "후보자, 지원자"
      },
      {
        "id": "6",
        "voca": "confidence",
        "mean": "확신, 자신, 신임"
      },
      {
        "id": "7",
        "voca": "highly",
        "mean": "매우, 대단히"
      },
      {
        "id": "8",
        "voca": "professional",
        "mean": "전문적인, 직업의, 전문가"
      },
      {
        "id": "9",
        "voca": "interview",
        "mean": "면접, 면접을 보다"
      },
      {
        "id": "10",
        "voca": "hire",
        "mean": "고용하다"
      },
      {
        "id": "11",
        "voca": "training",
        "mean": "교육, 훈련"
      },
      {
        "id": "12",
        "voca": "reference",
        "mean": "추천서, 참고"
      },
      {
        "id": "13",
        "voca": "position",
        "mean": "일자리, 직책, 두다"
      },
      {
        "id": "14",
        "voca": "achievement",
        "mean": "성취, 달성"
      },
      {
        "id": "15",
        "voca": "impressed",
        "mean": "인상 깊게 생각하는, 감명을 받은"
      },
      {
        "id": "16",
        "voca": "excellent",
        "mean": "훌륭한"
      },
      {
        "id": "17",
        "voca": "eligible",
        "mean": "자격이 있는, 적격의"
      },
      {
        "id": "18",
        "voca": "identify",
        "mean": "알아보다, 확인하다"
      },
      {
        "id": "19",
        "voca": "associate",
        "mean": "관련시키다"
      },
      {
        "id": "20",
        "voca": "condition",
        "mean": "조건"
      },
      {
        "id": "21",
        "voca": "employment",
        "mean": "고용"
      },
      {
        "id": "22",
        "voca": "lack",
        "mean": "~이 없다, 부족"
      },
      {
        "id": "23",
        "voca": "managerial",
        "mean": "관리의"
      },
      {
        "id": "24",
        "voca": "diligent",
        "mean": "성실한"
      },
      {
        "id": "25",
        "voca": "familiar",
        "mean": "익숙한, 친숙한"
      },
      {
        "id": "26",
        "voca": "proficiency",
        "mean": "숙달, 능숙"
      },
      {
        "id": "27",
        "voca": "prospective",
        "mean": "장래의, 미래의"
      },
      {
        "id": "28",
        "voca": "appeal",
        "mean": "관심을 끌다, 매력적이다"
      },
      {
        "id": "29",
        "voca": "specialize",
        "mean": "~을 전공하다, 전문적으로 다루다"
      },
      {
        "id": "30",
        "voca": "apprehensive",
        "mean": "걱정하는, 염려하는"
      },
      {
        "id": "31",
        "voca": "consultant",
        "mean": "고문, 컨설턴트"
      },
      {
        "id": "32",
        "voca": "entitle",
        "mean": "자격을 주다"
      },
      {
        "id": "33",
        "voca": "degree",
        "mean": "학위"
      },
      {
        "id": "34",
        "voca": "payroll",
        "mean": "임금대장, 금료명부"
      },
      {
        "id": "35",
        "voca": "recruit",
        "mean": "(신입사원등을)모집하다"
      },
      {
        "id": "36",
        "voca": "certification",
        "mean": "증명서, 증명"
      },
      {
        "id": "37",
        "voca": "occupation",
        "mean": "직업"
      },
      {
        "id": "38",
        "voca": "wage",
        "mean": "임금, 급료"
      }
    ],
[
      {
        "id": "39",
        "voca": "attire",
        "mean": "복장, 옷차림새"
      },
      {
        "id": "40",
        "voca": "code",
        "mean": "규범, 관례;암호"
      },
      {
        "id": "41",
        "voca": "concern",
        "mean": "우려, 걱정, 문제, 일, ~을 걱정스럽게 하다; 영향을 미치다, 관련되다."
      },
      {
        "id": "42",
        "voca": "policy",
        "mean": "규정; 보험, 증권"
      },
      {
        "id": "43",
        "voca": "comply",
        "mean": "준수하다, 따르다"
      },
      {
        "id": "44",
        "voca": "regulation",
        "mean": "규정"
      },
      {
        "id": "45",
        "voca": "exception",
        "mean": "예외"
      },
      {
        "id": "46",
        "voca": "adhere",
        "mean": "지키다, 고수하다"
      },
      {
        "id": "47",
        "voca": "severely",
        "mean": "엄격하게, 심하게"
      },
      {
        "id": "48",
        "voca": "refrain",
        "mean": "자제하다, 삼가다"
      },
      {
        "id": "49",
        "voca": "permission",
        "mean": "허락, 허가"
      },
      {
        "id": "50",
        "voca": "access",
        "mean": "이용권한, 접근;통로, ~에 접근하다, 도달하다"
      },
      {
        "id": "51",
        "voca": "thoroughly",
        "mean": "철저하게, 완전히, 대단히"
      },
      {
        "id": "52",
        "voca": "revise",
        "mean": "(의견, 계획을)수정하다, 변경하다"
      },
      {
        "id": "53",
        "voca": "approach",
        "mean": "접근법, 처리방법"
      },
      {
        "id": "54",
        "voca": "approval",
        "mean": "승인, 인가"
      },
      {
        "id": "55",
        "voca": "form",
        "mean": "종류, 유형, 양식"
      },
      {
        "id": "56",
        "voca": "immediately",
        "mean": "즉시, 곧"
      },
      {
        "id": "57",
        "voca": "inspection",
        "mean": "점검, 검사"
      },
      {
        "id": "58",
        "voca": "arrangement",
        "mean": "준비, 마련, 주선"
      },
      {
        "id": "59",
        "voca": "procedure",
        "mean": "절차"
      },
      {
        "id": "60",
        "voca": "negative",
        "mean": "부정적인, 비관적인"
      },
      {
        "id": "61",
        "voca": "mandate",
        "mean": "명령하다, 지시하다, 권한, 지시, 명령"
      },
      {
        "id": "62",
        "voca": "effect",
        "mean": "(법률등의)효력, 효과, 영향, 결과로서 ~을 가져오다"
      },
      {
        "id": "63",
        "voca": "drastically",
        "mean": "심하게, 과감하게, 철저하게"
      },
      {
        "id": "64",
        "voca": "according to",
        "mean": "~에 따라"
      },
      {
        "id": "65",
        "voca": "enable",
        "mean": "(무엇을)가능하게 하다"
      },
      {
        "id": "66",
        "voca": "standard",
        "mean": "기준, 표준"
      },
      {
        "id": "67",
        "voca": "constant",
        "mean": "지속적인, 끊임없이 계속하는"
      },
      {
        "id": "68",
        "voca": "act",
        "mean": "법령, 결의서; 행위, 행동, 결정하다, 판결을 내리다, 행동하다"
      },
      {
        "id": "69",
        "voca": "compensation",
        "mean": "보상금, 보상"
      },
      {
        "id": "70",
        "voca": "ban",
        "mean": "금지, 금지하다"
      },
      {
        "id": "71",
        "voca": "obligation",
        "mean": "의무, 책임"
      },
      {
        "id": "72",
        "voca": "authorize",
        "mean": "~을 인가하다, 권한을 부여하다."
      },
      {
        "id": "73",
        "voca": "prohibit",
        "mean": "금지하다"
      },
      {
        "id": "74",
        "voca": "abolish",
        "mean": "(제도, 법률등을)폐지하다"
      },
      {
        "id": "75",
        "voca": "enforce",
        "mean": "(법률을)시행하다, 집행하다"
      },
      {
        "id": "76",
        "voca": "habit",
        "mean": "습관, 버릇"
      },
      {
        "id": "77",
        "voca": "lagislation",
        "mean": "법률, 법규"
      },
      {
        "id": "78",
        "voca": "restrict",
        "mean": "한정하다, 제한하다"
      }
    ],
[
      {
        "id": "79",
        "voca": "accustomed",
        "mean": "익숙한"
      },
      {
        "id": "80",
        "voca": "corporatiion",
        "mean": "주식회사, 법인"
      },
      {
        "id": "81",
        "voca": "demanding",
        "mean": "요구가 많은, 힘든"
      },
      {
        "id": "82",
        "voca": "colleague",
        "mean": "동료"
      },
      {
        "id": "83",
        "voca": "division",
        "mean": "부서"
      },
      {
        "id": "84",
        "voca": "request",
        "mean": "요청, 요청하다"
      },
      {
        "id": "85",
        "voca": "efficiently",
        "mean": "효율적으로"
      },
      {
        "id": "86",
        "voca": "manage",
        "mean": "~을 경영하다; 가까스로 하다"
      },
      {
        "id": "87",
        "voca": "submit",
        "mean": "제출하다"
      },
      {
        "id": "88",
        "voca": "directly",
        "mean": "곧바로"
      },
      {
        "id": "89",
        "voca": "remind",
        "mean": "~에게 상기시키다, 일깨우다"
      },
      {
        "id": "90",
        "voca": "instruct",
        "mean": "지시하다, 가르치다"
      },
      {
        "id": "91",
        "voca": "deadline",
        "mean": "마감일, 마감 시간"
      },
      {
        "id": "92",
        "voca": "sample",
        "mean": "견본, 샘플, 표본\r\n시식하다, (견본으로 질을)시험하다"
      },
      {
        "id": "93",
        "voca": "notify",
        "mean": "~에게 통지하다, 알리다"
      },
      {
        "id": "94",
        "voca": "perform",
        "mean": "행하다, 실행하다"
      },
      {
        "id": "95",
        "voca": "monitor",
        "mean": "감독하다, 감시하다, 실행하다"
      },
      {
        "id": "96",
        "voca": "deserve",
        "mean": "~할 만하다, ~할 가치가 있다"
      },
      {
        "id": "97",
        "voca": "assignment",
        "mean": "일, 임무, 과제"
      },
      {
        "id": "98",
        "voca": "entire",
        "mean": "전체의"
      },
      {
        "id": "99",
        "voca": "release",
        "mean": "발표하다, 공개하다, 출시, 발매"
      },
      {
        "id": "100",
        "voca": "extension",
        "mean": "연장, 연기; (전화의)내선"
      },
      {
        "id": "101",
        "voca": "electronically",
        "mean": "컴퓨터 통신망으로, 컴퓨터로"
      },
      {
        "id": "102",
        "voca": "attendance",
        "mean": "출석, 출근"
      },
      {
        "id": "103",
        "voca": "absolutely",
        "mean": "절대적으로, 완전히"
      },
      {
        "id": "104",
        "voca": "delegate",
        "mean": "(권한등을)위임하다. 대표"
      },
      {
        "id": "105",
        "voca": "attentively",
        "mean": "주의 깊게, 조심스럽게"
      },
      {
        "id": "106",
        "voca": "supervision",
        "mean": "감독"
      },
      {
        "id": "107",
        "voca": "workshop",
        "mean": "워크숍, 연수"
      },
      {
        "id": "108",
        "voca": "draw",
        "mean": "끌다, 끌어당기다"
      },
      {
        "id": "109",
        "voca": "revision",
        "mean": "수정, 개정"
      },
      {
        "id": "110",
        "voca": "reluctantly",
        "mean": "마지못해, 꺼려하여"
      },
      {
        "id": "111",
        "voca": "acquaint",
        "mean": "~에게 숙지시키다, 잘 알게 하다"
      },
      {
        "id": "112",
        "voca": "convey",
        "mean": "(용건을)전달하다"
      },
      {
        "id": "113",
        "voca": "check",
        "mean": "검사하다, 조사하다, 확인하다"
      },
      {
        "id": "114",
        "voca": "headquarters",
        "mean": "본부"
      },
      {
        "id": "115",
        "voca": "file",
        "mean": "(서류를)정리하다, 철하다;\r\n(서류, 신청, 고소 등을)정식으로 제기하다, 제출하다"
      },
      {
        "id": "116",
        "voca": "oversee",
        "mean": "감독하다 (foresee예견하다, oversea해외의)"
      },
      {
        "id": "117",
        "voca": "involved",
        "mean": "관여하는, 관계된, 연루된"
      },
      {
        "id": "118",
        "voca": "concentrate",
        "mean": "집중하다, 집중시키다"
      }
    ],
[
      {
        "id": "119",
        "voca": "lax",
        "mean": "(행동 등이)느슨한, 규율에 못 미치는"
      },
      {
        "id": "120",
        "voca": "procrastinate",
        "mean": "미루다, 꾸물거리다"
      },
      {
        "id": "121",
        "voca": "combined",
        "mean": "결합된, 합동의"
      },
      {
        "id": "122",
        "voca": "accomplish",
        "mean": "성취하다"
      },
      {
        "id": "123",
        "voca": "voluntarily",
        "mean": "자발적으로"
      },
      {
        "id": "124",
        "voca": "undertake",
        "mean": "(일을)떠맡다"
      },
      {
        "id": "125",
        "voca": "assume",
        "mean": "(증거는 없으나)사실이라고 생각하다;\r\n(책임,역할을)맡다"
      },
      {
        "id": "126",
        "voca": "occasionally",
        "mean": "가끔, 때때로"
      },
      {
        "id": "127",
        "voca": "employee",
        "mean": "직원, 고용인"
      },
      {
        "id": "128",
        "voca": "assist",
        "mean": "돕다, 조력하다"
      },
      {
        "id": "129",
        "voca": "satisfied",
        "mean": "만족하는, 만족스러워하는"
      },
      {
        "id": "130",
        "voca": "manner",
        "mean": "방식, 태도"
      },
      {
        "id": "131",
        "voca": "responsible",
        "mean": "책임이 있는, 책임져야 할"
      },
      {
        "id": "132",
        "voca": "conduct",
        "mean": "(업무 등을)수행하다"
      },
      {
        "id": "133",
        "voca": "adjust",
        "mean": "적응하다"
      },
      {
        "id": "134",
        "voca": "personnel",
        "mean": "(집합적)직원, 인원; 인사과"
      },
      {
        "id": "135",
        "voca": "agree",
        "mean": "동의하다"
      },
      {
        "id": "136",
        "voca": "supervise",
        "mean": "감독하다, 지도하다"
      },
      {
        "id": "137",
        "voca": "coworker",
        "mean": "동료, 협력자"
      },
      {
        "id": "138",
        "voca": "direct",
        "mean": "~에게 길을 안내하다, 가르쳐 주다"
      },
      {
        "id": "139",
        "voca": "confidential",
        "mean": "기밀의, 내밀한"
      },
      {
        "id": "140",
        "voca": "assign",
        "mean": "배정하다, 할당하다"
      },
      {
        "id": "141",
        "voca": "leading",
        "mean": "선도적인, 일류의, 가장 중요한, 선두적인"
      },
      {
        "id": "142",
        "voca": "formal",
        "mean": "격식을 갖춘"
      },
      {
        "id": "143",
        "voca": "remove",
        "mean": "해임하다, 제거하다"
      },
      {
        "id": "144",
        "voca": "collect",
        "mean": "모으다"
      },
      {
        "id": "145",
        "voca": "coordinate",
        "mean": "조정하다"
      },
      {
        "id": "146",
        "voca": "hardly",
        "mean": "거의~하지않다"
      },
      {
        "id": "147",
        "voca": "abstract",
        "mean": "추상적인, 막연한"
      },
      {
        "id": "148",
        "voca": "directory",
        "mean": "주소록"
      },
      {
        "id": "149",
        "voca": "accountable",
        "mean": "책임이 있는"
      },
      {
        "id": "150",
        "voca": "skillfully",
        "mean": "능숙하게, 솜씨있게"
      },
      {
        "id": "151",
        "voca": "exclusive",
        "mean": "독점적인, 배타적인"
      },
      {
        "id": "152",
        "voca": "intention",
        "mean": "의지, 의향"
      },
      {
        "id": "153",
        "voca": "transform",
        "mean": "바꾸다, 변모시키다"
      },
      {
        "id": "154",
        "voca": "respectful",
        "mean": "정중한, 존중하는"
      },
      {
        "id": "155",
        "voca": "duplicate",
        "mean": "사본"
      },
      {
        "id": "156",
        "voca": "contrary",
        "mean": "반대"
      },
      {
        "id": "157",
        "voca": "disturbing",
        "mean": "충격적인, 불안감을 주는, 방해하는"
      },
      {
        "id": "158",
        "voca": "engage",
        "mean": "관여하다, 종사하다"
      },
      {
        "id": "159",
        "voca": "foster",
        "mean": "촉진하다, 육성하다"
      },
      {
        "id": "160",
        "voca": "neutrality",
        "mean": "중립성, 중립"
      },
      {
        "id": "161",
        "voca": "widely",
        "mean": "널리"
      }
    ],
[
      {
        "id": "162",
        "voca": "sophisticated",
        "mean": "(기계가)정교한, 복잡한; 세련된"
      },
      {
        "id": "163",
        "voca": "timely",
        "mean": "시기적절한, 때를 맞춘"
      },
      {
        "id": "164",
        "voca": "realistically",
        "mean": "현실적으로"
      },
      {
        "id": "165",
        "voca": "promptly",
        "mean": "즉시; 정각에"
      },
      {
        "id": "166",
        "voca": "accessible",
        "mean": "출입할 수 있는; 이용할 수 있는"
      },
      {
        "id": "167",
        "voca": "implement",
        "mean": "실시하다, 실행하다"
      },
      {
        "id": "168",
        "voca": "feedback",
        "mean": "의견, 반응"
      },
      {
        "id": "169",
        "voca": "outstanding",
        "mean": "우수한; (부채 등이)미지불된"
      },
      {
        "id": "170",
        "voca": "inform",
        "mean": "~에게 알리다"
      },
      {
        "id": "171",
        "voca": "replacement",
        "mean": "교체, 후임자"
      },
      {
        "id": "172",
        "voca": "announcement",
        "mean": "공고, 발표"
      },
      {
        "id": "173",
        "voca": "department",
        "mean": "(조직, 기구의)부서"
      },
      {
        "id": "174",
        "voca": "permanently",
        "mean": "영구적으로, 불변으로"
      },
      {
        "id": "175",
        "voca": "fulfill",
        "mean": "(조건을)만족시키다, (약속, 의무등을)지키다, 이행하다"
      },
      {
        "id": "176",
        "voca": "outline",
        "mean": "개요, 설명하다, 약술하다"
      },
      {
        "id": "177",
        "voca": "explain",
        "mean": "설명하다"
      },
      {
        "id": "178",
        "voca": "contain",
        "mean": "포함하다"
      },
      {
        "id": "179",
        "voca": "compile",
        "mean": "(자료 등을)편집하다; 모으다"
      },
      {
        "id": "180",
        "voca": "subsequent",
        "mean": "차후의, 그 다음의"
      },
      {
        "id": "181",
        "voca": "overview",
        "mean": "개요, 개관"
      },
      {
        "id": "182",
        "voca": "provider",
        "mean": "공급자, 제공자"
      },
      {
        "id": "183",
        "voca": "matter",
        "mean": "문제, 일"
      },
      {
        "id": "184",
        "voca": "expertise",
        "mean": "전문지식, 전문기술"
      },
      {
        "id": "185",
        "voca": "demonstrate",
        "mean": "증명하다; (모형, 실험등으로)설명하다"
      },
      {
        "id": "186",
        "voca": "remainder",
        "mean": "나머지"
      },
      {
        "id": "187",
        "voca": "essential",
        "mean": "필수적인, 극히 중요한, 본질적인"
      },
      {
        "id": "188",
        "voca": "divide",
        "mean": "분배하다, 나누다"
      },
      {
        "id": "189",
        "voca": "major",
        "mean": "주요한, 중대한"
      },
      {
        "id": "190",
        "voca": "compliance",
        "mean": "(명령, 법규에의)준수"
      },
      {
        "id": "191",
        "voca": "clarify",
        "mean": "명확하게 하다"
      },
      {
        "id": "192",
        "voca": "face",
        "mean": "(문제 등에)직면하다; 향하다, 마주보다"
      },
      {
        "id": "193",
        "voca": "follow",
        "mean": "~을 따라가다; 주시하다; (분명히)이해하다"
      },
      {
        "id": "194",
        "voca": "aspect",
        "mean": "관점, 국면"
      },
      {
        "id": "195",
        "voca": "apparently",
        "mean": "보기에 ~한 듯한, 외관상으로는"
      },
      {
        "id": "196",
        "voca": "aware",
        "mean": "알고 있는, 인식하고 있는"
      },
      {
        "id": "197",
        "voca": "extended",
        "mean": "(기간 등을)연장한, 장기간에 걸친"
      },
      {
        "id": "198",
        "voca": "accidentally",
        "mean": "뜻하지 않게, 우연히"
      },
      {
        "id": "199",
        "voca": "advisable",
        "mean": "바람직한, 합당한"
      },
      {
        "id": "200",
        "voca": "concerned",
        "mean": "염려하는, 걱정하는; 관련된"
      },
      {
        "id": "201",
        "voca": "speak",
        "mean": "이야기 하다"
      }
    ],
[
      {
        "id": "202",
        "voca": "collection",
        "mean": "소장품, 수집물; 징수, 수금"
      },
      {
        "id": "203",
        "voca": "exhibition",
        "mean": "전시회"
      },
      {
        "id": "204",
        "voca": "celebrity",
        "mean": "유명인사, 명사"
      },
      {
        "id": "205",
        "voca": "live",
        "mean": "(라디오, TV가)생방송인"
      },
      {
        "id": "206",
        "voca": "improvise",
        "mean": "(연주, 연설 등을)즉흥적으로 하다, 즉석에서 만들다."
      },
      {
        "id": "207",
        "voca": "popular",
        "mean": "인기있는"
      },
      {
        "id": "208",
        "voca": "donation",
        "mean": "기증, 기부"
      },
      {
        "id": "209",
        "voca": "alumni",
        "mean": "동창생들, 졸업생들"
      },
      {
        "id": "210",
        "voca": "present",
        "mean": "제시하다, 현재의, 참석한"
      },
      {
        "id": "211",
        "voca": "admission",
        "mean": "입장"
      },
      {
        "id": "212",
        "voca": "banquet",
        "mean": "연회, 만찬"
      },
      {
        "id": "213",
        "voca": "anniversary",
        "mean": "기념일"
      },
      {
        "id": "214",
        "voca": "required",
        "mean": "필수의, 의무적인"
      },
      {
        "id": "215",
        "voca": "succeed",
        "mean": "성공하다, 뒤를 잇다"
      },
      {
        "id": "216",
        "voca": "rest",
        "mean": "쉬다,휴식, 나머지"
      },
      {
        "id": "217",
        "voca": "fund-raising",
        "mean": "모금"
      },
      {
        "id": "218",
        "voca": "resume",
        "mean": "재개하다, 다시 시작하다"
      },
      {
        "id": "219",
        "voca": "issue",
        "mean": "(출판물의)제 ~호; 문제, 쟁점"
      },
      {
        "id": "220",
        "voca": "subscription",
        "mean": "(정기발행물의) 구독"
      },
      {
        "id": "221",
        "voca": "appear",
        "mean": "나타나다, 출현하다"
      },
      {
        "id": "222",
        "voca": "accompany",
        "mean": "동행하다, 동반하다"
      },
      {
        "id": "223",
        "voca": "edition",
        "mean": "(간행물의)판"
      },
      {
        "id": "224",
        "voca": "specifically",
        "mean": "명확하게, 분명히; 특히, 특별히"
      },
      {
        "id": "225",
        "voca": "anonymous",
        "mean": "익명의, 이름을 모르는"
      },
      {
        "id": "226",
        "voca": "commit",
        "mean": "헌신하다, 전념하다"
      },
      {
        "id": "227",
        "voca": "information",
        "mean": "유익한, 정보를 주는"
      },
      {
        "id": "228",
        "voca": "audience",
        "mean": "청중, 관중"
      },
      {
        "id": "229",
        "voca": "author",
        "mean": "작가, 저자"
      },
      {
        "id": "230",
        "voca": "note",
        "mean": "주목하다; 특별히 언급하다."
      },
      {
        "id": "231",
        "voca": "antique",
        "mean": "골동품"
      },
      {
        "id": "232",
        "voca": "manuscript",
        "mean": "원고"
      },
      {
        "id": "233",
        "voca": "beneficial",
        "mean": "유익한, 이로운"
      },
      {
        "id": "234",
        "voca": "upcoming",
        "mean": "곧 있을, 다가오는"
      },
      {
        "id": "235",
        "voca": "lend",
        "mean": "빌려주다"
      },
      {
        "id": "236",
        "voca": "current",
        "mean": "현재의,; 현행의, 통용되는"
      },
      {
        "id": "237",
        "voca": "local",
        "mean": "지방의, 고장의"
      },
      {
        "id": "238",
        "voca": "variety",
        "mean": "다양성, 변화"
      },
      {
        "id": "239",
        "voca": "advocate",
        "mean": "옹호자"
      },
      {
        "id": "240",
        "voca": "contributor",
        "mean": "기고가, 공헌자"
      },
      {
        "id": "241",
        "voca": "defy",
        "mean": "저항하다; (설명,묘사등이)거의 불가능하다"
      },
      {
        "id": "242",
        "voca": "fascinating",
        "mean": "매혹적인, 황홀한"
      },
      {
        "id": "243",
        "voca": "showing",
        "mean": "(영화, 연극의)상영; 전시"
      }
    ],
[
      {
        "id": "244",
        "voca": "survey",
        "mean": "설문조사"
      },
      {
        "id": "245",
        "voca": "analysis",
        "mean": "분석"
      },
      {
        "id": "246",
        "voca": "respondent",
        "mean": "응답자"
      },
      {
        "id": "247",
        "voca": "competition",
        "mean": "경쟁"
      },
      {
        "id": "248",
        "voca": "consistently",
        "mean": "항상, 일관되게"
      },
      {
        "id": "249",
        "voca": "demand",
        "mean": "수요, 요구하다"
      },
      {
        "id": "250",
        "voca": "do one's utmost",
        "mean": "전력을 다하다"
      },
      {
        "id": "251",
        "voca": "expand",
        "mean": "확장하다, 확대하다"
      },
      {
        "id": "252",
        "voca": "advanced",
        "mean": "고급의; 진보한, 앞선"
      },
      {
        "id": "253",
        "voca": "postpone",
        "mean": "연기하다, 뒤로 미루다"
      },
      {
        "id": "254",
        "voca": "additional",
        "mean": "추가의, 부가적인"
      },
      {
        "id": "255",
        "voca": "appreciate",
        "mean": "고맙게 생각하다; 높이 평가하다; 감상하다"
      },
      {
        "id": "256",
        "voca": "demonstration",
        "mean": "설명; 드러냄, 시연"
      },
      {
        "id": "257",
        "voca": "buy",
        "mean": "사다, 구입하다"
      },
      {
        "id": "258",
        "voca": "examine",
        "mean": "조사하다"
      },
      {
        "id": "259",
        "voca": "effective",
        "mean": "효과적인; (법률 등이)발표되는, 시행되는"
      },
      {
        "id": "260",
        "voca": "like",
        "mean": "좋아하다"
      },
      {
        "id": "261",
        "voca": "especially",
        "mean": "특히"
      },
      {
        "id": "262",
        "voca": "closely",
        "mean": "면밀히, 엄밀히"
      },
      {
        "id": "263",
        "voca": "reserve",
        "mean": "예약하다, 지정하다; 보존하다"
      },
      {
        "id": "264",
        "voca": "cooperate",
        "mean": "협력하다, 협동하다"
      },
      {
        "id": "265",
        "voca": "very",
        "mean": "매우, 대단히, 아주"
      },
      {
        "id": "266",
        "voca": "consecutive",
        "mean": "연속적인"
      },
      {
        "id": "267",
        "voca": "expectation",
        "mean": "예상, 기대"
      },
      {
        "id": "268",
        "voca": "publicize",
        "mean": "공표하다; 광고하다, 선전하다"
      },
      {
        "id": "269",
        "voca": "raise",
        "mean": "높이다, 올리다; (의문을)제기하다"
      },
      {
        "id": "270",
        "voca": "extremely",
        "mean": "극도로, 대단히"
      },
      {
        "id": "271",
        "voca": "affect",
        "mean": "~에 영향을 미치다, 불리하게 작용하다"
      },
      {
        "id": "272",
        "voca": "target",
        "mean": "목표, 목표로 삼다"
      },
      {
        "id": "273",
        "voca": "campaign",
        "mean": "운동, 캠페인"
      },
      {
        "id": "274",
        "voca": "probable",
        "mean": "개연성이 높은, 유망한"
      },
      {
        "id": "275",
        "voca": "focus",
        "mean": "집중시키다, 집중하다"
      },
      {
        "id": "276",
        "voca": "seasonal",
        "mean": "계절의, 계절적인"
      },
      {
        "id": "277",
        "voca": "impact",
        "mean": "영향, 충격"
      },
      {
        "id": "278",
        "voca": "comparison",
        "mean": "비교"
      },
      {
        "id": "279",
        "voca": "gap",
        "mean": "격차"
      },
      {
        "id": "280",
        "voca": "mounting",
        "mean": "증가하는, 오르는"
      },
      {
        "id": "281",
        "voca": "reflective",
        "mean": "반영하는"
      }
    ],
[
      {
        "id": "282",
        "voca": "advertisement",
        "mean": "광고"
      },
      {
        "id": "283",
        "voca": "marginal",
        "mean": "약간의; 주변의"
      },
      {
        "id": "284",
        "voca": "customer",
        "mean": "고객"
      },
      {
        "id": "285",
        "voca": "influence",
        "mean": "~에 영향을 주다, 영향"
      },
      {
        "id": "286",
        "voca": "instantly",
        "mean": "즉각적으로, 즉시"
      },
      {
        "id": "287",
        "voca": "creative",
        "mean": "창조적인, 독창적인"
      },
      {
        "id": "288",
        "voca": "aggressively",
        "mean": "적극적으로"
      },
      {
        "id": "289",
        "voca": "aim",
        "mean": "~을 겨누다, 목표, 목적"
      },
      {
        "id": "290",
        "voca": "strategy",
        "mean": "전략"
      },
      {
        "id": "291",
        "voca": "indicate",
        "mean": "보여주다, 나타내다"
      },
      {
        "id": "292",
        "voca": "attract",
        "mean": "끌다, 유인하다"
      },
      {
        "id": "293",
        "voca": "experience",
        "mean": "경험, 체험, 체험하다, 경험하다"
      },
      {
        "id": "294",
        "voca": "analyze",
        "mean": "분석하다, 분석적으로 검토하다"
      },
      {
        "id": "295",
        "voca": "introduce",
        "mean": "(신제품을)발표하다, 소개하다"
      },
      {
        "id": "296",
        "voca": "advise",
        "mean": "조언해주다, 충고하다"
      },
      {
        "id": "297",
        "voca": "subscribe",
        "mean": "구독하다"
      },
      {
        "id": "298",
        "voca": "absence",
        "mean": "부재; 결근, 결석"
      },
      {
        "id": "299",
        "voca": "means",
        "mean": "방법, 수단"
      },
      {
        "id": "300",
        "voca": "prefer",
        "mean": "(다른 것보다)~을 더 좋아하다, 선호하다"
      },
      {
        "id": "301",
        "voca": "advantage",
        "mean": "이점, 강점"
      },
      {
        "id": "302",
        "voca": "forward",
        "mean": "앞으로, (물건, 정보를)보내다"
      },
      {
        "id": "303",
        "voca": "contemporary",
        "mean": "동시대의; 현대의, 당대의"
      },
      {
        "id": "304",
        "voca": "discussion",
        "mean": "토론, 토의"
      },
      {
        "id": "305",
        "voca": "initial",
        "mean": "처음의, 최초의"
      },
      {
        "id": "306",
        "voca": "steadily",
        "mean": "착실하게; 꾸준히"
      },
      {
        "id": "307",
        "voca": "necessarily",
        "mean": "반드시"
      },
      {
        "id": "308",
        "voca": "resolve",
        "mean": "(문제 등을)해결하다"
      },
      {
        "id": "309",
        "voca": "detect",
        "mean": "간파하다, 탐지하다"
      },
      {
        "id": "310",
        "voca": "intensify",
        "mean": "강화하다, 증대하다, 강렬하게 만들다."
      },
      {
        "id": "311",
        "voca": "favorably",
        "mean": "호의적으로; 순조롭게"
      },
      {
        "id": "312",
        "voca": "cover",
        "mean": "포함하다; 지불하다; 덮다"
      },
      {
        "id": "313",
        "voca": "less",
        "mean": "보다 적은, 덜한"
      },
      {
        "id": "314",
        "voca": "majority",
        "mean": "대부분, 대다수"
      },
      {
        "id": "315",
        "voca": "adopt",
        "mean": "채택하다"
      },
      {
        "id": "316",
        "voca": "largely",
        "mean": "주로, 대부분"
      },
      {
        "id": "317",
        "voca": "disregard",
        "mean": "소홀히 하다, 무시하다"
      },
      {
        "id": "318",
        "voca": "effort",
        "mean": "노력"
      },
      {
        "id": "319",
        "voca": "incentive",
        "mean": "혜택, 장려금"
      },
      {
        "id": "320",
        "voca": "need",
        "mean": "필요, 요구, 욕구, ~할 필요가 있다."
      },
      {
        "id": "321",
        "voca": "mastermind",
        "mean": "(계획 등의)입안자, 지도자"
      }
    ],
[
      {
        "id": "322",
        "voca": "stagnant",
        "mean": "침체된, 불경기의, (stagnance침체, 정체, 불황)"
      },
      {
        "id": "323",
        "voca": "dramatically",
        "mean": "극적으로"
      },
      {
        "id": "324",
        "voca": "brisk",
        "mean": "활발한, 호황의"
      },
      {
        "id": "325",
        "voca": "unstable",
        "mean": "불안정한, 변하기 쉬운"
      },
      {
        "id": "326",
        "voca": "rapidly",
        "mean": "급속히, 빨리"
      },
      {
        "id": "327",
        "voca": "soar",
        "mean": "(물가 등이)폭등하다, 높이 치솟다"
      },
      {
        "id": "328",
        "voca": "assert",
        "mean": "단언하다, 주장하다 (assertion 단언, 주장)"
      },
      {
        "id": "329",
        "voca": "boost",
        "mean": "(경기를)부양시키다, 상승시키다"
      },
      {
        "id": "330",
        "voca": "analyst",
        "mean": "분석가"
      },
      {
        "id": "331",
        "voca": "potential",
        "mean": "잠재적인"
      },
      {
        "id": "332",
        "voca": "pleased",
        "mean": "만족해하는, 기쁜"
      },
      {
        "id": "333",
        "voca": "remain",
        "mean": "계속~한 상태이다; 아직 ~해야한다"
      },
      {
        "id": "334",
        "voca": "limited",
        "mean": "제한된, 한정된"
      },
      {
        "id": "335",
        "voca": "costly",
        "mean": "비용이 많이 드는, 손실이 큰"
      },
      {
        "id": "336",
        "voca": "particular",
        "mean": "특정한, 독특한, 세심한 (partocularly 특히)"
      },
      {
        "id": "337",
        "voca": "drastic",
        "mean": "과감한, 급격한"
      },
      {
        "id": "338",
        "voca": "evenly",
        "mean": "고르게, 균등하게"
      },
      {
        "id": "339",
        "voca": "evidence",
        "mean": "증거"
      },
      {
        "id": "340",
        "voca": "prospect",
        "mean": "전망, 예상 (prospective 장래의, 미래의, 기대되는)"
      },
      {
        "id": "341",
        "voca": "lead",
        "mean": "이글다, 지휘하다; (어떤 결과에)이르다"
      },
      {
        "id": "342",
        "voca": "fall",
        "mean": "(값, 가치가)하락하다"
      },
      {
        "id": "343",
        "voca": "period",
        "mean": "기간, 시기"
      },
      {
        "id": "344",
        "voca": "indicator",
        "mean": "지표, 지수"
      },
      {
        "id": "345",
        "voca": "industry",
        "mean": "산업"
      },
      {
        "id": "346",
        "voca": "likely",
        "mean": "~할 것 같은"
      },
      {
        "id": "347",
        "voca": "boom",
        "mean": "붐, 호황"
      },
      {
        "id": "348",
        "voca": "director",
        "mean": "임원, 책임자"
      },
      {
        "id": "349",
        "voca": "substitute",
        "mean": "대용품, 대신하다(substitution 대용, 대체)"
      },
      {
        "id": "350",
        "voca": "consequence",
        "mean": "결과"
      },
      {
        "id": "351",
        "voca": "fairly",
        "mean": "상당히, 꽤"
      },
      {
        "id": "352",
        "voca": "economical",
        "mean": "경제적인, 절약되는"
      },
      {
        "id": "353",
        "voca": "thrive",
        "mean": "번영하다, 성공하다"
      },
      {
        "id": "354",
        "voca": "implication",
        "mean": "영향, 밀접한 관계 (implicate 관련시키다, 관련되었음을 나타내다)"
      },
      {
        "id": "355",
        "voca": "wane",
        "mean": "감소, 감퇴"
      },
      {
        "id": "356",
        "voca": "prosperity",
        "mean": "번영 (prosper 번영하다)"
      },
      {
        "id": "357",
        "voca": "depression",
        "mean": "불황 (depress 하락시키다, 약하게하다)"
      },
      {
        "id": "358",
        "voca": "dwindle",
        "mean": "줄어들다, 감소되다"
      },
      {
        "id": "359",
        "voca": "impede",
        "mean": "저해하다, 방해하다"
      },
      {
        "id": "360",
        "voca": "promising",
        "mean": "유망한, 전망이 좋은"
      },
      {
        "id": "361",
        "voca": "adversity",
        "mean": "역경, 불운"
      }
    ],
[
      {
        "id": "362",
        "voca": "purchase",
        "mean": "구매하다, 구매"
      },
      {
        "id": "363",
        "voca": "installment",
        "mean": "할부"
      },
      {
        "id": "364",
        "voca": "affordable",
        "mean": "(가격이)알맞은, 감당할 수 있는"
      },
      {
        "id": "365",
        "voca": "exactly",
        "mean": "정확히"
      },
      {
        "id": "366",
        "voca": "auction",
        "mean": "경매"
      },
      {
        "id": "367",
        "voca": "authentic",
        "mean": "진정한, 진짜의, 진품의"
      },
      {
        "id": "368",
        "voca": "charge",
        "mean": "요금,청구,금액;책임,의무\r\n~을 청구하다; (외상으로)달아놓다"
      },
      {
        "id": "369",
        "voca": "notice",
        "mean": "통지, 공고"
      },
      {
        "id": "370",
        "voca": "experienced",
        "mean": "경험이 있는, 노련한, 능숙한"
      },
      {
        "id": "371",
        "voca": "instruction",
        "mean": "설명, 지시 (instruct 가르치다, 지시하다, instructor교사, 강사)"
      },
      {
        "id": "372",
        "voca": "expert",
        "mean": "전문가, 전문가의, 전문적인"
      },
      {
        "id": "373",
        "voca": "warranty",
        "mean": "(품질 등의)보증, 보증서"
      },
      {
        "id": "374",
        "voca": "refund",
        "mean": "환불, 환불금"
      },
      {
        "id": "375",
        "voca": "subscriber",
        "mean": "가입자, 구독자"
      },
      {
        "id": "376",
        "voca": "delivery",
        "mean": "배달"
      },
      {
        "id": "377",
        "voca": "price",
        "mean": "가격"
      },
      {
        "id": "378",
        "voca": "receipt",
        "mean": "영수증"
      },
      {
        "id": "379",
        "voca": "offer",
        "mean": "제공하다, 제공,오퍼"
      },
      {
        "id": "380",
        "voca": "carefully",
        "mean": "주의깊게, 신중히"
      },
      {
        "id": "381",
        "voca": "benefit",
        "mean": "혜택, 이익, 혜택을 보다, 이익을 얻다"
      },
      {
        "id": "382",
        "voca": "exclusively",
        "mean": "오로지, 독점적으로"
      },
      {
        "id": "383",
        "voca": "description",
        "mean": "(제품등의)설명, 해설"
      },
      {
        "id": "384",
        "voca": "relatively",
        "mean": "상대적으로"
      },
      {
        "id": "385",
        "voca": "spare",
        "mean": "아끼다, 할애하다, 예비의, 여분의"
      },
      {
        "id": "386",
        "voca": "preparation",
        "mean": "준비, 대비"
      },
      {
        "id": "387",
        "voca": "area",
        "mean": "지역, 구역"
      },
      {
        "id": "388",
        "voca": "clearance",
        "mean": "정리, 없애기; 허가"
      },
      {
        "id": "389",
        "voca": "alter",
        "mean": "(성질, 형상을)고치다, 바꾸다"
      },
      {
        "id": "390",
        "voca": "apply",
        "mean": "적용하다; 지원하다"
      },
      {
        "id": "391",
        "voca": "mutually",
        "mean": "서로, 상호 간에 (mutuality 상호관계, 상호의존)"
      },
      {
        "id": "392",
        "voca": "method",
        "mean": "방식, 방법"
      },
      {
        "id": "393",
        "voca": "acceptable",
        "mean": "용인되는, 받아들일 수 있는;\r\n훌륭한, 만족스러운"
      },
      {
        "id": "394",
        "voca": "desire",
        "mean": "욕구, 갈망, 원하다, 바라다"
      },
      {
        "id": "395",
        "voca": "redeemable",
        "mean": "(현금,상품과)교환할 수 있는, 환급할 수 있는( redeem 상환하다)"
      },
      {
        "id": "396",
        "voca": "officially",
        "mean": "공식적으로"
      },
      {
        "id": "397",
        "voca": "consumption",
        "mean": "소비(량), 소모 (consumptive 소모적인)"
      },
      {
        "id": "398",
        "voca": "qualify",
        "mean": "~의 자격을 얻다"
      },
      {
        "id": "399",
        "voca": "fabric",
        "mean": "섬유, 천"
      },
      {
        "id": "400",
        "voca": "valid",
        "mean": "유효한"
      },
      {
        "id": "401",
        "voca": "vendor",
        "mean": "노점상, 가판대; 판매업체"
      }
    ],
[
      {
        "id": "402",
        "voca": "research",
        "mean": "연구, 조사"
      },
      {
        "id": "403",
        "voca": "devise",
        "mean": "고안하다, 발명하다"
      },
      {
        "id": "404",
        "voca": "revolutionary",
        "mean": "혁명적인"
      },
      {
        "id": "405",
        "voca": "innovative",
        "mean": "혁신적인"
      },
      {
        "id": "406",
        "voca": "feature",
        "mean": "특징, 특색, 특징으로 삼다, 특별히 포함하다"
      },
      {
        "id": "407",
        "voca": "inspiration",
        "mean": "영감"
      },
      {
        "id": "408",
        "voca": "sufficiently",
        "mean": "충분히(sufficient 충분한, 충분)"
      },
      {
        "id": "409",
        "voca": "patent",
        "mean": "특허, 특허권, 특허품"
      },
      {
        "id": "410",
        "voca": "envision",
        "mean": "(장래의 일 등을)계획하다, 상상하다"
      },
      {
        "id": "411",
        "voca": "extend",
        "mean": "연장하다; (기간을)늘리다;\r\n(감사의 뜻을)말하다, 베풀다"
      },
      {
        "id": "412",
        "voca": "following",
        "mean": "~후에, 다음의, 다음에 오는"
      },
      {
        "id": "413",
        "voca": "intend",
        "mean": "~할 작정이다; 의도하다"
      },
      {
        "id": "414",
        "voca": "grant",
        "mean": "(인정하여 정식으로)수여하다, 주다,\r\n(연구비, 장학금등의)보조금"
      },
      {
        "id": "415",
        "voca": "allow",
        "mean": "~하게 하다, ~을 허락하다"
      },
      {
        "id": "416",
        "voca": "inspect",
        "mean": "~을 검사하다, 조사하다"
      },
      {
        "id": "417",
        "voca": "improve",
        "mean": "향상시키다, 개선하다"
      },
      {
        "id": "418",
        "voca": "increasingly",
        "mean": "점점, 더욱 더"
      },
      {
        "id": "419",
        "voca": "invest",
        "mean": "투자하다, 운용하다"
      },
      {
        "id": "420",
        "voca": "various",
        "mean": "여러 가지의, 가지각색의"
      },
      {
        "id": "421",
        "voca": "upgrade",
        "mean": "업그레이드, 개량형\r\n업그레이드하다, 개선하다"
      },
      {
        "id": "422",
        "voca": "manual",
        "mean": "설명서, 안내서"
      },
      {
        "id": "423",
        "voca": "explore",
        "mean": "조사하다, 탐구하다"
      },
      {
        "id": "424",
        "voca": "response",
        "mean": "응답, 대답"
      },
      {
        "id": "425",
        "voca": "appearance",
        "mean": "외관, 외모"
      },
      {
        "id": "426",
        "voca": "successful",
        "mean": "성공적인, 성공한"
      },
      {
        "id": "427",
        "voca": "hold",
        "mean": "~을 수용하다, ~을 담다;\r\n(회의 등을)개최하다, 열다"
      },
      {
        "id": "428",
        "voca": "advance",
        "mean": "진보, 전진"
      },
      {
        "id": "429",
        "voca": "reliable",
        "mean": "믿을 만한, 신뢰할 수 있는"
      },
      {
        "id": "430",
        "voca": "quality",
        "mean": "품질, 질"
      },
      {
        "id": "431",
        "voca": "domestic",
        "mean": "국내의, 국산의"
      },
      {
        "id": "432",
        "voca": "development",
        "mean": "개발, 발전"
      },
      {
        "id": "433",
        "voca": "availability",
        "mean": "(입수)가능성, 유효성, 유용성"
      },
      {
        "id": "434",
        "voca": "update",
        "mean": "갱신, 개정, 갱신하다,\r\n최신의 것으로 하다"
      },
      {
        "id": "435",
        "voca": "accurate",
        "mean": "정확한"
      },
      {
        "id": "436",
        "voca": "complicate",
        "mean": "복잡한(complicatedly복잡하게)"
      },
      {
        "id": "437",
        "voca": "accomplished",
        "mean": "숙련된, 노련한"
      },
      {
        "id": "438",
        "voca": "inquiry",
        "mean": "문의, 질문"
      },
      {
        "id": "439",
        "voca": "indication",
        "mean": "징후, 조짐"
      },
      {
        "id": "440",
        "voca": "manufacturer",
        "mean": "제조회사, 제조업자"
      },
      {
        "id": "441",
        "voca": "compatible",
        "mean": "호환되는, 양립할 수 있는(compatibility 양립성, 호환성)"
      },
      {
        "id": "442",
        "voca": "superior",
        "mean": "우수한, 상급의"
      },
      {
        "id": "443",
        "voca": "absolute",
        "mean": "완전한, 완전무결한"
      },
      {
        "id": "444",
        "voca": "broaden",
        "mean": "넓히다"
      },
      {
        "id": "445",
        "voca": "corrosion",
        "mean": "부식"
      }
    ],
[
      {
        "id": "446",
        "voca": "epuipment",
        "mean": "장비, 설비"
      },
      {
        "id": "447",
        "voca": "automate",
        "mean": "자동화하다"
      },
      {
        "id": "448",
        "voca": "specification",
        "mean": "명세서, 설명서, 사양"
      },
      {
        "id": "449",
        "voca": "properly",
        "mean": "제대로, 정확하게"
      },
      {
        "id": "450",
        "voca": "safety",
        "mean": "안전"
      },
      {
        "id": "451",
        "voca": "precaution",
        "mean": "예방조치, 예방책"
      },
      {
        "id": "452",
        "voca": "operate",
        "mean": "(기계 등이)작동하다, 움직이다"
      },
      {
        "id": "453",
        "voca": "processing",
        "mean": "가공, 처리(process 과정, 진행, 처리하다)"
      },
      {
        "id": "454",
        "voca": "capacity",
        "mean": "용량, 수용력; 역할"
      },
      {
        "id": "455",
        "voca": "assemble",
        "mean": "(부품,기계 등을)조립하다;\r\n(사람을)모으다"
      },
      {
        "id": "456",
        "voca": "utilize",
        "mean": "이용하다, 활용하다"
      },
      {
        "id": "457",
        "voca": "place",
        "mean": "~을-한 상태에 두다;\r\n(지시,주문,신청등을)하다"
      },
      {
        "id": "458",
        "voca": "fill",
        "mean": "~을 채우다; (주문대로)이행하다"
      },
      {
        "id": "459",
        "voca": "manufacturing",
        "mean": "제조(업)의"
      },
      {
        "id": "460",
        "voca": "renovate",
        "mean": "(낡은 건물, 가구등을)개조하다,\r\n수리하다, 보수하다"
      },
      {
        "id": "461",
        "voca": "decision",
        "mean": "결정, 판단"
      },
      {
        "id": "462",
        "voca": "material",
        "mean": "재료, 물질"
      },
      {
        "id": "463",
        "voca": "success",
        "mean": "성과, 성공"
      },
      {
        "id": "464",
        "voca": "attribute",
        "mean": "(원인을)~의 덕분으로 돌리다"
      },
      {
        "id": "465",
        "voca": "efficiency",
        "mean": "효율, 능률"
      },
      {
        "id": "466",
        "voca": "limit",
        "mean": "한계, 제한"
      },
      {
        "id": "467",
        "voca": "tailored",
        "mean": "맞춤의, 주문에 따라 맞춘"
      },
      {
        "id": "468",
        "voca": "component",
        "mean": "부품, (구성)요소"
      },
      {
        "id": "469",
        "voca": "capable",
        "mean": "~을 할 수 있는, ~할 능력이 있는"
      },
      {
        "id": "470",
        "voca": "economize",
        "mean": "절약하다, 아끼다"
      },
      {
        "id": "471",
        "voca": "flexible",
        "mean": "융통성 있는; 유연한, 잘 구부러지는"
      },
      {
        "id": "472",
        "voca": "comparable",
        "mean": "필적하는, 비교되는"
      },
      {
        "id": "473",
        "voca": "produce",
        "mean": "생산하다"
      },
      {
        "id": "474",
        "voca": "respectively",
        "mean": "각각, 따로(respective 각각의)"
      },
      {
        "id": "475",
        "voca": "device",
        "mean": "장치"
      },
      {
        "id": "476",
        "voca": "trim",
        "mean": "(깍아)다듬다, 없애다; 삭감하다"
      },
      {
        "id": "477",
        "voca": "launch",
        "mean": "(신제품을)출시하다"
      },
      {
        "id": "478",
        "voca": "separately",
        "mean": "개별적으로, 따로따로"
      },
      {
        "id": "479",
        "voca": "expiration",
        "mean": "(기간,임기 등의)만료, 만기"
      },
      {
        "id": "480",
        "voca": "maneuver",
        "mean": "이동시키다, 움직이다"
      },
      {
        "id": "481",
        "voca": "coming",
        "mean": "다가오는"
      },
      {
        "id": "482",
        "voca": "damaged",
        "mean": "손상된, 손해를 입은"
      },
      {
        "id": "483",
        "voca": "prevent",
        "mean": "~을 막다, ~을 예방하다"
      },
      {
        "id": "484",
        "voca": "power",
        "mean": "전력, 전기"
      },
      {
        "id": "485",
        "voca": "chemical",
        "mean": "화학제품"
      }
    ],
[
      {
        "id": "486",
        "voca": "complaint",
        "mean": "불평"
      },
      {
        "id": "487",
        "voca": "deal",
        "mean": "처리하다; 거래하다; 분배하다"
      },
      {
        "id": "488",
        "voca": "argumentative",
        "mean": "논쟁적인, 논쟁을 좋아하는"
      },
      {
        "id": "489",
        "voca": "appropriately",
        "mean": "적절하게(appropriate 적합한)"
      },
      {
        "id": "490",
        "voca": "respond",
        "mean": "응답하다"
      },
      {
        "id": "491",
        "voca": "infuriate",
        "mean": "화나게하다, 격분시키다"
      },
      {
        "id": "492",
        "voca": "curteous",
        "mean": "예의바른"
      },
      {
        "id": "493",
        "voca": "satisfaction",
        "mean": "만족"
      },
      {
        "id": "494",
        "voca": "inconvenience",
        "mean": "불편, ~에게 불편을 느끼게 하다"
      },
      {
        "id": "495",
        "voca": "complete",
        "mean": "완료하다, 완성하다, 완료된, 완성된"
      },
      {
        "id": "496",
        "voca": "specific",
        "mean": "구체적인, 명확한"
      },
      {
        "id": "497",
        "voca": "return",
        "mean": "반환하다, 반송하다"
      },
      {
        "id": "498",
        "voca": "replace",
        "mean": "~을 교체하다, 대체하다"
      },
      {
        "id": "499",
        "voca": "presentation",
        "mean": "발표"
      },
      {
        "id": "500",
        "voca": "evaluation",
        "mean": "평가"
      },
      {
        "id": "501",
        "voca": "confident",
        "mean": "자신 있는"
      },
      {
        "id": "502",
        "voca": "cause",
        "mean": "~을 야기하다, ~의 원인이 되다\r\n원인"
      },
      {
        "id": "503",
        "voca": "commentary",
        "mean": "해설, 설명(comment 해설하다,논평, 주석을달다)"
      },
      {
        "id": "504",
        "voca": "notification",
        "mean": "통지"
      },
      {
        "id": "505",
        "voca": "apologize",
        "mean": "사과하다"
      },
      {
        "id": "506",
        "voca": "interact",
        "mean": "소통하다, 교류하다; 상호작용을 하다"
      },
      {
        "id": "507",
        "voca": "certain",
        "mean": "확신하는, 확실한; 특정한"
      },
      {
        "id": "508",
        "voca": "commitment",
        "mean": "헌신, 전념"
      },
      {
        "id": "509",
        "voca": "applaud",
        "mean": "~에게 박수를 보내다; 칭찬하다"
      },
      {
        "id": "510",
        "voca": "biography",
        "mean": "약력, 전기"
      },
      {
        "id": "511",
        "voca": "critical",
        "mean": "비판적인; 중요한; 위기의"
      },
      {
        "id": "512",
        "voca": "depend on",
        "mean": "~에 달려 있다, ~에게 의존하다"
      },
      {
        "id": "513",
        "voca": "combine",
        "mean": "결합시키다"
      },
      {
        "id": "514",
        "voca": "priority",
        "mean": "우선권, 우선사항"
      },
      {
        "id": "515",
        "voca": "observe",
        "mean": "관찰하다, 주시하다;\r\n(규칙 등을)준수하다, 지키다"
      },
      {
        "id": "516",
        "voca": "defective",
        "mean": "결함이 있는"
      },
      {
        "id": "517",
        "voca": "reflect",
        "mean": "반영하다, 나타내다"
      },
      {
        "id": "518",
        "voca": "attitude",
        "mean": "태도, 마음가짐"
      },
      {
        "id": "519",
        "voca": "disappoint",
        "mean": "실망시키다"
      },
      {
        "id": "520",
        "voca": "inquire",
        "mean": "문의하다, 질문하다"
      },
      {
        "id": "521",
        "voca": "insert",
        "mean": "삽입하다"
      },
      {
        "id": "522",
        "voca": "disclose",
        "mean": "공개하다, 드러내다"
      },
      {
        "id": "523",
        "voca": "guarantee",
        "mean": "보장하다, 보장"
      },
      {
        "id": "524",
        "voca": "politely",
        "mean": "공손하게, 예의바르게"
      },
      {
        "id": "525",
        "voca": "seriously",
        "mean": "진지하게"
      }
    ],
[
      {
        "id": "526",
        "voca": "international",
        "mean": "국제적인"
      },
      {
        "id": "527",
        "voca": "attraction",
        "mean": "관광 명소"
      },
      {
        "id": "528",
        "voca": "itinerary",
        "mean": "여행 일정"
      },
      {
        "id": "529",
        "voca": "exotic",
        "mean": "이국적인, 매혹적인"
      },
      {
        "id": "530",
        "voca": "diverse",
        "mean": "다양한"
      },
      {
        "id": "531",
        "voca": "superb",
        "mean": "최고의, 뛰어난"
      },
      {
        "id": "532",
        "voca": "baggage",
        "mean": "수화물"
      },
      {
        "id": "533",
        "voca": "destination",
        "mean": "목적지"
      },
      {
        "id": "534",
        "voca": "missing",
        "mean": "분실된, 없어진"
      },
      {
        "id": "535",
        "voca": "locate",
        "mean": "(~의 위치를)찾아내다;\r\n~을 위치시키다"
      },
      {
        "id": "536",
        "voca": "approximately",
        "mean": "대략"
      },
      {
        "id": "537",
        "voca": "duty",
        "mean": "관세,세금; 직무,의무"
      },
      {
        "id": "538",
        "voca": "process",
        "mean": "과정, 처리하다"
      },
      {
        "id": "539",
        "voca": "board",
        "mean": "탑승하다, 이사회"
      },
      {
        "id": "540",
        "voca": "comfortable",
        "mean": "편안한"
      },
      {
        "id": "541",
        "voca": "declare",
        "mean": "(세관에서)신고하다"
      },
      {
        "id": "542",
        "voca": "specify",
        "mean": "명시하다 (specification 열거, 명시, 명세서)"
      },
      {
        "id": "543",
        "voca": "depart",
        "mean": "출발하다"
      },
      {
        "id": "544",
        "voca": "emergency",
        "mean": "비상시, 비상 사태"
      },
      {
        "id": "545",
        "voca": "passenger",
        "mean": "승객"
      },
      {
        "id": "546",
        "voca": "outgoing",
        "mean": "(장소를)출발하는, 떠나는;\r\n(지위를)떠나는"
      },
      {
        "id": "547",
        "voca": "tighly",
        "mean": "단단히, 꽉"
      },
      {
        "id": "548",
        "voca": "tour",
        "mean": "(공장,시설 등의)견학, 짧은 여행"
      },
      {
        "id": "549",
        "voca": "carrier",
        "mean": "항공사, 수송기, 수송 회사"
      },
      {
        "id": "550",
        "voca": "customarily",
        "mean": "관례상, 습관적으로"
      },
      {
        "id": "551",
        "voca": "confuse",
        "mean": "혼란시키다 (refuse 거절하다, 거부하다)"
      },
      {
        "id": "552",
        "voca": "arrive",
        "mean": "도착하다"
      },
      {
        "id": "553",
        "voca": "brochure",
        "mean": "(홍보용)소책자, 브로셔"
      },
      {
        "id": "554",
        "voca": "involve",
        "mean": "수반하다, 포함하다; 참여시키다"
      },
      {
        "id": "555",
        "voca": "ship",
        "mean": "(배나 다른 운송 수단으로)운송하다, 수송하다, 선박, 배"
      },
      {
        "id": "556",
        "voca": "suitcase",
        "mean": "여행가방"
      },
      {
        "id": "557",
        "voca": "unavailable",
        "mean": "이용할 수 없는, 구할 수 없는"
      },
      {
        "id": "558",
        "voca": "fill out/in",
        "mean": "(서류에)기입하다, 적어 넣다"
      },
      {
        "id": "559",
        "voca": "customs",
        "mean": "세관"
      },
      {
        "id": "560",
        "voca": "away",
        "mean": "떨어져서"
      },
      {
        "id": "561",
        "voca": "dramatic",
        "mean": "멋진, 극적인; 급격한"
      },
      {
        "id": "562",
        "voca": "hospitality",
        "mean": "환대, 친절"
      },
      {
        "id": "563",
        "voca": "indulge",
        "mean": "빠지다, 탐닉하다"
      },
      {
        "id": "564",
        "voca": "proximity",
        "mean": "가까움, 근접함"
      },
      {
        "id": "565",
        "voca": "seating",
        "mean": "(집합적)좌석 설비; 좌석 배열"
      },
      {
        "id": "566",
        "voca": "unlimited",
        "mean": "무제한의"
      }
    ],
[
      {
        "id": "567",
        "voca": "proposal",
        "mean": "제안, 계획"
      },
      {
        "id": "568",
        "voca": "alliance",
        "mean": "동맹, 제휴"
      },
      {
        "id": "569",
        "voca": "stipulation",
        "mean": "계약 조건"
      },
      {
        "id": "570",
        "voca": "term",
        "mean": "조건; 임기, 기한"
      },
      {
        "id": "571",
        "voca": "compromise",
        "mean": "타협, 화해"
      },
      {
        "id": "572",
        "voca": "negotiation",
        "mean": "협상, 교섭"
      },
      {
        "id": "573",
        "voca": "agreement",
        "mean": "계약, 협정; 합의"
      },
      {
        "id": "574",
        "voca": "deadlock",
        "mean": "교착 상태"
      },
      {
        "id": "575",
        "voca": "review",
        "mean": "검토하다, 재조사하다"
      },
      {
        "id": "576",
        "voca": "contract",
        "mean": "계약(서),계약하다, 수축하다"
      },
      {
        "id": "577",
        "voca": "signature",
        "mean": "서명"
      },
      {
        "id": "578",
        "voca": "originally",
        "mean": "원래, 처음에는"
      },
      {
        "id": "579",
        "voca": "direction",
        "mean": "방향, 지시, 감독"
      },
      {
        "id": "580",
        "voca": "initially",
        "mean": "처음에, 초기에"
      },
      {
        "id": "581",
        "voca": "expire",
        "mean": "(계약등이)만료되다"
      },
      {
        "id": "582",
        "voca": "collaborate",
        "mean": "협력하다, 공동으로 일하다"
      },
      {
        "id": "583",
        "voca": "dedicate",
        "mean": "전념하다, 헌신하다, 바치다(indicate 나타내다)"
      },
      {
        "id": "584",
        "voca": "revised",
        "mean": "수정된, 변경된"
      },
      {
        "id": "585",
        "voca": "imperative",
        "mean": "반드시 해야 하는, 필수적인"
      },
      {
        "id": "586",
        "voca": "cooperatively",
        "mean": "협력하여, 협조적으로"
      },
      {
        "id": "587",
        "voca": "commission",
        "mean": "수수료, 커미션; 위원회\r\n(일 등을)의뢰하다, 주문하다"
      },
      {
        "id": "588",
        "voca": "omit",
        "mean": "빠뜨리다, 생략하다"
      },
      {
        "id": "589",
        "voca": "conflict",
        "mean": "대립, 충돌, 갈등"
      },
      {
        "id": "590",
        "voca": "renew",
        "mean": "(계약 등을)갱신하다"
      },
      {
        "id": "591",
        "voca": "proficient",
        "mean": "능숙한, 능한"
      },
      {
        "id": "592",
        "voca": "confidentiality",
        "mean": "기밀, 비밀"
      },
      {
        "id": "593",
        "voca": "dispute",
        "mean": "분쟁, 논쟁"
      },
      {
        "id": "594",
        "voca": "objection",
        "mean": "반대, 이익"
      },
      {
        "id": "595",
        "voca": "define",
        "mean": "규정하다, 정의하다"
      },
      {
        "id": "596",
        "voca": "impression",
        "mean": "인상"
      },
      {
        "id": "597",
        "voca": "security",
        "mean": "보안, 안전, 보호"
      },
      {
        "id": "598",
        "voca": "option",
        "mean": "선택권"
      },
      {
        "id": "599",
        "voca": "proceed",
        "mean": "(일을)진행하다, 진척되다"
      },
      {
        "id": "600",
        "voca": "modify",
        "mean": "수정하다, 일부 변경하다"
      },
      {
        "id": "601",
        "voca": "narrow",
        "mean": "(범위 등을)좁히다"
      },
      {
        "id": "602",
        "voca": "bid",
        "mean": "입찰"
      },
      {
        "id": "603",
        "voca": "settle",
        "mean": "해결하다, 처리하다"
      },
      {
        "id": "604",
        "voca": "terminate",
        "mean": "끝내다, 종결시키다"
      },
      {
        "id": "605",
        "voca": "challenging",
        "mean": "도전적인, 힘든"
      },
      {
        "id": "606",
        "voca": "foundation",
        "mean": "토대, 기초"
      }
    ],
[
      {
        "id": "607",
        "voca": "completely",
        "mean": "전적으로, 완전히"
      },
      {
        "id": "608",
        "voca": "refuse",
        "mean": "거절하다"
      },
      {
        "id": "609",
        "voca": "temporarily",
        "mean": "일시적으로\r\n(temporary 일시적인, 잠정적인, 임시고용인)"
      },
      {
        "id": "610",
        "voca": "dealer",
        "mean": "판매업자, 상인"
      },
      {
        "id": "611",
        "voca": "bulk",
        "mean": "대량의"
      },
      {
        "id": "612",
        "voca": "inventory",
        "mean": "재고품, 재고목록"
      },
      {
        "id": "613",
        "voca": "short",
        "mean": "부족한"
      },
      {
        "id": "614",
        "voca": "cost",
        "mean": "비용"
      },
      {
        "id": "615",
        "voca": "selection",
        "mean": "선택된 것, 정선품"
      },
      {
        "id": "616",
        "voca": "commercial",
        "mean": "상업의, 상업적인, 광고"
      },
      {
        "id": "617",
        "voca": "order",
        "mean": "주문하다, 주문, 주문품"
      },
      {
        "id": "618",
        "voca": "provide",
        "mean": "공급하다, 제공하다"
      },
      {
        "id": "619",
        "voca": "contact",
        "mean": "~와 연락하다,\r\n(상업적 목적으로)교섭하고 있는 사람"
      },
      {
        "id": "620",
        "voca": "invoice",
        "mean": "송장"
      },
      {
        "id": "621",
        "voca": "move",
        "mean": "옮기다, 움직이다, 조치, 수단;\r\n이동, 이사"
      },
      {
        "id": "622",
        "voca": "supply",
        "mean": "공급하다, 공급; (-s)비품, 소모품"
      },
      {
        "id": "623",
        "voca": "discount",
        "mean": "할인"
      },
      {
        "id": "624",
        "voca": "distribute",
        "mean": "배포하다, 배급하다"
      },
      {
        "id": "625",
        "voca": "acquisition",
        "mean": "인수; 구입한 것"
      },
      {
        "id": "626",
        "voca": "assure",
        "mean": "~에게 보장하다, ~을 안심시키다, 장담하다"
      },
      {
        "id": "627",
        "voca": "subject",
        "mean": "~의 영향을 받기 쉬운;\r\n(동의 등을)조건으로 하는,\r\n~에게(~을) 받게 하다"
      },
      {
        "id": "628",
        "voca": "seek",
        "mean": "구하다, 찾다"
      },
      {
        "id": "629",
        "voca": "satisfactory",
        "mean": "만족스러운"
      },
      {
        "id": "630",
        "voca": "confirmation",
        "mean": "확인, 확증"
      },
      {
        "id": "631",
        "voca": "unable",
        "mean": "~할 수 없는"
      },
      {
        "id": "632",
        "voca": "payment",
        "mean": "지불(금액),납입(금액)"
      },
      {
        "id": "633",
        "voca": "measure",
        "mean": "대책, 조치, 수단\r\n측정하다"
      },
      {
        "id": "634",
        "voca": "bargain",
        "mean": "특가품, 흥정"
      },
      {
        "id": "635",
        "voca": "stock",
        "mean": "재고; 주식"
      },
      {
        "id": "636",
        "voca": "affordability",
        "mean": "감당할 수 있는 비용"
      },
      {
        "id": "637",
        "voca": "clientele",
        "mean": "(집합적)고객들,\r\n(변호사,건축가 등의)모든 의뢰인"
      },
      {
        "id": "638",
        "voca": "acclaim",
        "mean": "호평, 찬사"
      },
      {
        "id": "639",
        "voca": "represent",
        "mean": "~을 대표하다"
      },
      {
        "id": "640",
        "voca": "rating",
        "mean": "등급, 평가"
      },
      {
        "id": "641",
        "voca": "encompass",
        "mean": "포함하다, 둘러싸다"
      },
      {
        "id": "642",
        "voca": "finalize",
        "mean": "마무리 짓다, 완결하다"
      },
      {
        "id": "643",
        "voca": "market",
        "mean": "시장"
      },
      {
        "id": "644",
        "voca": "retail",
        "mean": "소매"
      },
      {
        "id": "645",
        "voca": "commodity",
        "mean": "상품, 산물"
      },
      {
        "id": "646",
        "voca": "quote",
        "mean": "견적(액), 견적을 내다"
      },
      {
        "id": "647",
        "voca": "consignment",
        "mean": "위탁 판매(consign위탁하다)"
      }
    ],
[
      {
        "id": "648",
        "voca": "fragile",
        "mean": "깨지기 쉬운"
      },
      {
        "id": "649",
        "voca": "perishable",
        "mean": "부패하기 쉬운"
      },
      {
        "id": "650",
        "voca": "deliver",
        "mean": "배달하다; (연설을)하다"
      },
      {
        "id": "651",
        "voca": "ensure",
        "mean": "확실하게 하다, 보장하다"
      },
      {
        "id": "652",
        "voca": "courier",
        "mean": "급송 택배, 운반인"
      },
      {
        "id": "653",
        "voca": "carton",
        "mean": "(큰)판지상자"
      },
      {
        "id": "654",
        "voca": "address",
        "mean": "주소,\r\n(어려운 문제 등을)처리하다,다루다"
      },
      {
        "id": "655",
        "voca": "shipment",
        "mean": "선적, (화물의)발송;\r\n수송품, 적하물"
      },
      {
        "id": "656",
        "voca": "particularly",
        "mean": "특히"
      },
      {
        "id": "657",
        "voca": "adequately",
        "mean": "적절히"
      },
      {
        "id": "658",
        "voca": "article",
        "mean": "물품, 물건; 기사, 논설"
      },
      {
        "id": "659",
        "voca": "efficient",
        "mean": "(기계, 방법 등이)효과적인,능률적인"
      },
      {
        "id": "660",
        "voca": "agency",
        "mean": "대행 회사, 대리점"
      },
      {
        "id": "661",
        "voca": "enclose",
        "mean": "~을 동봉하다; ~을 둘러싸다, 애워싸다"
      },
      {
        "id": "662",
        "voca": "careful",
        "mean": "조심스러운, 주의 깊은"
      },
      {
        "id": "663",
        "voca": "pick up",
        "mean": "~을 찾다; (사람,물건 등을) 도중에 태우다"
      },
      {
        "id": "664",
        "voca": "carry",
        "mean": "지니다; (물건을)팔다, 가게에 놓다"
      },
      {
        "id": "665",
        "voca": "attach",
        "mean": "붙이다, 접착하다, 첨부하다"
      },
      {
        "id": "666",
        "voca": "formerly",
        "mean": "이전에"
      },
      {
        "id": "667",
        "voca": "package",
        "mean": "소포, 꾸러미"
      },
      {
        "id": "668",
        "voca": "react",
        "mean": "반응하다, 대응하다"
      },
      {
        "id": "669",
        "voca": "content",
        "mean": "내용물"
      },
      {
        "id": "670",
        "voca": "convenience",
        "mean": "편의, 편리"
      },
      {
        "id": "671",
        "voca": "acknowledge",
        "mean": "인정하다; (편지 등의)수령을 알리다, 감사하다"
      },
      {
        "id": "672",
        "voca": "caution",
        "mean": "주의, 조심"
      },
      {
        "id": "673",
        "voca": "correspondence",
        "mean": "편지, 통신문"
      },
      {
        "id": "674",
        "voca": "separate",
        "mean": "분리하다; 분류하다"
      },
      {
        "id": "675",
        "voca": "remarkable",
        "mean": "현저한, 두드러진(markedly 현저하게 눈에 띄게)"
      },
      {
        "id": "676",
        "voca": "handle",
        "mean": "취급하다, 다루다"
      },
      {
        "id": "677",
        "voca": "warehouse",
        "mean": "창고, 저장소"
      },
      {
        "id": "678",
        "voca": "impose",
        "mean": "(세금 등을)부과하다"
      },
      {
        "id": "679",
        "voca": "storage",
        "mean": "보관소, 저장소"
      },
      {
        "id": "680",
        "voca": "detach",
        "mean": "분리하다, 떼다, (attach 붙이다)"
      },
      {
        "id": "681",
        "voca": "envelope",
        "mean": "봉투"
      },
      {
        "id": "682",
        "voca": "exclusion",
        "mean": "제외, 배제"
      },
      {
        "id": "683",
        "voca": "recipient",
        "mean": "수신자"
      },
      {
        "id": "684",
        "voca": "affix",
        "mean": "(우표 등을)붙이다"
      },
      {
        "id": "685",
        "voca": "incorrect",
        "mean": "부정확한"
      },
      {
        "id": "686",
        "voca": "oblige",
        "mean": "어쩔 수 없이 ~하게 하다,\r\n~에게 강요하다"
      },
      {
        "id": "687",
        "voca": "step",
        "mean": "단계; 조치, 수단"
      }
    ],
[
      {
        "id": "688",
        "voca": "check in",
        "mean": "체크인하다, 숙박 수속을 하다"
      },
      {
        "id": "689",
        "voca": "compensate",
        "mean": "보상하다\r\n(compensation 보상)"
      },
      {
        "id": "690",
        "voca": "complimentary",
        "mean": "무료의, 우대의"
      },
      {
        "id": "691",
        "voca": "chef",
        "mean": "주방장"
      },
      {
        "id": "692",
        "voca": "container",
        "mean": "용기, 그릇"
      },
      {
        "id": "693",
        "voca": "elegant",
        "mean": "우아한, 고상한"
      },
      {
        "id": "694",
        "voca": "flavor",
        "mean": "맛, 풍미"
      },
      {
        "id": "695",
        "voca": "accommodate",
        "mean": "(건물 등이)~을 수용하다, 숙박시키다;(충분한 공간을) 제공하다\r\n(조건, 요구 등을)만족시키다"
      },
      {
        "id": "696",
        "voca": "available",
        "mean": "(사물이)이용 가능한;\r\n(사람이) 시간이 있는"
      },
      {
        "id": "697",
        "voca": "reception",
        "mean": "환영회; (호텔, 회사, 병원 등의)접수처"
      },
      {
        "id": "698",
        "voca": "in advance",
        "mean": "미리, 사전에"
      },
      {
        "id": "699",
        "voca": "refreshments",
        "mean": "다과, 가벼운 음식물"
      },
      {
        "id": "700",
        "voca": "make",
        "mean": "~을 하다, ~을 만들다"
      },
      {
        "id": "701",
        "voca": "cater",
        "mean": "(연회 등의)음식물을 공급하다"
      },
      {
        "id": "702",
        "voca": "reservation",
        "mean": "예약, 지정; 보호구역"
      },
      {
        "id": "703",
        "voca": "beverage",
        "mean": "음료"
      },
      {
        "id": "704",
        "voca": "confirm",
        "mean": "확인하다"
      },
      {
        "id": "705",
        "voca": "cancel",
        "mean": "취소하다"
      },
      {
        "id": "706",
        "voca": "rate",
        "mean": "요금"
      },
      {
        "id": "707",
        "voca": "conviniently",
        "mean": "편리하게"
      },
      {
        "id": "708",
        "voca": "decorate",
        "mean": "장식하다"
      },
      {
        "id": "709",
        "voca": "information",
        "mean": "정보, 자료"
      },
      {
        "id": "710",
        "voca": "retain",
        "mean": "유지하다, 보유하다"
      },
      {
        "id": "711",
        "voca": "atmosphere",
        "mean": "분위기, 환경"
      },
      {
        "id": "712",
        "voca": "cuisine",
        "mean": "(독특한)요리"
      },
      {
        "id": "713",
        "voca": "sequence",
        "mean": "순서, 차례"
      },
      {
        "id": "714",
        "voca": "extensive",
        "mean": "광범위한, 넓은"
      },
      {
        "id": "715",
        "voca": "prior",
        "mean": "전의, 먼저의"
      },
      {
        "id": "716",
        "voca": "book",
        "mean": "예약하다"
      },
      {
        "id": "717",
        "voca": "amenity",
        "mean": "편의 시설"
      },
      {
        "id": "718",
        "voca": "belongings",
        "mean": "소지품, 소유물"
      },
      {
        "id": "719",
        "voca": "entirely",
        "mean": "완전히"
      },
      {
        "id": "720",
        "voca": "ease",
        "mean": "완화시키다, 쉬움, 용이함"
      },
      {
        "id": "721",
        "voca": "ingredient",
        "mean": "재료, 성분"
      },
      {
        "id": "722",
        "voca": "sip",
        "mean": "음미하며 마시다, 홀짝거리다"
      },
      {
        "id": "723",
        "voca": "stir",
        "mean": "휘젓다, 뒤섞다"
      },
      {
        "id": "724",
        "voca": "choice",
        "mean": "선택물, 선택 사항, 선택"
      },
      {
        "id": "725",
        "voca": "complication",
        "mean": "복잡한 문제"
      },
      {
        "id": "726",
        "voca": "freshness",
        "mean": "신선함"
      },
      {
        "id": "727",
        "voca": "occupancy",
        "mean": "(호텔등의)이용률"
      }
    ],
[
      {
        "id": "728",
        "voca": "decline",
        "mean": "감소, 하락,(초대,신청을)거절하다"
      },
      {
        "id": "729",
        "voca": "markedly",
        "mean": "현저하게, 눈에 띄게"
      },
      {
        "id": "730",
        "voca": "increase",
        "mean": "인상, 증가, 증가하다"
      },
      {
        "id": "731",
        "voca": "revenue",
        "mean": "수입"
      },
      {
        "id": "732",
        "voca": "projection",
        "mean": "예상(치)"
      },
      {
        "id": "733",
        "voca": "substantial",
        "mean": "상당한"
      },
      {
        "id": "734",
        "voca": "anticipate",
        "mean": "예상하다, 기대하다\r\n(anticipation 예상)"
      },
      {
        "id": "735",
        "voca": "significantly",
        "mean": "상당히, 두드러지게"
      },
      {
        "id": "736",
        "voca": "estimate",
        "mean": "추정하다, 추산하다, 추정(치), 추산"
      },
      {
        "id": "737",
        "voca": "shift",
        "mean": "옮기다, 이동하다, 변화, 교대근무"
      },
      {
        "id": "738",
        "voca": "fee",
        "mean": "요금, 수수료"
      },
      {
        "id": "739",
        "voca": "production",
        "mean": "생산량, 생산"
      },
      {
        "id": "740",
        "voca": "sale",
        "mean": "(-s)매출액, 매상고; (할인)판매"
      },
      {
        "id": "741",
        "voca": "impressive",
        "mean": "굉장한, 인상적인"
      },
      {
        "id": "742",
        "voca": "representative",
        "mean": "직원, 외판원; 대표자"
      },
      {
        "id": "743",
        "voca": "recent",
        "mean": "최근의"
      },
      {
        "id": "744",
        "voca": "exceed",
        "mean": "~을 초과하다\r\n(exceedingly 대단히, 몹시)\r\n(exceedably 넘을 수 있는)"
      },
      {
        "id": "745",
        "voca": "improvement",
        "mean": "향상"
      },
      {
        "id": "746",
        "voca": "employer",
        "mean": "고용주"
      },
      {
        "id": "747",
        "voca": "regular",
        "mean": "정기적인; 단골의"
      },
      {
        "id": "748",
        "voca": "summarize",
        "mean": "요약하다"
      },
      {
        "id": "749",
        "voca": "typically",
        "mean": "보통, 일반적으로"
      },
      {
        "id": "750",
        "voca": "whole",
        "mean": "전체의, 온전한"
      },
      {
        "id": "751",
        "voca": "growth",
        "mean": "성장, 발전"
      },
      {
        "id": "752",
        "voca": "figure",
        "mean": "총액, 합계 수"
      },
      {
        "id": "753",
        "voca": "steady",
        "mean": "꾸준한; 안정된"
      },
      {
        "id": "754",
        "voca": "frequent",
        "mean": "빈번한, 잦은"
      },
      {
        "id": "755",
        "voca": "achieve",
        "mean": "달성하다, 성취하다"
      },
      {
        "id": "756",
        "voca": "assumption",
        "mean": "추정, 산정, 가정"
      },
      {
        "id": "757",
        "voca": "share",
        "mean": "공유하다, 함께쓰다;\r\n(생각, 경험, 감정을 남과)함께 나누다\r\n몫, 지분"
      },
      {
        "id": "758",
        "voca": "incur",
        "mean": "(손실을)입다, (빚을)지다"
      },
      {
        "id": "759",
        "voca": "slightly",
        "mean": "약간"
      },
      {
        "id": "760",
        "voca": "profit",
        "mean": "수익, 이익"
      },
      {
        "id": "761",
        "voca": "reliant",
        "mean": "의존하는, 의지하는\r\n(reliantly 의지하여)"
      },
      {
        "id": "762",
        "voca": "illustrate",
        "mean": "분명히 보여주다, 설명하다\r\n(illustrate 설명,해설,삽화)"
      },
      {
        "id": "763",
        "voca": "inaccurate",
        "mean": "부정확한"
      },
      {
        "id": "764",
        "voca": "percentage",
        "mean": "비율, 백분율"
      },
      {
        "id": "765",
        "voca": "reduce",
        "mean": "줄이다, 감소시키다"
      },
      {
        "id": "766",
        "voca": "tend",
        "mean": "~하는 경향이 있다, ~하기 쉽다"
      }
    ],
[
      {
        "id": "767",
        "voca": "audit",
        "mean": "회계 감사, 심사"
      },
      {
        "id": "768",
        "voca": "accounting",
        "mean": "회계"
      },
      {
        "id": "769",
        "voca": "budget",
        "mean": "예산"
      },
      {
        "id": "770",
        "voca": "financial",
        "mean": "재정의, 금전상의"
      },
      {
        "id": "771",
        "voca": "curtail",
        "mean": "~을 줄이다, 삭감하다\r\n(curtailment 단축)"
      },
      {
        "id": "772",
        "voca": "deficit",
        "mean": "적자, 부족액"
      },
      {
        "id": "773",
        "voca": "recently",
        "mean": "최근에"
      },
      {
        "id": "774",
        "voca": "substantially",
        "mean": "크게, 상당히\r\n(substantial 상당한, 재력이 있는)"
      },
      {
        "id": "775",
        "voca": "committee",
        "mean": "위원회"
      },
      {
        "id": "776",
        "voca": "frequently",
        "mean": "자주, 흔히"
      },
      {
        "id": "777",
        "voca": "capability",
        "mean": "능력, 역량"
      },
      {
        "id": "778",
        "voca": "proceeds",
        "mean": "수익금"
      },
      {
        "id": "779",
        "voca": "reimburse",
        "mean": "변제하다, 상환하다"
      },
      {
        "id": "780",
        "voca": "considerably",
        "mean": "상당히, 많이"
      },
      {
        "id": "781",
        "voca": "adequate",
        "mean": "충분한, 적절한\r\n(adequately 적절히, 충분히)"
      },
      {
        "id": "782",
        "voca": "total",
        "mean": "총계의, 전부의"
      },
      {
        "id": "783",
        "voca": "allocate",
        "mean": "할당하다, 배분하다\r\n(allocation 할당)"
      },
      {
        "id": "784",
        "voca": "inspector",
        "mean": "조사관, 감독관\r\n(inspect 검사하다)"
      },
      {
        "id": "785",
        "voca": "preferred",
        "mean": "선호되는, 우선의"
      },
      {
        "id": "786",
        "voca": "quarter",
        "mean": "사분기; 4분의1"
      },
      {
        "id": "787",
        "voca": "interrupt",
        "mean": "중단시키다, 방해하다\r\n(interruption 방해, 중지, 중단)"
      },
      {
        "id": "788",
        "voca": "browse",
        "mean": "흝어보다, 둘러보다"
      },
      {
        "id": "789",
        "voca": "prompt",
        "mean": "즉각적인; 신속한, 촉발하다, 유도하다 (promptly 신속히)"
      },
      {
        "id": "790",
        "voca": "deduct",
        "mean": "공제하다, 빼다\r\n(deduction 공제)"
      },
      {
        "id": "791",
        "voca": "measurement",
        "mean": "측정, 측량; 치수"
      },
      {
        "id": "792",
        "voca": "shorten",
        "mean": "단축하다, 짧게하다"
      },
      {
        "id": "793",
        "voca": "amend",
        "mean": "수정하다\r\n(amendable 개정할 수 있는)"
      },
      {
        "id": "794",
        "voca": "calculate",
        "mean": "계산하다, 산출하다"
      },
      {
        "id": "795",
        "voca": "exempt",
        "mean": "면제된, ~이 없는\r\n(exemption 면제)"
      },
      {
        "id": "796",
        "voca": "deficient",
        "mean": "부족한, 불충분한"
      },
      {
        "id": "797",
        "voca": "compare",
        "mean": "비교하다"
      },
      {
        "id": "798",
        "voca": "fortunate",
        "mean": "운 좋은"
      },
      {
        "id": "799",
        "voca": "expenditure",
        "mean": "지출, 비용"
      },
      {
        "id": "800",
        "voca": "accurately",
        "mean": "정확하게"
      },
      {
        "id": "801",
        "voca": "worth",
        "mean": "~의 가치가 있는, (얼마)어치, 가치"
      },
      {
        "id": "802",
        "voca": "excess",
        "mean": "초과, 초과량"
      },
      {
        "id": "803",
        "voca": "fiscal",
        "mean": "회계의, 재정상의"
      },
      {
        "id": "804",
        "voca": "incidental",
        "mean": "부수적인"
      },
      {
        "id": "805",
        "voca": "inflation",
        "mean": "물가상승, 인플레이션, 통화팽창"
      },
      {
        "id": "806",
        "voca": "liable",
        "mean": "책임져야 할; ~하기 쉬운"
      },
      {
        "id": "807",
        "voca": "spend",
        "mean": "~을 쓰다, 소비하다"
      },
      {
        "id": "808",
        "voca": "turnover",
        "mean": "총 매상고, 거래액; 이직률"
      }
    ],
[
      {
        "id": "809",
        "voca": "announce",
        "mean": "발표하다"
      },
      {
        "id": "810",
        "voca": "interested",
        "mean": "관련 있는; 관심이 있는"
      },
      {
        "id": "811",
        "voca": "active",
        "mean": "적극적인, 활발한"
      },
      {
        "id": "812",
        "voca": "accept",
        "mean": "수락하다, 승낙하다"
      },
      {
        "id": "813",
        "voca": "foresee",
        "mean": "예견하다, 예감하다"
      },
      {
        "id": "814",
        "voca": "expansion",
        "mean": "확장, 팽창"
      },
      {
        "id": "815",
        "voca": "relocate",
        "mean": "(공장 등을)이전하다"
      },
      {
        "id": "816",
        "voca": "competitor",
        "mean": "경쟁업체, 경쟁자"
      },
      {
        "id": "817",
        "voca": "asset",
        "mean": "자산"
      },
      {
        "id": "818",
        "voca": "contribute",
        "mean": "기여하다, 공헌하다"
      },
      {
        "id": "819",
        "voca": "dedicated",
        "mean": "(목표 등에)전념하는, 헌신적인"
      },
      {
        "id": "820",
        "voca": "misplace",
        "mean": "잃어버리다, 위치를 잘못 잡다"
      },
      {
        "id": "821",
        "voca": "considerable",
        "mean": "(정도나 양이)상당한"
      },
      {
        "id": "822",
        "voca": "last",
        "mean": "지속되다"
      },
      {
        "id": "823",
        "voca": "emerge",
        "mean": "부상하다, 나타나다\r\n(merge 합병하다)"
      },
      {
        "id": "824",
        "voca": "grow",
        "mean": "성장하다, 성장시키다, 증가시키다"
      },
      {
        "id": "825",
        "voca": "select",
        "mean": "선발하다, 선택하다"
      },
      {
        "id": "826",
        "voca": "merge",
        "mean": "합병하다, 병합하다"
      },
      {
        "id": "827",
        "voca": "imply",
        "mean": "암시하다, 넌지시 나타내다, 의미하다"
      },
      {
        "id": "828",
        "voca": "vital",
        "mean": "필수적인"
      },
      {
        "id": "829",
        "voca": "persist",
        "mean": "(집요하게)계속하다, 계속되다, 지속되다\r\n(continue 계속되다, 계속하다)"
      },
      {
        "id": "830",
        "voca": "independent",
        "mean": "독립적인, 독자적인"
      },
      {
        "id": "831",
        "voca": "force",
        "mean": "세력"
      },
      {
        "id": "832",
        "voca": "establish",
        "mean": "설립하다"
      },
      {
        "id": "833",
        "voca": "initiate",
        "mean": "(사업 등을) 착수하다, 시작하다\r\n(commence 시작하다)"
      },
      {
        "id": "834",
        "voca": "enhance",
        "mean": "(질 등을) 향상시키다, 높이다, 강화하다\r\n(strengthen 강화하다)\r\n(reinforce 보강하다, 강화하다)"
      },
      {
        "id": "835",
        "voca": "renowned",
        "mean": "저명한, 유명한, 명성이 있는"
      },
      {
        "id": "836",
        "voca": "informed",
        "mean": "정보에 근거한\r\n(inform 알리다, 통지하다)"
      },
      {
        "id": "837",
        "voca": "minutes",
        "mean": "회의록"
      },
      {
        "id": "838",
        "voca": "waive",
        "mean": "(규칙 등을)적용하지 않다,\r\n(권리,청구등을)포기하다\r\n(abandon 버리다, 단념하다, 그만두다)"
      },
      {
        "id": "839",
        "voca": "reach",
        "mean": "(치수,양 등이)~에 달하다;\r\n~에 도착하다"
      },
      {
        "id": "840",
        "voca": "authority",
        "mean": "권한; 당국"
      },
      {
        "id": "841",
        "voca": "acquire",
        "mean": "매입하다, 취득하다\r\n(inquire 묻다)\r\n(inquiry 조사, 문의)"
      },
      {
        "id": "842",
        "voca": "surpass",
        "mean": "~을 능가하다, 넘어서다"
      },
      {
        "id": "843",
        "voca": "run",
        "mean": "~을 운영하다, 경영하다"
      },
      {
        "id": "844",
        "voca": "improbable",
        "mean": "사실이라고 생각할 수 없는,\r\n일어날 것 같지 않은\r\n(probable 있음직한, 일어날것같은)"
      },
      {
        "id": "845",
        "voca": "edge",
        "mean": "우위, 유리함; 가장자리, 끝"
      },
      {
        "id": "846",
        "voca": "simultaneously",
        "mean": "동시에\r\n(coincidentally 우연히 일치하게 동시발생적으로)"
      },
      {
        "id": "847",
        "voca": "reveal",
        "mean": "밝히다, 누설하다"
      },
      {
        "id": "848",
        "voca": "productivity",
        "mean": "생산성"
      },
      {
        "id": "849",
        "voca": "uncertain",
        "mean": "확신이 없는, 불확실한"
      },
      {
        "id": "850",
        "voca": "premier",
        "mean": "으뜸의, 첫째의"
      }
    ],
[
      {
        "id": "851",
        "voca": "agenda",
        "mean": "의제, 의사일정"
      },
      {
        "id": "852",
        "voca": "convene",
        "mean": "(회원 등이)모이다, (회의가)개최되다\r\n(convener 의장,소집자)"
      },
      {
        "id": "853",
        "voca": "refute",
        "mean": "부인하다, 반박하다\r\n(refutation 반박, 반론)"
      },
      {
        "id": "854",
        "voca": "coordination",
        "mean": "조정"
      },
      {
        "id": "855",
        "voca": "unanimous",
        "mean": "만장일치의, 동의하는\r\n(unanimously  만장일치로)"
      },
      {
        "id": "856",
        "voca": "convince",
        "mean": "납득시키다, 확신시키다"
      },
      {
        "id": "857",
        "voca": "consensus",
        "mean": "여론, 일치된 의견"
      },
      {
        "id": "858",
        "voca": "defer",
        "mean": "연기하다, 미루다\r\n(differ 다르다)"
      },
      {
        "id": "859",
        "voca": "usually",
        "mean": "보통, 일반적으로"
      },
      {
        "id": "860",
        "voca": "reschedule",
        "mean": "일정을 바꾸다"
      },
      {
        "id": "861",
        "voca": "meeting",
        "mean": "회의"
      },
      {
        "id": "862",
        "voca": "determine",
        "mean": "알아내다; 결정하다, 확정하다"
      },
      {
        "id": "863",
        "voca": "report",
        "mean": "보고하다; 출두하다,\r\n(직장,회의 등에 도착을)알리다,\r\n보고서; 보도, 기록"
      },
      {
        "id": "864",
        "voca": "comment",
        "mean": "논평하다, 언급하다"
      },
      {
        "id": "865",
        "voca": "phase",
        "mean": "단계"
      },
      {
        "id": "866",
        "voca": "approve",
        "mean": "승인하다, 찬성하다"
      },
      {
        "id": "867",
        "voca": "enclosed",
        "mean": "동봉된"
      },
      {
        "id": "868",
        "voca": "easy",
        "mean": "쉬운, 용이한"
      },
      {
        "id": "869",
        "voca": "record",
        "mean": "기록; 경력, 이력, 기록하다"
      },
      {
        "id": "870",
        "voca": "suggestion",
        "mean": "제안"
      },
      {
        "id": "871",
        "voca": "attention",
        "mean": "주의, 경청"
      },
      {
        "id": "872",
        "voca": "object",
        "mean": "반대하다"
      },
      {
        "id": "873",
        "voca": "coincidentally",
        "mean": "우연히, 일치하게, 동시 발생적으로\r\n(coincident 일치하는)"
      },
      {
        "id": "874",
        "voca": "crowded",
        "mean": "붐비는, 복잡한"
      },
      {
        "id": "875",
        "voca": "undergo",
        "mean": "겪다, 거치다, 경험하다"
      },
      {
        "id": "876",
        "voca": "outcome",
        "mean": "결과 (=consequence)"
      },
      {
        "id": "877",
        "voca": "narrowly",
        "mean": "주의 깊게, 좁게; 가까스로, 간신히, 겨우"
      },
      {
        "id": "878",
        "voca": "differ",
        "mean": "의견을 달리하다, 다르다"
      },
      {
        "id": "879",
        "voca": "discuss",
        "mean": "논의하다, 토론하다"
      },
      {
        "id": "880",
        "voca": "give",
        "mean": "(연설, 수업 등을)하다"
      },
      {
        "id": "881",
        "voca": "brief",
        "mean": "~에게 간단히 설명하다, 브리핑하다"
      },
      {
        "id": "882",
        "voca": "distract",
        "mean": "(주의를)산만하게 하다, 빗기게 하다(distraction 주의산만, 방심)"
      },
      {
        "id": "883",
        "voca": "emphasis",
        "mean": "강조, 중점"
      },
      {
        "id": "884",
        "voca": "press",
        "mean": "언론(계),보도기관, 누르다"
      },
      {
        "id": "885",
        "voca": "organize",
        "mean": "준비하다, 조직하다, 정리하다"
      },
      {
        "id": "886",
        "voca": "mention",
        "mean": "언급하다"
      },
      {
        "id": "887",
        "voca": "persuasive",
        "mean": "설득력 있는"
      },
      {
        "id": "888",
        "voca": "understanding",
        "mean": "이해심 있는"
      },
      {
        "id": "889",
        "voca": "adjourn",
        "mean": "(회의 등을)휴회하다"
      },
      {
        "id": "890",
        "voca": "constructive",
        "mean": "건설적인"
      },
      {
        "id": "891",
        "voca": "preside",
        "mean": "(회의의)사회를 보다, ~의 의장을 맡아보다"
      },
      {
        "id": "892",
        "voca": "irrelevant",
        "mean": "관계가 없는, 무관한\r\n(relevant 관계가 있는)"
      },
      {
        "id": "893",
        "voca": "constraint",
        "mean": "제한(=restriction)"
      }
    ],
[
      {
        "id": "894",
        "voca": "host",
        "mean": "(대회 등을)주최하다"
      },
      {
        "id": "895",
        "voca": "annual",
        "mean": "매년의"
      },
      {
        "id": "896",
        "voca": "purpose",
        "mean": "목적, 의도"
      },
      {
        "id": "897",
        "voca": "enroll",
        "mean": "등록하다"
      },
      {
        "id": "898",
        "voca": "lecture",
        "mean": "강의, 강연"
      },
      {
        "id": "899",
        "voca": "participant",
        "mean": "참가자"
      },
      {
        "id": "900",
        "voca": "attend",
        "mean": "참석하다, 출석하다"
      },
      {
        "id": "901",
        "voca": "encourage",
        "mean": "장려하다, 복돋아주다"
      },
      {
        "id": "902",
        "voca": "leave",
        "mean": "휴가, 떠나다, 남기다"
      },
      {
        "id": "903",
        "voca": "recommendation",
        "mean": "추천사항, 추천"
      },
      {
        "id": "904",
        "voca": "conference",
        "mean": "회의, 회담"
      },
      {
        "id": "905",
        "voca": "schedule",
        "mean": "~을 예정하다"
      },
      {
        "id": "906",
        "voca": "include",
        "mean": "포함하다"
      },
      {
        "id": "907",
        "voca": "result",
        "mean": "결과,(~의 결과로)되다"
      },
      {
        "id": "908",
        "voca": "register",
        "mean": "등록하다"
      },
      {
        "id": "909",
        "voca": "require",
        "mean": "요구하다"
      },
      {
        "id": "910",
        "voca": "grateful",
        "mean": "고마워하는, 감사하는"
      },
      {
        "id": "911",
        "voca": "overtime",
        "mean": "초과근무, 야근"
      },
      {
        "id": "912",
        "voca": "responsibility",
        "mean": "부담, 책임, 의무"
      },
      {
        "id": "913",
        "voca": "assent",
        "mean": "찬성하다, 승인, 동의\r\n(approval 승인)\r\n(approve 찬성하다)\r\n(prove 증명하다)"
      },
      {
        "id": "914",
        "voca": "regard",
        "mean": "~을 -으로 간주하다, 여기다,\r\n관심,배려"
      },
      {
        "id": "915",
        "voca": "tentative",
        "mean": "임시적인, 잠정적인"
      },
      {
        "id": "916",
        "voca": "welcome",
        "mean": "반가운, 기꺼이 받아들여지는"
      },
      {
        "id": "917",
        "voca": "function",
        "mean": "행사, 연회"
      },
      {
        "id": "918",
        "voca": "commence",
        "mean": "시작되다"
      },
      {
        "id": "919",
        "voca": "objective",
        "mean": "목표, 목적"
      },
      {
        "id": "920",
        "voca": "excited",
        "mean": "신이 난, 들뜬"
      },
      {
        "id": "921",
        "voca": "reimbursement",
        "mean": "상환, 변제, 배상"
      },
      {
        "id": "922",
        "voca": "treatment",
        "mean": "대우, 처우"
      },
      {
        "id": "923",
        "voca": "honor",
        "mean": "존경, 명예"
      },
      {
        "id": "924",
        "voca": "emphasize",
        "mean": "강조하다"
      },
      {
        "id": "925",
        "voca": "entry",
        "mean": "(경기 등의)참가자, 출품물"
      },
      {
        "id": "926",
        "voca": "bonus",
        "mean": "상여금, 보너스"
      },
      {
        "id": "927",
        "voca": "salary",
        "mean": "급여"
      },
      {
        "id": "928",
        "voca": "earn",
        "mean": "(금전 등을)벌다; (평판을)받다, 얻다"
      },
      {
        "id": "929",
        "voca": "arise",
        "mean": "(문제 등이)발생하다, 일어나다 = occur"
      },
      {
        "id": "930",
        "voca": "labor",
        "mean": "노동"
      },
      {
        "id": "931",
        "voca": "union",
        "mean": "노동조합"
      },
      {
        "id": "932",
        "voca": "existing",
        "mean": "기존의, 현행의"
      },
      {
        "id": "933",
        "voca": "exploit",
        "mean": "착취하다, 부당하게 이용하다\r\n(exploitation 개발,개척,약탈,착취)"
      }
    ],
[
      {
        "id": "934",
        "voca": "appoint",
        "mean": "임명하다, 지명하다"
      },
      {
        "id": "935",
        "voca": "appraisal",
        "mean": "평가"
      },
      {
        "id": "936",
        "voca": "promote",
        "mean": "승진시키다; 촉진하다"
      },
      {
        "id": "937",
        "voca": "skilled",
        "mean": "숙련된, 노련한"
      },
      {
        "id": "938",
        "voca": "radically",
        "mean": "완전히, 철저히, 근본적으로\r\n(radical 근본적인, 과격한)"
      },
      {
        "id": "939",
        "voca": "exceptional",
        "mean": "뛰어난, 예외적인\r\n(exception 예외, 이의, 반대)"
      },
      {
        "id": "940",
        "voca": "appreciation",
        "mean": "감사"
      },
      {
        "id": "941",
        "voca": "evaluate",
        "mean": "평가하다"
      },
      {
        "id": "942",
        "voca": "suggest",
        "mean": "제안하다, 추천하다"
      },
      {
        "id": "943",
        "voca": "preference",
        "mean": "선호"
      },
      {
        "id": "944",
        "voca": "management",
        "mean": "경영진, 경영"
      },
      {
        "id": "945",
        "voca": "predict",
        "mean": "예측하다"
      },
      {
        "id": "946",
        "voca": "transfer",
        "mean": "보내다; 전근시키다"
      },
      {
        "id": "947",
        "voca": "award",
        "mean": "상\r\n(reward 보상하다, 포상,보상)"
      },
      {
        "id": "948",
        "voca": "mandatory",
        "mean": "의무적인"
      },
      {
        "id": "949",
        "voca": "competent",
        "mean": "유능한, 능숙한\r\n(competence 능력)"
      },
      {
        "id": "950",
        "voca": "performance",
        "mean": "실적,성과; 공연,연주, 연기"
      },
      {
        "id": "951",
        "voca": "reward",
        "mean": "~에 보답하다, 보상하다, 포상,보상\r\n(award 상)"
      },
      {
        "id": "952",
        "voca": "search",
        "mean": "찾기, 수색, 조사"
      },
      {
        "id": "953",
        "voca": "inexperienced",
        "mean": "경험없는, 미숙한"
      },
      {
        "id": "954",
        "voca": "early",
        "mean": "시간상 이른, 조기의"
      },
      {
        "id": "955",
        "voca": "designate",
        "mean": "지명하다, 지정하다"
      },
      {
        "id": "956",
        "voca": "executive",
        "mean": "경영의,관리의"
      },
      {
        "id": "957",
        "voca": "dedication",
        "mean": "헌신"
      },
      {
        "id": "958",
        "voca": "unanimously",
        "mean": "만장일치로\r\n(unanimous 만장일치의)\r\n(anonymously 익명으로, 특색없이)"
      },
      {
        "id": "959",
        "voca": "progress",
        "mean": "진행, 진척, 진전, 진보하다, 발전하다"
      },
      {
        "id": "960",
        "voca": "congratulate",
        "mean": "축하하다"
      },
      {
        "id": "961",
        "voca": "dismiss",
        "mean": "해임하다, 해고하다"
      },
      {
        "id": "962",
        "voca": "independence",
        "mean": "독립성"
      },
      {
        "id": "963",
        "voca": "participation",
        "mean": "참여, 참가, 가입"
      },
      {
        "id": "964",
        "voca": "praise",
        "mean": "칭찬"
      },
      {
        "id": "965",
        "voca": "accomplishment",
        "mean": "성과,업적"
      },
      {
        "id": "966",
        "voca": "deliberation",
        "mean": "토의, 심의, 숙고\r\n(deliberate 고의의, 숙고하다)"
      },
      {
        "id": "967",
        "voca": "leadership",
        "mean": "리더십, 지도력"
      },
      {
        "id": "968",
        "voca": "retire",
        "mean": "퇴직하다, 은퇴하다"
      },
      {
        "id": "969",
        "voca": "nomination",
        "mean": "임명, 지명"
      },
      {
        "id": "970",
        "voca": "reorganize",
        "mean": "재편성하다, 재조직하다\r\n(recognize 인식하다)\r\n(organize 조직하다)"
      },
      {
        "id": "971",
        "voca": "serve",
        "mean": "근무하다, 일하다"
      },
      {
        "id": "972",
        "voca": "encouragement",
        "mean": "격려"
      },
      {
        "id": "973",
        "voca": "resignation",
        "mean": "사임, 사직, 사직서"
      },
      {
        "id": "974",
        "voca": "strictly",
        "mean": "엄격히"
      }
    ],
[
      {
        "id": "975",
        "voca": "congestion",
        "mean": "(교통의)체증, 혼잡\r\n(congest 혼잡하게 하다)"
      },
      {
        "id": "976",
        "voca": "alleviate",
        "mean": "완화하다"
      },
      {
        "id": "977",
        "voca": "divert",
        "mean": "우회시키다, 다른 곳으로 돌리다"
      },
      {
        "id": "978",
        "voca": "detour",
        "mean": "우회"
      },
      {
        "id": "979",
        "voca": "fuel",
        "mean": "연료"
      },
      {
        "id": "980",
        "voca": "malfunction",
        "mean": "오작동, 기능불량"
      },
      {
        "id": "981",
        "voca": "permit",
        "mean": "허락하다, 허가증"
      },
      {
        "id": "982",
        "voca": "transportation",
        "mean": "교통(수단), 운송 수단"
      },
      {
        "id": "983",
        "voca": "opportunity",
        "mean": "기회"
      },
      {
        "id": "984",
        "voca": "clearly",
        "mean": "명확히"
      },
      {
        "id": "985",
        "voca": "ongoing",
        "mean": "계속 진행 중인"
      },
      {
        "id": "986",
        "voca": "detailed",
        "mean": "상세한"
      },
      {
        "id": "987",
        "voca": "alternative",
        "mean": "대안, 대체, 다른, 대신의"
      },
      {
        "id": "988",
        "voca": "obtain",
        "mean": "획득하다, 얻다"
      },
      {
        "id": "989",
        "voca": "designated",
        "mean": "지정된"
      },
      {
        "id": "990",
        "voca": "intersection",
        "mean": "교차로, 교차지점"
      },
      {
        "id": "991",
        "voca": "equip",
        "mean": "갖추다, 설비하다"
      },
      {
        "id": "992",
        "voca": "commute",
        "mean": "통근하다"
      },
      {
        "id": "993",
        "voca": "downtown",
        "mean": "시내에서, 도심지로"
      },
      {
        "id": "994",
        "voca": "automotive",
        "mean": "자동차의"
      },
      {
        "id": "995",
        "voca": "closure",
        "mean": "폐쇄"
      },
      {
        "id": "996",
        "voca": "vehicle",
        "mean": "차량, 운송 수단"
      },
      {
        "id": "997",
        "voca": "platform",
        "mean": "승강장"
      },
      {
        "id": "998",
        "voca": "official",
        "mean": "공무원, 관리, 공식적인"
      },
      {
        "id": "999",
        "voca": "transit",
        "mean": "교통, 수송, 통과하다"
      },
      {
        "id": "1000",
        "voca": "fare",
        "mean": "교통요금"
      },
      {
        "id": "1001",
        "voca": "expense",
        "mean": "비용, 지출"
      },
      {
        "id": "1002",
        "voca": "trust",
        "mean": "신뢰, 신임, 믿다, 신뢰하다"
      },
      {
        "id": "1003",
        "voca": "head",
        "mean": "(~의 방향으로)나아가다, 향하게 하다"
      },
      {
        "id": "1004",
        "voca": "drive",
        "mean": "(차 등을)운전하다, 타고가다, 조종하다"
      },
      {
        "id": "1005",
        "voca": "fine",
        "mean": "벌금"
      },
      {
        "id": "1006",
        "voca": "pass",
        "mean": "지나가다, 통과하다"
      },
      {
        "id": "1007",
        "voca": "securely",
        "mean": "(매듭 등이)단단하게, 튼튼하게"
      },
      {
        "id": "1008",
        "voca": "prominently",
        "mean": "눈에 잘 띄게, 두드러지게\r\n(prominent 눈에 띄는)"
      },
      {
        "id": "1009",
        "voca": "reserved",
        "mean": "예약된, 예약한; 지정된"
      },
      {
        "id": "1010",
        "voca": "average",
        "mean": "평균치, 평균"
      },
      {
        "id": "1011",
        "voca": "collision",
        "mean": "충돌"
      },
      {
        "id": "1012",
        "voca": "tow",
        "mean": "견인하다"
      },
      {
        "id": "1013",
        "voca": "reverse",
        "mean": "뒤의, 반대의"
      },
      {
        "id": "1014",
        "voca": "obstruct",
        "mean": "(전망 등을)가리다, 차단하다;\r\n(도로 등을)막다\r\n(obstruction 장애물, 방해물)"
      }
    ],
[
      {
        "id": "1015",
        "voca": "delinquent",
        "mean": "(세금 등이)연체된, 미불의"
      },
      {
        "id": "1016",
        "voca": "overdue",
        "mean": "(지불,반납 등의)기한이 지난, 지불 기한이 넘은"
      },
      {
        "id": "1017",
        "voca": "regrettably",
        "mean": "유감스럽게도"
      },
      {
        "id": "1018",
        "voca": "balance",
        "mean": "잔고, 차감 잔액"
      },
      {
        "id": "1019",
        "voca": "deposit",
        "mean": "입금하다, 예금하다"
      },
      {
        "id": "1020",
        "voca": "investigation",
        "mean": "조사 (investigate 연구하다, 조사하다)"
      },
      {
        "id": "1021",
        "voca": "account",
        "mean": "계좌; 설명; 고려"
      },
      {
        "id": "1022",
        "voca": "statement",
        "mean": "명세서, 성명서"
      },
      {
        "id": "1023",
        "voca": "amount",
        "mean": "액수, 양"
      },
      {
        "id": "1024",
        "voca": "withdrawal",
        "mean": "(예금의)인출"
      },
      {
        "id": "1025",
        "voca": "previously",
        "mean": "이전에"
      },
      {
        "id": "1026",
        "voca": "due",
        "mean": "만기가 된, 지불 기일이 된;\r\n(금전 등이)~에게 마땅히 지급되어야 할"
      },
      {
        "id": "1027",
        "voca": "receive",
        "mean": "받다, 수취하다"
      },
      {
        "id": "1028",
        "voca": "expect",
        "mean": "예상하다, 기대하다"
      },
      {
        "id": "1029",
        "voca": "certificate",
        "mean": "증명서, 증서"
      },
      {
        "id": "1030",
        "voca": "document",
        "mean": "서류, 문서"
      },
      {
        "id": "1031",
        "voca": "spending",
        "mean": "소비; 지출"
      },
      {
        "id": "1032",
        "voca": "successfully",
        "mean": "성공적으로"
      },
      {
        "id": "1033",
        "voca": "bill",
        "mean": "~에게 청구서를 보내다, 청구서, 계산서"
      },
      {
        "id": "1034",
        "voca": "pleasure",
        "mean": "즐거움, 기쁜, 영광"
      },
      {
        "id": "1035",
        "voca": "study",
        "mean": "연구"
      },
      {
        "id": "1036",
        "voca": "summary",
        "mean": "요약, 개요\r\n(emphasize 강조하다)"
      },
      {
        "id": "1037",
        "voca": "temporary",
        "mean": "임시의"
      },
      {
        "id": "1038",
        "voca": "lower",
        "mean": "(양,가격을)줄이다"
      },
      {
        "id": "1039",
        "voca": "transaction",
        "mean": "거래, 업무"
      },
      {
        "id": "1040",
        "voca": "double",
        "mean": "두배로 만들다"
      },
      {
        "id": "1041",
        "voca": "identification",
        "mean": "신분증, 신분 증명서"
      },
      {
        "id": "1042",
        "voca": "dissatisfaction",
        "mean": "불만, 불평"
      },
      {
        "id": "1043",
        "voca": "in common",
        "mean": "공통으로, 공동으로"
      },
      {
        "id": "1044",
        "voca": "interest",
        "mean": "관심; 권리; 이자"
      },
      {
        "id": "1045",
        "voca": "reject",
        "mean": "거절하다, 거부하다"
      },
      {
        "id": "1046",
        "voca": "relation",
        "mean": "관계"
      },
      {
        "id": "1047",
        "voca": "tentatively",
        "mean": "임시로, 시험적으로\r\n(tentative 시험적인, 임시의, 가설)"
      },
      {
        "id": "1048",
        "voca": "alternatively",
        "mean": "그렇지 않으면, 그 대신에"
      },
      {
        "id": "1049",
        "voca": "attentive",
        "mean": "주의 깊은, 세심한"
      },
      {
        "id": "1050",
        "voca": "convert",
        "mean": "전환하다, 변환하다"
      },
      {
        "id": "1051",
        "voca": "heavily",
        "mean": "몹시, 심하게"
      },
      {
        "id": "1052",
        "voca": "loan",
        "mean": "대출, 대출금"
      },
      {
        "id": "1053",
        "voca": "unexpected",
        "mean": "예기치 않은"
      },
      {
        "id": "1054",
        "voca": "cash",
        "mean": "현금으로 바꾸다"
      },
      {
        "id": "1055",
        "voca": "mortgage",
        "mean": "(담보)대출"
      },
      {
        "id": "1056",
        "voca": "payable",
        "mean": "지불해야 하는"
      },
      {
        "id": "1057",
        "voca": "personal",
        "mean": "개인의"
      }
    ],
[
      {
        "id": "1058",
        "voca": "investment",
        "mean": "투자, 투자금"
      },
      {
        "id": "1059",
        "voca": "incrative",
        "mean": "수익성 있는, 돈벌이가 되는\r\n(profit, earning, gainings 이익)\r\n(income 수입, 소득)"
      },
      {
        "id": "1060",
        "voca": "inherently",
        "mean": "본질적으로\r\n(inherent 본래 갖추어져 있는, 고유의)"
      },
      {
        "id": "1061",
        "voca": "secure",
        "mean": "확보하다, 얻어 내다;\r\n안전하게 지키다, 고정시키다"
      },
      {
        "id": "1062",
        "voca": "foreseeable",
        "mean": "예견할 수 있는\r\n(oversee 감독하다)\r\n(overseas 외국의)"
      },
      {
        "id": "1063",
        "voca": "innate",
        "mean": "타고난"
      },
      {
        "id": "1064",
        "voca": "property",
        "mean": "재산"
      },
      {
        "id": "1065",
        "voca": "on behalf of",
        "mean": "~을 대신해서"
      },
      {
        "id": "1066",
        "voca": "lease",
        "mean": "임대차(계약)"
      },
      {
        "id": "1067",
        "voca": "sponsor",
        "mean": "후원하다, 후원자"
      },
      {
        "id": "1068",
        "voca": "propose",
        "mean": "제안하다"
      },
      {
        "id": "1069",
        "voca": "support",
        "mean": "후원, 원조, 지지, 지원하다,\r\n후원하다; 살게하다,\r\n(생명, 기력 등을)유지하다"
      },
      {
        "id": "1070",
        "voca": "distributuion",
        "mean": "분배, 배급"
      },
      {
        "id": "1071",
        "voca": "consider",
        "mean": "고려하다"
      },
      {
        "id": "1072",
        "voca": "nearly",
        "mean": "거의, 대략"
      },
      {
        "id": "1073",
        "voca": "consent",
        "mean": "동의, 허락, 동의하다\r\n(consentaneous일치하는)"
      },
      {
        "id": "1074",
        "voca": "gratitude",
        "mean": "고마움, 감사"
      },
      {
        "id": "1075",
        "voca": "consult",
        "mean": "상의하다, 상담하다"
      },
      {
        "id": "1076",
        "voca": "advice",
        "mean": "조언, 충고"
      },
      {
        "id": "1077",
        "voca": "partially",
        "mean": "부분적으로, 일부분은"
      },
      {
        "id": "1078",
        "voca": "evident",
        "mean": "분명한, 명백한,"
      },
      {
        "id": "1079",
        "voca": "reliability",
        "mean": "신뢰도, 믿음직함"
      },
      {
        "id": "1080",
        "voca": "cautious",
        "mean": "조심하는, 신중한"
      },
      {
        "id": "1081",
        "voca": "insight",
        "mean": "식견, 통찰력"
      },
      {
        "id": "1082",
        "voca": "portfolio",
        "mean": "포트폴리오, 투자 자산 구성"
      },
      {
        "id": "1083",
        "voca": "possible",
        "mean": "가능한, 있음직한"
      },
      {
        "id": "1084",
        "voca": "speculation",
        "mean": "추측\r\n(speculate, suppose, guess, infer 추측하다)"
      },
      {
        "id": "1085",
        "voca": "solely",
        "mean": "오로지, 혼자서, 전적으로"
      },
      {
        "id": "1086",
        "voca": "entrepreneur",
        "mean": "사업가"
      },
      {
        "id": "1087",
        "voca": "eventually",
        "mean": "결국, 마침내"
      },
      {
        "id": "1088",
        "voca": "shareholder",
        "mean": "주주"
      },
      {
        "id": "1089",
        "voca": "outlook",
        "mean": "전망"
      },
      {
        "id": "1090",
        "voca": "stability",
        "mean": "안정, 안정성"
      },
      {
        "id": "1091",
        "voca": "bond",
        "mean": "채권"
      },
      {
        "id": "1092",
        "voca": "depreciation",
        "mean": "가치 하락, 화폐의 구매력 저하\r\n(depreciate : ~의 가치를 떨어뜨리다, 가치가 떨어지다)"
      },
      {
        "id": "1093",
        "voca": "increasing",
        "mean": "증가하는"
      },
      {
        "id": "1094",
        "voca": "prevalent",
        "mean": "유행하고 있는, 널리 퍼진\r\n(prevalence 보급, 유행)"
      },
      {
        "id": "1095",
        "voca": "rapid",
        "mean": "빠른, 신속한"
      },
      {
        "id": "1096",
        "voca": "unprecedented",
        "mean": "전례 없는\r\n(precedented 전례가 있는)"
      },
      {
        "id": "1097",
        "voca": "yield",
        "mean": "(이윤을) 가져오다, 산출하다"
      }
    ],
[
      {
        "id": "1098",
        "voca": "furnished",
        "mean": "가구가 비치된"
      },
      {
        "id": "1099",
        "voca": "residence",
        "mean": "거주지, 주택"
      },
      {
        "id": "1100",
        "voca": "spacious",
        "mean": "(공간이)넓은"
      },
      {
        "id": "1101",
        "voca": "drape",
        "mean": "(방 등을 커튼 등으로)장식하다"
      },
      {
        "id": "1102",
        "voca": "unoccupied",
        "mean": "(집 등이)비어 있는, 사람이 살지 않는\r\n(occupy 차지하다, 점유하다)"
      },
      {
        "id": "1103",
        "voca": "renovation",
        "mean": "수리, 개조"
      },
      {
        "id": "1104",
        "voca": "appropriate",
        "mean": "적당한, 적합한(appropriately 적합하게)"
      },
      {
        "id": "1105",
        "voca": "delay",
        "mean": "연기하다, ~을 뒤로 미루다"
      },
      {
        "id": "1106",
        "voca": "community",
        "mean": "지역 사회, 공동체"
      },
      {
        "id": "1107",
        "voca": "construction",
        "mean": "건설, 건축"
      },
      {
        "id": "1108",
        "voca": "repair",
        "mean": "수리하다"
      },
      {
        "id": "1109",
        "voca": "currently",
        "mean": "현재"
      },
      {
        "id": "1110",
        "voca": "regularly",
        "mean": "정기적으로"
      },
      {
        "id": "1111",
        "voca": "arrange",
        "mean": "배열하다, 정돈하다"
      },
      {
        "id": "1112",
        "voca": "location",
        "mean": "장소, 위치"
      },
      {
        "id": "1113",
        "voca": "restore",
        "mean": "복구하다, 회복시키다\r\n(recovery 회복, recover되찾다, 회복하다)"
      },
      {
        "id": "1114",
        "voca": "presently",
        "mean": "현재\r\n(present, current현재의)\r\n(latest, recent, up to date 최근의)"
      },
      {
        "id": "1115",
        "voca": "numerous",
        "mean": "많은"
      },
      {
        "id": "1116",
        "voca": "abandon",
        "mean": "그만두다; 버리다(abondonment 버림, 포기)"
      },
      {
        "id": "1117",
        "voca": "contractor",
        "mean": "계약자, 도급업자"
      },
      {
        "id": "1118",
        "voca": "develop",
        "mean": "개발하다"
      },
      {
        "id": "1119",
        "voca": "maintain",
        "mean": "유지하다, 관리하다"
      },
      {
        "id": "1120",
        "voca": "densely",
        "mean": "빽빽이, 밀집하여"
      },
      {
        "id": "1121",
        "voca": "prepare",
        "mean": "준비하다, 채비를 갖추다"
      },
      {
        "id": "1122",
        "voca": "finally",
        "mean": "결국, 마침내"
      },
      {
        "id": "1123",
        "voca": "district",
        "mean": "지역, 지구"
      },
      {
        "id": "1124",
        "voca": "renewal",
        "mean": "재개발"
      },
      {
        "id": "1125",
        "voca": "compulsory",
        "mean": "의무적인"
      },
      {
        "id": "1126",
        "voca": "interfere",
        "mean": "방해하다, 해치다"
      },
      {
        "id": "1127",
        "voca": "relocation",
        "mean": "이전, 재배치"
      },
      {
        "id": "1128",
        "voca": "totally",
        "mean": "완전히, 전적으로"
      },
      {
        "id": "1129",
        "voca": "actually",
        "mean": "실제로, 사실은"
      },
      {
        "id": "1130",
        "voca": "architect",
        "mean": "건축가"
      },
      {
        "id": "1131",
        "voca": "enlarge",
        "mean": "확장하다, 확대하다"
      },
      {
        "id": "1132",
        "voca": "install",
        "mean": "설치하다, 장치하다"
      },
      {
        "id": "1133",
        "voca": "permanent",
        "mean": "영구적인"
      },
      {
        "id": "1134",
        "voca": "suppose",
        "mean": "생각하다, 추측하다(guess, infer 추측하다)"
      },
      {
        "id": "1135",
        "voca": "adjacent",
        "mean": "인접한"
      },
      {
        "id": "1136",
        "voca": "consist",
        "mean": "구성되다, 이루어지다"
      },
      {
        "id": "1137",
        "voca": "utility",
        "mean": "공공시설; 공공요금"
      }
    ],
[
      {
        "id": "1138",
        "voca": "conserve",
        "mean": "보전하다, 유지하다"
      },
      {
        "id": "1139",
        "voca": "chance",
        "mean": "가능성, 기회"
      },
      {
        "id": "1140",
        "voca": "forecast",
        "mean": "(날씨의)예보"
      },
      {
        "id": "1141",
        "voca": "waste",
        "mean": "쓰레기, 폐기물"
      },
      {
        "id": "1142",
        "voca": "dispose",
        "mean": "처분하다, 처리하다"
      },
      {
        "id": "1143",
        "voca": "recycling",
        "mean": "재활용"
      },
      {
        "id": "1144",
        "voca": "clear",
        "mean": "맑게 갠; 명백한, 분명한\r\n또렷하게, 완전히; 떨어져서"
      },
      {
        "id": "1145",
        "voca": "damage",
        "mean": "피해, 손해, 손상시키다"
      },
      {
        "id": "1146",
        "voca": "significant",
        "mean": "상당한; 중대한, 중요한"
      },
      {
        "id": "1147",
        "voca": "solution",
        "mean": "해결책"
      },
      {
        "id": "1148",
        "voca": "occur",
        "mean": "(일이)발생하다, 생기다(happen, take place)"
      },
      {
        "id": "1149",
        "voca": "ideal",
        "mean": "이상적인"
      },
      {
        "id": "1150",
        "voca": "preserve",
        "mean": "보존하다, 보호하다(=conserve, maintain, retain, keep)"
      },
      {
        "id": "1151",
        "voca": "aid",
        "mean": "원조, 돕다"
      },
      {
        "id": "1152",
        "voca": "excessive",
        "mean": "지나친, 과도한(excess 초과, 초과량)"
      },
      {
        "id": "1153",
        "voca": "intensively",
        "mean": "집중적으로( intense 격렬한)"
      },
      {
        "id": "1154",
        "voca": "vary",
        "mean": "다르다, 다양하다"
      },
      {
        "id": "1155",
        "voca": "pleasing",
        "mean": "즐거운, 기분 좋은, 만족스러운"
      },
      {
        "id": "1156",
        "voca": "mark",
        "mean": "점수, 평점, 표시, 축하하다"
      },
      {
        "id": "1157",
        "voca": "inaccessible",
        "mean": "접근이 불가능한, 이용이 불가능한"
      },
      {
        "id": "1158",
        "voca": "disturb",
        "mean": "방해하다"
      },
      {
        "id": "1159",
        "voca": "pollutant",
        "mean": "오염물질"
      },
      {
        "id": "1160",
        "voca": "emission",
        "mean": "배기가스, 방출"
      },
      {
        "id": "1161",
        "voca": "dense",
        "mean": "빽빽한, 밀집한"
      },
      {
        "id": "1162",
        "voca": "environmental",
        "mean": "환경적인"
      },
      {
        "id": "1163",
        "voca": "consistent",
        "mean": "일치하는, 지속적인, 한결같은"
      },
      {
        "id": "1164",
        "voca": "leak",
        "mean": "누출, 누출량"
      },
      {
        "id": "1165",
        "voca": "organization",
        "mean": "단체"
      },
      {
        "id": "1166",
        "voca": "continually",
        "mean": "계속해서"
      },
      {
        "id": "1167",
        "voca": "contaminate",
        "mean": "오염시키다(=pollution)"
      },
      {
        "id": "1168",
        "voca": "disaster",
        "mean": "재난"
      },
      {
        "id": "1169",
        "voca": "discharge",
        "mean": "방출하다"
      },
      {
        "id": "1170",
        "voca": "resource",
        "mean": "자원, 자료"
      },
      {
        "id": "1171",
        "voca": "prominent",
        "mean": "유명한, 두드러진"
      },
      {
        "id": "1172",
        "voca": "deplete",
        "mean": "고갈시키다(depletion 고갈)"
      },
      {
        "id": "1173",
        "voca": "purify",
        "mean": "정화시키다"
      },
      {
        "id": "1174",
        "voca": "endangered",
        "mean": "멸종 위기에 처한"
      },
      {
        "id": "1175",
        "voca": "extinction",
        "mean": "멸종"
      },
      {
        "id": "1176",
        "voca": "drought",
        "mean": "가뭄"
      },
      {
        "id": "1177",
        "voca": "inflict",
        "mean": "(고통,피해를)입히다, 가하다"
      },
      {
        "id": "1178",
        "voca": "migration",
        "mean": "이동, 이주"
      },
      {
        "id": "1179",
        "voca": "ecology",
        "mean": "생태, 자연환경"
      },
      {
        "id": "1180",
        "voca": "habitat",
        "mean": "(동, 식물의)서식지"
      }
    ],
[
      {
        "id": "1181",
        "voca": "fatigue",
        "mean": "피로"
      },
      {
        "id": "1182",
        "voca": "checkup",
        "mean": "건강 진단"
      },
      {
        "id": "1183",
        "voca": "symtom",
        "mean": "증상"
      },
      {
        "id": "1184",
        "voca": "physician",
        "mean": "내과의사"
      },
      {
        "id": "1185",
        "voca": "diagnosis",
        "mean": "진단"
      },
      {
        "id": "1186",
        "voca": "prescribe",
        "mean": "(약을)처방하다, 규정하다"
      },
      {
        "id": "1187",
        "voca": "recovery",
        "mean": "회복, 쾌유"
      },
      {
        "id": "1188",
        "voca": "recognize",
        "mean": "인정하다, 알아보다\r\n(organize 조직하다)"
      },
      {
        "id": "1189",
        "voca": "join",
        "mean": "~에 가입하다"
      },
      {
        "id": "1190",
        "voca": "comprehensive",
        "mean": "종합적인, 포괄적인"
      },
      {
        "id": "1191",
        "voca": "participate",
        "mean": "참여하다, 참가하다"
      },
      {
        "id": "1192",
        "voca": "recommend",
        "mean": "권고하다, 추천하다"
      },
      {
        "id": "1193",
        "voca": "necessary",
        "mean": "필요한"
      },
      {
        "id": "1194",
        "voca": "ability",
        "mean": "능력"
      },
      {
        "id": "1195",
        "voca": "operation",
        "mean": "수술"
      },
      {
        "id": "1196",
        "voca": "cleanliness",
        "mean": "청결"
      },
      {
        "id": "1197",
        "voca": "duration",
        "mean": "지속 기간, 지속"
      },
      {
        "id": "1198",
        "voca": "examination",
        "mean": "진찰, 검사"
      },
      {
        "id": "1199",
        "voca": "eliminate",
        "mean": "제거하다(elimination 제거)"
      },
      {
        "id": "1200",
        "voca": "easily",
        "mean": "쉽게"
      },
      {
        "id": "1201",
        "voca": "dental",
        "mean": "치과의"
      },
      {
        "id": "1202",
        "voca": "dietary",
        "mean": "식이 요법의, 규정식의"
      },
      {
        "id": "1203",
        "voca": "related",
        "mean": "관련된"
      },
      {
        "id": "1204",
        "voca": "transmit",
        "mean": "전염시키다(transmittable 전염가능한, 유전가능한)"
      },
      {
        "id": "1205",
        "voca": "periodically",
        "mean": "주기적으로"
      },
      {
        "id": "1206",
        "voca": "reaction",
        "mean": "반응"
      },
      {
        "id": "1207",
        "voca": "simple",
        "mean": "단순한"
      },
      {
        "id": "1208",
        "voca": "coverage",
        "mean": "(보험의)보상 범위; (신문 등의)보도, 취재범위"
      },
      {
        "id": "1209",
        "voca": "exposure",
        "mean": "노출"
      },
      {
        "id": "1210",
        "voca": "pharmaceutical",
        "mean": "제약의, 약학의"
      },
      {
        "id": "1211",
        "voca": "premium",
        "mean": "보험료"
      },
      {
        "id": "1212",
        "voca": "relieve",
        "mean": "완화시키다"
      },
      {
        "id": "1213",
        "voca": "combination",
        "mean": "결합, 연합"
      },
      {
        "id": "1214",
        "voca": "conscious",
        "mean": "알고 있는, 자각하고 있는\r\n(consciousness : 의식)"
      },
      {
        "id": "1215",
        "voca": "deprivation",
        "mean": "박탈, 상실(deprivative 박탈하는, 빼앗는)"
      },
      {
        "id": "1216",
        "voca": "health",
        "mean": "건강; (사회,기관의,)번영,안녕"
      },
      {
        "id": "1217",
        "voca": "induce",
        "mean": "유발하다 (reduce줄이다, 낮추다)"
      },
      {
        "id": "1218",
        "voca": "insurance",
        "mean": "보험"
      },
      {
        "id": "1219",
        "voca": "nutrition",
        "mean": "영양"
      },
      {
        "id": "1220",
        "voca": "prevention",
        "mean": "예방(prevent 예방하다, 방해하다)"
      },
      {
        "id": "1221",
        "voca": "susceptible",
        "mean": "~에 감염되기 쉬운, 영향 받기 쉬운"
      }
    ]
  
  ];
 
  static int getDayCount() {
    return daysObj.length;
  }

  static List<Voca> getDay(int day) {
    return daysObj[day];
  }

  static getCountOfDay(int day) {
    return daysObj[day].length;
  }
}
