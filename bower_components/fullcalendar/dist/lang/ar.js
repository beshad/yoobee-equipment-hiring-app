(function (t) {
    "function" == typeof define && define.amd ? define(["jquery", "moment"], t) : t(jQuery, moment)
})(function (t, e) {
    var n = {1: "١", 2: "٢", 3: "٣", 4: "٤", 5: "٥", 6: "٦", 7: "٧", 8: "٨", 9: "٩", 0: "٠"}, i = {
        "١": "1",
        "٢": "2",
        "٣": "3",
        "٤": "4",
        "٥": "5",
        "٦": "6",
        "٧": "7",
        "٨": "8",
        "٩": "9",
        "٠": "0"
    }, r = function (t) {
        return 0 === t ? 0 : 1 === t ? 1 : 2 === t ? 2 : t % 100 >= 3 && 10 >= t % 100 ? 3 : t % 100 >= 11 ? 4 : 5
    }, s = {
        s: ["أقل من ثانية", "ثانية واحدة", ["ثانيتان", "ثانيتين"], "%d ثوان", "%d ثانية", "%d ثانية"],
        m: ["أقل من دقيقة", "دقيقة واحدة", ["دقيقتان", "دقيقتين"], "%d دقائق", "%d دقيقة", "%d دقيقة"],
        h: ["أقل من ساعة", "ساعة واحدة", ["ساعتان", "ساعتين"], "%d ساعات", "%d ساعة", "%d ساعة"],
        d: ["أقل من يوم", "يوم واحد", ["يومان", "يومين"], "%d أيام", "%d يومًا", "%d يوم"],
        M: ["أقل من شهر", "شهر واحد", ["شهران", "شهرين"], "%d أشهر", "%d شهرا", "%d شهر"],
        y: ["أقل من عام", "عام واحد", ["عامان", "عامين"], "%d أعوام", "%d عامًا", "%d عام"]
    }, o = function (t) {
        return function (e, n) {
            var i = r(e), o = s[t][r(e)];
            return 2 === i && (o = o[n ? 0 : 1]), o.replace(/%d/i, e)
        }
    }, l = ["كانون الثاني يناير", "شباط فبراير", "آذار مارس", "نيسان أبريل", "أيار مايو", "حزيران يونيو", "تموز يوليو", "آب أغسطس", "أيلول سبتمبر", "تشرين الأول أكتوبر", "تشرين الثاني نوفمبر", "كانون الأول ديسمبر"];
    (e.defineLocale || e.lang).call(e, "ar", {
        months: l,
        monthsShort: l,
        weekdays: "الأحد_الإثنين_الثلاثاء_الأربعاء_الخميس_الجمعة_السبت".split("_"),
        weekdaysShort: "أحد_إثنين_ثلاثاء_أربعاء_خميس_جمعة_سبت".split("_"),
        weekdaysMin: "ح_ن_ث_ر_خ_ج_س".split("_"),
        longDateFormat: {
            LT: "HH:mm",
            LTS: "HH:mm:ss",
            L: "DD/MM/YYYY",
            LL: "D MMMM YYYY",
            LLL: "D MMMM YYYY LT",
            LLLL: "dddd D MMMM YYYY LT"
        },
        meridiemParse: /ص|م/,
        isPM: function (t) {
            return "م" === t
        },
        meridiem: function (t) {
            return 12 > t ? "ص" : "م"
        },
        calendar: {
            sameDay: "[اليوم عند الساعة] LT",
            nextDay: "[غدًا عند الساعة] LT",
            nextWeek: "dddd [عند الساعة] LT",
            lastDay: "[أمس عند الساعة] LT",
            lastWeek: "dddd [عند الساعة] LT",
            sameElse: "L"
        },
        relativeTime: {
            future: "بعد %s",
            past: "منذ %s",
            s: o("s"),
            m: o("m"),
            mm: o("m"),
            h: o("h"),
            hh: o("h"),
            d: o("d"),
            dd: o("d"),
            M: o("M"),
            MM: o("M"),
            y: o("y"),
            yy: o("y")
        },
        preparse: function (t) {
            return t.replace(/[١٢٣٤٥٦٧٨٩٠]/g, function (t) {
                return i[t]
            }).replace(/،/g, ",")
        },
        postformat: function (t) {
            return t.replace(/\d/g, function (t) {
                return n[t]
            }).replace(/,/g, "،")
        },
        week: {dow: 6, doy: 12}
    }), t.fullCalendar.datepickerLang("ar", "ar", {
        closeText: "إغلاق",
        prevText: "&#x3C;السابق",
        nextText: "التالي&#x3E;",
        currentText: "اليوم",
        monthNames: ["كانون الثاني", "شباط", "آذار", "نيسان", "مايو", "حزيران", "تموز", "آب", "أيلول", "تشرين الأول", "تشرين الثاني", "كانون الأول"],
        monthNamesShort: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
        dayNames: ["الأحد", "الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت"],
        dayNamesShort: ["الأحد", "الاثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت"],
        dayNamesMin: ["ح", "ن", "ث", "ر", "خ", "ج", "س"],
        weekHeader: "أسبوع",
        dateFormat: "dd/mm/yy",
        firstDay: 6,
        isRTL: !0,
        showMonthAfterYear: !1,
        yearSuffix: ""
    }), t.fullCalendar.lang("ar", {
        buttonText: {month: "شهر", week: "أسبوع", day: "يوم", list: "أجندة"},
        allDayText: "اليوم كله",
        eventLimitText: "أخرى"
    })
});