.class public Lcom/mswiniuch/FiveLines2/widget/MainClock;
.super Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;
.source "MainClock.java"


# static fields
.field public static codes:[Ljava/lang/String;

.field private static days:[[Ljava/lang/String;

.field private static days_3let:[[Ljava/lang/String;

.field private static months:[[Ljava/lang/String;

.field private static months_3let:[[Ljava/lang/String;


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private dateAlignLeftBool:Z

.field private dateBool:Z

.field private dateFont:Landroid/text/TextPaint;

.field private dayAlignLeftBool:Z

.field private dayBool:Z

.field private dayFont:Landroid/text/TextPaint;

.field private digitalNums:[Ljava/lang/String;

.field private hourFont:Landroid/text/TextPaint;

.field private indicatorBool:Z

.field private indicatorFlashBool:Z

.field private indicatorFont:Landroid/text/TextPaint;

.field public language:I

.field private leftDate:F

.field private leftDay:F

.field private leftHour:F

.field private leftIndicator:F

.field private leftMinute:F

.field private leftMonth:F

.field private leftSeconds:F

.field private leftWeekday:F

.field private leftYear:F

.field private minutesFont:Landroid/text/TextPaint;

.field private monthAlignLeftBool:Z

.field private monthBool:Z

.field private monthFont:Landroid/text/TextPaint;

.field private month_as_textBool:Z

.field private secondsBool:Z

.field private secondsFont:Landroid/text/TextPaint;

.field private secondsSlptBool:Z

.field public settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

.field private three_letters_day_if_textBool:Z

.field private three_letters_month_if_textBool:Z

.field private topDate:F

.field private topDay:F

.field private topHour:F

.field private topIndicator:F

.field private topMinute:F

.field private topMonth:F

.field private topSeconds:F

.field private topWeekday:F

.field private topYear:F

.field private weekdayAlignLeftBool:Z

.field private weekdayBool:Z

.field private weekdayFont:Landroid/text/TextPaint;

.field private yearAlignLeftBool:Z

.field private yearBool:Z

.field private yearFont:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "English"

    const-string v1, "\u010ce\u0161tina"

    const-string v2, "Deutsch"

    const-string v3, "Espa\u00f1ol"

    const-string v4, "Fran\u00e7ais"

    const-string v5, "Hrvatski"

    const-string v6, "Italian"

    const-string v7, "Magyar"

    const-string v8, "Polski"

    const-string v9, "Portugu\u00eas"

    const-string v10, "Sloven\u010dina"

    const-string v11, "T\u00fcrk\u00e7e"

    .line 98
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->codes:[Ljava/lang/String;

    const/16 v0, 0xc

    .line 102
    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "Sunday"

    const-string v3, "Monday"

    const-string v4, "Tuesday"

    const-string v5, "Wednesday"

    const-string v6, "Thursday"

    const-string v7, "Friday"

    const-string v8, "Saturday"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "Ned\u011ble"

    const-string v5, "Pondel\u00ed"

    const-string v6, "\u00dater\u00fd"

    const-string v7, "St\u0159eda"

    const-string v8, "\u010ctvrtek"

    const-string v9, "P\u00e1tek"

    const-string v10, "Sobota"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v5, "Sonntag"

    const-string v6, "Montag"

    const-string v7, "Dienstag"

    const-string v8, "Mittwoch"

    const-string v9, "Donnerstag"

    const-string v10, "Freitag"

    const-string v11, "Samstag"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v6, "Domingo"

    const-string v7, "Lunes"

    const-string v8, "Martes"

    const-string v9, "Miercoles"

    const-string v10, "Jueves"

    const-string v11, "Viernes"

    const-string v12, "Sabado"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v7, "Dimanche"

    const-string v8, "Lundi"

    const-string v9, "Mardi"

    const-string v10, "Mercredi"

    const-string v11, "Jeudi"

    const-string v12, "Vendredi"

    const-string v13, "Samedi"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v8, "Nedjelja"

    const-string v9, "Ponedjeljak"

    const-string v10, "Utorak"

    const-string v11, "Srijeda"

    const-string v12, "Cetvrtak"

    const-string v13, "Petak"

    const-string v14, "Subota"

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v9, "Domenica"

    const-string v10, "Lunedi"

    const-string v11, "Martedi"

    const-string v12, "Mercoledi"

    const-string v13, "Giovedi"

    const-string v14, "Venerdi"

    const-string v15, "Sabato"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v10, "Vasarnap"

    const-string v11, "Hetfo"

    const-string v12, "Kedd"

    const-string v13, "Szerda"

    const-string v14, "Csutortok"

    const-string v15, "Pentek"

    const-string v16, "Szombat"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v11, "Niedziela"

    const-string v12, "Poniedzia\u0142ek"

    const-string v13, "Wtorek"

    const-string v14, "\u015aroda"

    const-string v15, "Czwartek"

    const-string v16, "Pi\u0105tek"

    const-string v17, "Sobota"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v12, "Domingo"

    const-string v13, "Segunda-feira"

    const-string v14, "Terca-feira"

    const-string v15, "Quarta-feira"

    const-string v16, "Quinta-feira"

    const-string v17, "Sexta-feira"

    const-string v18, "Sabado"

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v13, "Nede\u013ea"

    const-string v14, "Pondelok"

    const-string v15, "Utorok"

    const-string v16, "Streda"

    const-string v17, "\u0160tvrtok"

    const-string v18, "Piatok"

    const-string v19, "Sobota"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v14, "Pazar"

    const-string v15, "Pazartesi"

    const-string v16, "Sali"

    const-string v17, "Carsamba"

    const-string v18, "Persembe"

    const-string v19, "Cuma"

    const-string v20, "Cumartesi"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sput-object v1, Lcom/mswiniuch/FiveLines2/widget/MainClock;->days:[[Ljava/lang/String;

    .line 118
    new-array v1, v0, [[Ljava/lang/String;

    const-string v15, "SUN"

    const-string v16, "MON"

    const-string v17, "TUE"

    const-string v18, "WED"

    const-string v19, "THU"

    const-string v20, "FRI"

    const-string v21, "SAT"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "NED"

    const-string v16, "PON"

    const-string v17, "UTE"

    const-string v18, "STR"

    const-string v19, "CTV"

    const-string v20, "PAT"

    const-string v21, "SOB"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "SON"

    const-string v16, "MON"

    const-string v17, "DIE"

    const-string v18, "MIT"

    const-string v19, "DON"

    const-string v20, "FRE"

    const-string v21, "SAM"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v15, "DOM"

    const-string v16, "LUN"

    const-string v17, "MAR"

    const-string v18, "MIE"

    const-string v19, "JUE"

    const-string v20, "VIE"

    const-string v21, "SAB"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v15, "DIM"

    const-string v16, "LUN"

    const-string v17, "MAR"

    const-string v18, "MER"

    const-string v19, "JEU"

    const-string v20, "VEN"

    const-string v21, "SAM"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v15, "NED"

    const-string v16, "PON"

    const-string v17, "UTO"

    const-string v18, "SRI"

    const-string v19, "CET"

    const-string v20, "PET"

    const-string v21, "SUB"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v15, "DOM"

    const-string v16, "LUN"

    const-string v17, "MAR"

    const-string v18, "MER"

    const-string v19, "GIO"

    const-string v20, "VEN"

    const-string v21, "SAB"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v15, "VAS"

    const-string v16, "HET"

    const-string v17, "KED"

    const-string v18, "SZE"

    const-string v19, "CSU"

    const-string v20, "PEN"

    const-string v21, "SZO"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v15, "NIE"

    const-string v16, "PON"

    const-string v17, "WTO"

    const-string v18, "\u015aRO"

    const-string v19, "CZW"

    const-string v20, "PI\u0104"

    const-string v21, "SOB"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v15, "DOM"

    const-string v16, "SEG"

    const-string v17, "TER"

    const-string v18, "QUA"

    const-string v19, "QUI"

    const-string v20, "SEX"

    const-string v21, "SAB"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v15, "NED"

    const-string v16, "PON"

    const-string v17, "UTO"

    const-string v18, "STR"

    const-string v19, "\u0160TV"

    const-string v20, "PIA"

    const-string v21, "SOB"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v15, "PAZ"

    const-string v16, "PAR"

    const-string v17, "SAL"

    const-string v18, "CAR"

    const-string v19, "PER"

    const-string v20, "CUM"

    const-string v21, "CUR"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    sput-object v1, Lcom/mswiniuch/FiveLines2/widget/MainClock;->days_3let:[[Ljava/lang/String;

    .line 134
    new-array v1, v0, [[Ljava/lang/String;

    const-string v15, "december"

    const-string v16, "january"

    const-string v17, "february"

    const-string v18, "march"

    const-string v19, "april"

    const-string v20, "may"

    const-string v21, "june"

    const-string v22, "july"

    const-string v23, "august"

    const-string v24, "september"

    const-string v25, "october"

    const-string v26, "november"

    const-string v27, "december"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v15, "prosinec"

    const-string v16, "leden"

    const-string v17, "\u00fanor"

    const-string v18, "b\u0159ezen"

    const-string v19, "duben"

    const-string v20, "kv\u011bten"

    const-string v21, "\u010derven"

    const-string v22, "\u010dervenec"

    const-string v23, "srpen"

    const-string v24, "z\u00e1\u0159\u00ed"

    const-string v25, "\u0159\u00edjen"

    const-string v26, "listopad"

    const-string v27, "prosinec"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v15, "dezember"

    const-string v16, "januar"

    const-string v17, "februar"

    const-string v18, "marz"

    const-string v19, "april"

    const-string v20, "mai"

    const-string v21, "juni"

    const-string v22, "juli"

    const-string v23, "august"

    const-string v24, "september"

    const-string v25, "oktober"

    const-string v26, "november"

    const-string v27, "dezember"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v15, "diciembre"

    const-string v16, "enero"

    const-string v17, "febrero"

    const-string v18, "marzo"

    const-string v19, "abril"

    const-string v20, "mayo"

    const-string v21, "junio"

    const-string v22, "julio"

    const-string v23, "agosto"

    const-string v24, "septiembre"

    const-string v25, "octubre"

    const-string v26, "noviembre"

    const-string v27, "diciembre"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v15, "decembre"

    const-string v16, "janvier"

    const-string v17, "fevrier"

    const-string v18, "mars"

    const-string v19, "avril"

    const-string v20, "mai"

    const-string v21, "juin"

    const-string v22, "juillet"

    const-string v23, "aout"

    const-string v24, "septembre"

    const-string v25, "octobre"

    const-string v26, "novembre"

    const-string v27, "decembre"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v15, "prosinac"

    const-string v16, "sijecanj"

    const-string v17, "veljaca"

    const-string v18, "ozujak"

    const-string v19, "travanj"

    const-string v20, "svibanj"

    const-string v21, "lipanj"

    const-string v22, "srpanj"

    const-string v23, "kolovoz"

    const-string v24, "rujan"

    const-string v25, "listopad"

    const-string v26, "studeni"

    const-string v27, "prosinac"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v15, "dicembre"

    const-string v16, "gennaio"

    const-string v17, "febbraio"

    const-string v18, "marzo"

    const-string v19, "aprile"

    const-string v20, "maggio"

    const-string v21, "giugno"

    const-string v22, "luglio"

    const-string v23, "agosto"

    const-string v24, "settembre"

    const-string v25, "ottobre"

    const-string v26, "novembre"

    const-string v27, "dicembre"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v15, "december"

    const-string v16, "januar"

    const-string v17, "februar"

    const-string v18, "marcius"

    const-string v19, "aprilis"

    const-string v20, "majus"

    const-string v21, "junius"

    const-string v22, "julius"

    const-string v23, "augusztus"

    const-string v24, "szeptember"

    const-string v25, "oktober"

    const-string v26, "november"

    const-string v27, "december"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v15, "Grudzie\u0144"

    const-string v16, "Stycze\u0144"

    const-string v17, "Luty"

    const-string v18, "Marzec"

    const-string v19, "Kwiecie\u0144"

    const-string v20, "Maj"

    const-string v21, "Czerwiec"

    const-string v22, "Lipiec"

    const-string v23, "Sierpie\u0144"

    const-string v24, "Wrzesie\u0144"

    const-string v25, "Pa\u017adziernik"

    const-string v26, "Listopad"

    const-string v27, "Grudzie\u0144"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v15, "dezembro"

    const-string v16, "janeiro"

    const-string v17, "fevereiro"

    const-string v18, "marco"

    const-string v19, "abril"

    const-string v20, "maio"

    const-string v21, "junho"

    const-string v22, "julho"

    const-string v23, "agosto"

    const-string v24, "setembro"

    const-string v25, "outubro"

    const-string v26, "novembro"

    const-string v27, "dezembro"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v15, "december"

    const-string v16, "janu\u00e1r"

    const-string v17, "febru\u00e1r"

    const-string v18, "marec"

    const-string v19, "apr\u00edl"

    const-string v20, "m\u00e1j"

    const-string v21, "j\u00fan"

    const-string v22, "j\u00fal"

    const-string v23, "august"

    const-string v24, "september"

    const-string v25, "okt\u00f3ber"

    const-string v26, "november"

    const-string v27, "december"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v15, "aralik"

    const-string v16, "ocak"

    const-string v17, "subat"

    const-string v18, "mart"

    const-string v19, "nisan"

    const-string v20, "mayis"

    const-string v21, "haziran"

    const-string v22, "temmuz"

    const-string v23, "agustos"

    const-string v24, "eylul"

    const-string v25, "ekim"

    const-string v26, "kasim"

    const-string v27, "aralik"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    sput-object v1, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    .line 150
    new-array v0, v0, [[Ljava/lang/String;

    const-string v15, "DEC"

    const-string v16, "JAN"

    const-string v17, "FEB"

    const-string v18, "MAR"

    const-string v19, "APR"

    const-string v20, "MAY"

    const-string v21, "JUN"

    const-string v22, "JUL"

    const-string v23, "AUG"

    const-string v24, "SEP"

    const-string v25, "OCT"

    const-string v26, "NOV"

    const-string v27, "DEC"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v15, "PRO"

    const-string v16, "LED"

    const-string v17, "\u00daNO"

    const-string v18, "B\u0158E"

    const-string v19, "DUB"

    const-string v20, "KV\u011a"

    const-string v21, "\u010cER"

    const-string v22, "\u010cER"

    const-string v23, "SRP"

    const-string v24, "Z\u00c1\u0158"

    const-string v25, "\u0158\u00cdJ"

    const-string v26, "LIS"

    const-string v27, "PRO"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v15, "DEZ"

    const-string v16, "JAN"

    const-string v17, "FEB"

    const-string v18, "MAR"

    const-string v19, "APR"

    const-string v20, "MAI"

    const-string v21, "JUN"

    const-string v22, "JUL"

    const-string v23, "AUG"

    const-string v24, "SEP"

    const-string v25, "OKT"

    const-string v26, "NOV"

    const-string v27, "DEZ"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v15, "DIC"

    const-string v16, "ENE"

    const-string v17, "FEB"

    const-string v18, "MAR"

    const-string v19, "ABR"

    const-string v20, "MAY"

    const-string v21, "JUN"

    const-string v22, "JUL"

    const-string v23, "AGO"

    const-string v24, "SEP"

    const-string v25, "OCT"

    const-string v26, "NOV"

    const-string v27, "DIC"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v15, "DEC"

    const-string v16, "JAN"

    const-string v17, "FEV"

    const-string v18, "MAR"

    const-string v19, "AVR"

    const-string v20, "MAI"

    const-string v21, "JUI"

    const-string v22, "JUI"

    const-string v23, "AOU"

    const-string v24, "SEP"

    const-string v25, "OCT"

    const-string v26, "NOV"

    const-string v27, "DEC"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v15, "PRO"

    const-string v16, "SIJ"

    const-string v17, "VEL"

    const-string v18, "OZU"

    const-string v19, "TRA"

    const-string v20, "SVI"

    const-string v21, "LIP"

    const-string v22, "SRP"

    const-string v23, "KOL"

    const-string v24, "RUJ"

    const-string v25, "LIS"

    const-string v26, "STU"

    const-string v27, "PRO"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v15, "DIC"

    const-string v16, "GEN"

    const-string v17, "FEB"

    const-string v18, "MAR"

    const-string v19, "APR"

    const-string v20, "MAG"

    const-string v21, "GIU"

    const-string v22, "LUG"

    const-string v23, "AGO"

    const-string v24, "SET"

    const-string v25, "OTT"

    const-string v26, "NOV"

    const-string v27, "DIC"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v15, "DEC"

    const-string v16, "JAN"

    const-string v17, "FEB"

    const-string v18, "MAR"

    const-string v19, "APR"

    const-string v20, "MAJ"

    const-string v21, "JUN"

    const-string v22, "JUL"

    const-string v23, "AUG"

    const-string v24, "SZE"

    const-string v25, "OKT"

    const-string v26, "NOV"

    const-string v27, "DEC"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v15, "GRU"

    const-string v16, "STY"

    const-string v17, "LUT"

    const-string v18, "MAR"

    const-string v19, "KWI"

    const-string v20, "MAJ"

    const-string v21, "CZE"

    const-string v22, "LIP"

    const-string v23, "SIE"

    const-string v24, "WRZ"

    const-string v25, "PA\u0179"

    const-string v26, "LIS"

    const-string v27, "GRU"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v15, "DEZ"

    const-string v16, "JAN"

    const-string v17, "FEV"

    const-string v18, "MAR"

    const-string v19, "ABR"

    const-string v20, "MAI"

    const-string v21, "JUN"

    const-string v22, "JUL"

    const-string v23, "AGO"

    const-string v24, "SET"

    const-string v25, "OUT"

    const-string v26, "NOV"

    const-string v27, "DEZ"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v15, "DEC"

    const-string v16, "JAN"

    const-string v17, "FEB"

    const-string v18, "MAR"

    const-string v19, "APR"

    const-string v20, "M\u00c1J"

    const-string v21, "J\u00daN"

    const-string v22, "J\u00daL"

    const-string v23, "AUG"

    const-string v24, "SEP"

    const-string v25, "OKT"

    const-string v26, "NOV"

    const-string v27, "DEC"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    const-string v15, "ARA"

    const-string v16, "OCA"

    const-string v17, "SUB"

    const-string v18, "MAR"

    const-string v19, "NIS"

    const-string v20, "MAY"

    const-string v21, "HAZ"

    const-string v22, "TEM"

    const-string v23, "AGU"

    const-string v24, "EYL"

    const-string v25, "EKI"

    const-string v26, "KAS"

    const-string v27, "ARA"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    sput-object v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 39
    invoke-direct {p0}, Lcom/mswiniuch/FiveLines2/widget/DigitalClockWidget;-><init>()V

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    .line 89
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->digitalNums:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    return-void
.end method


# virtual methods
.method public buildSlptViewComponent(Landroid/app/Service;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Service;",
            ")",
            "Ljava/util/List<",
            "Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 339
    new-instance v2, Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const-class v3, Lcom/mswiniuch/FiveLines2/widget/MainClock;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/mswiniuch/FiveLines2/settings/APsettings;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

    .line 340
    iget-object v2, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const-string v3, "lang"

    iget v4, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    invoke-virtual {v2, v3, v4}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->get(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/widget/MainClock;->codes:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsBool:Z

    .line 346
    new-instance v2, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v2}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v3, "background_slpt.png"

    .line 347
    invoke-static {v1, v3}, Lcom/huami/watch/watchface/util/Util;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setImagePicture([B)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v3, v4}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v4, v5}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 354
    new-instance v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v5}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 355
    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourHView;-><init>()V

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 356
    new-instance v6, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/digital/SlptHourLView;-><init>()V

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 357
    iget-object v6, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 358
    invoke-virtual {v5, v6, v8, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    const/4 v6, 0x2

    .line 364
    iput-byte v6, v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    const/4 v8, 0x0

    .line 365
    iput-byte v8, v5, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f05004c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v9, v9, v10

    const/high16 v11, 0x44200000    # 640.0f

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 367
    invoke-virtual {v5, v9, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f05004d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080005

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    mul-float v12, v12, v7

    sub-float/2addr v9, v12

    float-to-int v7, v9

    const/16 v9, -0x140

    .line 372
    invoke-virtual {v5, v9, v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 378
    new-instance v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v7}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 379
    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteHView;-><init>()V

    invoke-virtual {v7, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 380
    new-instance v12, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/digital/SlptMinuteLView;-><init>()V

    invoke-virtual {v7, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 381
    iget-object v12, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->digitalNums:[Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f050054

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v14, 0x7f040045

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 382
    invoke-virtual {v7, v12, v9, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 388
    iput-byte v6, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 389
    iput-byte v8, v7, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f050055

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float v9, v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 391
    invoke-virtual {v7, v9, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f050056

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    mul-float v12, v12, v14

    sub-float/2addr v9, v12

    float-to-int v9, v9

    const/16 v12, -0x140

    .line 396
    invoke-virtual {v7, v12, v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 402
    new-instance v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v9}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 403
    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v14, ":"

    .line 404
    invoke-virtual {v12, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v9, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f050051

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v13, 0x7f04003c

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 406
    invoke-virtual {v9, v12, v13, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 412
    iput-byte v6, v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 413
    iput-byte v8, v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050052

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    mul-float v12, v12, v10

    add-float/2addr v12, v11

    float-to-int v12, v12

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    .line 415
    invoke-virtual {v9, v12, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050053

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f080005

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v13, v15

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    mul-float v13, v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    const/16 v13, -0x140

    .line 420
    invoke-virtual {v9, v13, v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f03001f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_0

    iput-boolean v8, v9, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 428
    :cond_0
    new-instance v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v12}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 429
    new-instance v13, Lcom/mswiniuch/FiveLines2/resource/SlptSecondHView;

    invoke-direct {v13}, Lcom/mswiniuch/FiveLines2/resource/SlptSecondHView;-><init>()V

    invoke-virtual {v12, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 430
    new-instance v13, Lcom/mswiniuch/FiveLines2/resource/SlptSecondLView;

    invoke-direct {v13}, Lcom/mswiniuch/FiveLines2/resource/SlptSecondLView;-><init>()V

    invoke-virtual {v12, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f05005a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v14, 0x7f040057

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 431
    invoke-virtual {v12, v13, v14, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 437
    iget-boolean v3, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsSlptBool:Z

    if-nez v3, :cond_1

    iput-boolean v8, v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 439
    :cond_1
    iput-byte v6, v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 440
    iput-byte v8, v12, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f05005b

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float v3, v3, v10

    add-float/2addr v3, v11

    float-to-int v3, v3

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05005a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    .line 443
    invoke-virtual {v12, v3, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f05005c

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f080005

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v10, v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    mul-float v10, v10, v11

    sub-float/2addr v3, v10

    float-to-int v3, v3

    const/16 v10, -0x140

    .line 448
    invoke-virtual {v12, v10, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 496
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v11, " "

    .line 497
    invoke-virtual {v3, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 498
    new-instance v11, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;-><init>()V

    const-string v13, " "

    .line 499
    invoke-virtual {v11, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptPictureView;->setStringPicture(Ljava/lang/String;)V

    .line 502
    new-instance v13, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 504
    new-instance v14, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;

    invoke-direct {v14}, Lcom/ingenic/iwds/slpt/view/digital/SlptMonthLView;-><init>()V

    invoke-virtual {v13, v14}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 508
    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0x9

    const/16 v16, 0x1

    if-lt v14, v15, :cond_2

    .line 511
    sget-object v14, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget v15, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v14, v14, v15

    sget-object v15, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget v10, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v15, v10

    const/16 v15, 0xa

    aget-object v10, v10, v15

    aput-object v10, v14, v8

    .line 512
    sget-object v10, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget v14, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v10, v14

    sget-object v14, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget v15, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v14, v14, v15

    const/16 v15, 0xb

    aget-object v14, v14, v15

    aput-object v14, v10, v16

    .line 513
    sget-object v10, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget v14, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v10, v14

    sget-object v14, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget v15, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v14, v14, v15

    const/16 v15, 0xc

    aget-object v14, v14, v15

    aput-object v14, v10, v6

    .line 514
    sget-object v10, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget v14, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v10, v14

    sget-object v14, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget v15, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v14, v14, v15

    const/16 v15, 0xa

    aget-object v14, v14, v15

    aput-object v14, v10, v8

    .line 515
    sget-object v10, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget v14, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v10, v14

    sget-object v14, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget v15, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v14, v14, v15

    const/16 v15, 0xb

    aget-object v14, v14, v15

    aput-object v14, v10, v16

    .line 516
    sget-object v10, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget v14, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v10, v14

    sget-object v14, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget v15, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v14, v14, v15

    const/16 v15, 0xc

    aget-object v14, v14, v15

    aput-object v14, v10, v6

    .line 519
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f030021

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f03002f

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 521
    sget-object v10, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget v14, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v10, v14

    invoke-virtual {v13, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_3
    sget-object v10, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget v14, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v10, v10, v14

    invoke-virtual {v13, v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    .line 527
    :cond_4
    :goto_0
    new-instance v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v10}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 528
    invoke-virtual {v10, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 529
    invoke-virtual {v10, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 530
    invoke-virtual {v10, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 531
    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayHView;-><init>()V

    invoke-virtual {v10, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 532
    new-instance v3, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/digital/SlptDayLView;-><init>()V

    invoke-virtual {v10, v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f05003a

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f04002a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 533
    invoke-virtual {v10, v3, v13, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 538
    iput-byte v6, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 539
    iput-byte v8, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f05003b

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f030014

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-nez v13, :cond_5

    mul-int/lit8 v3, v3, 0x2

    add-int/lit16 v3, v3, 0x280

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    .line 543
    invoke-virtual {v10, v3, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v3, -0x140

    .line 551
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f05003c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v14, v14, v17

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    mul-float v14, v14, v11

    sub-float/2addr v13, v14

    float-to-int v11, v13

    .line 549
    invoke-virtual {v10, v3, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f030013

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_6

    iput-boolean v8, v10, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 606
    :cond_6
    new-instance v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v3}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 607
    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear3View;-><init>()V

    invoke-virtual {v3, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 608
    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear2View;-><init>()V

    invoke-virtual {v3, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 609
    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear1View;-><init>()V

    invoke-virtual {v3, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 610
    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptYear0View;-><init>()V

    invoke-virtual {v3, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f05007f

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f04006d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 611
    invoke-virtual {v3, v11, v13, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    .line 617
    iput-byte v6, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 618
    iput-byte v8, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 619
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f050080

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f030040

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-nez v13, :cond_7

    mul-int/lit8 v11, v11, 0x2

    add-int/lit16 v11, v11, 0x280

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f05007f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    .line 622
    invoke-virtual {v3, v11, v13}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v11, -0x140

    .line 630
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f050081

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v6, 0x7f05007f

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float v14, v14, v6

    sub-float/2addr v13, v14

    float-to-int v6, v13

    .line 628
    invoke-virtual {v3, v11, v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f03003f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_8

    iput-boolean v8, v3, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    .line 640
    :cond_8
    new-instance v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;

    invoke-direct {v6}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;-><init>()V

    .line 641
    new-instance v11, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;

    invoke-direct {v11}, Lcom/ingenic/iwds/slpt/view/digital/SlptWeekView;-><init>()V

    invoke-virtual {v6, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->add(Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;)I

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f03002e

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 643
    sget-object v11, Lcom/mswiniuch/FiveLines2/widget/MainClock;->days_3let:[[Ljava/lang/String;

    iget v13, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v11, v11, v13

    invoke-virtual {v6, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    goto :goto_1

    .line 645
    :cond_9
    sget-object v11, Lcom/mswiniuch/FiveLines2/widget/MainClock;->days:[[Ljava/lang/String;

    iget v13, v0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object v11, v11, v13

    invoke-virtual {v6, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStringPictureArrayForAll([Ljava/lang/String;)V

    .line 648
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f050076

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040067

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 647
    invoke-virtual {v6, v11, v13, v4}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setTextAttrForAll(FILandroid/graphics/Typeface;)V

    const/4 v4, 0x2

    .line 653
    iput-byte v4, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignX:B

    .line 654
    iput-byte v8, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->alignY:B

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f050077

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 656
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f030039

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_a

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x280

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f050076

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    .line 658
    invoke-virtual {v6, v4, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setRect(II)V

    const/16 v4, -0x140

    .line 666
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f050078

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050076

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    mul-float v13, v13, v14

    sub-float/2addr v11, v13

    float-to-int v11, v11

    .line 664
    invoke-virtual {v6, v4, v11}, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->setStart(II)V

    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f030038

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_b

    iput-boolean v8, v6, Lcom/ingenic/iwds/slpt/view/core/SlptLinearLayout;->show:Z

    :cond_b
    const/16 v1, 0x8

    .line 673
    new-array v1, v1, [Lcom/ingenic/iwds/slpt/view/core/SlptViewComponent;

    aput-object v2, v1, v8

    aput-object v5, v1, v16

    const/4 v2, 0x2

    aput-object v7, v1, v2

    const/4 v2, 0x3

    aput-object v9, v1, v2

    const/4 v2, 0x4

    aput-object v12, v1, v2

    const/4 v2, 0x5

    aput-object v10, v1, v2

    const/4 v2, 0x6

    aput-object v6, v1, v2

    const/4 v2, 0x7

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public init(Landroid/app/Service;)V
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V0.9 - Code by Marek Zima, style by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    new-instance v0, Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const-class v2, Lcom/mswiniuch/FiveLines2/widget/MainClock;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/mswiniuch/FiveLines2/settings/APsettings;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

    .line 173
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->settings:Lcom/mswiniuch/FiveLines2/settings/APsettings;

    const-string v2, "lang"

    iget v3, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    invoke-virtual {v0, v2, v3}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->get(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/mswiniuch/FiveLines2/widget/MainClock;->codes:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    .line 176
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->background:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->background:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftHour:F

    .line 180
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topHour:F

    .line 181
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftMinute:F

    .line 182
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topMinute:F

    .line 183
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftSeconds:F

    .line 184
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topSeconds:F

    .line 185
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftIndicator:F

    .line 186
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topIndicator:F

    .line 187
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftDate:F

    .line 188
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topDate:F

    .line 189
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftDay:F

    .line 190
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topDay:F

    .line 191
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftMonth:F

    .line 192
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topMonth:F

    .line 193
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftWeekday:F

    .line 194
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topWeekday:F

    .line 195
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftYear:F

    .line 196
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topYear:F

    .line 198
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->hourFont:Landroid/text/TextPaint;

    .line 199
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->hourFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 200
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->hourFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 201
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->hourFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->hourFont:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 204
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->minutesFont:Landroid/text/TextPaint;

    .line 205
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->minutesFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 206
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->minutesFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 207
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->minutesFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 208
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->minutesFont:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 210
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsBool:Z

    .line 211
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsSlptBool:Z

    .line 212
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsFont:Landroid/text/TextPaint;

    .line 213
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 214
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 215
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 216
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsFont:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 218
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorBool:Z

    .line 219
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFlashBool:Z

    .line 220
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFont:Landroid/text/TextPaint;

    .line 221
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->CLOCK_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 222
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 223
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFont:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 226
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateBool:Z

    .line 227
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateAlignLeftBool:Z

    .line 228
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateFont:Landroid/text/TextPaint;

    .line 229
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 230
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 231
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 232
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateFont:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dateAlignLeftBool:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 234
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayBool:Z

    .line 235
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->three_letters_day_if_textBool:Z

    .line 236
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayAlignLeftBool:Z

    .line 237
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayFont:Landroid/text/TextPaint;

    .line 238
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 239
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 240
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 241
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayFont:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayAlignLeftBool:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 243
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayBool:Z

    .line 244
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayAlignLeftBool:Z

    .line 245
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayFont:Landroid/text/TextPaint;

    .line 246
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 247
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 248
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayFont:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayAlignLeftBool:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_2
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_2
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthBool:Z

    .line 252
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->month_as_textBool:Z

    .line 253
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->three_letters_month_if_textBool:Z

    .line 254
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthAlignLeftBool:Z

    .line 255
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthFont:Landroid/text/TextPaint;

    .line 256
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v2, v3}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 257
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 258
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthFont:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthAlignLeftBool:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_3

    :cond_3
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_3
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 261
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearBool:Z

    .line 262
    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearAlignLeftBool:Z

    .line 263
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearFont:Landroid/text/TextPaint;

    .line 264
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;->DATE_FONT:Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;

    invoke-static {v1, v2}, Lcom/mswiniuch/FiveLines2/resource/ResourceManager;->getTypeFace(Landroid/content/res/Resources;Lcom/mswiniuch/FiveLines2/resource/ResourceManager$Font;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 265
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 266
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearFont:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f04006c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 267
    iget-object p1, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearFont:Landroid/text/TextPaint;

    iget-boolean v0, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearAlignLeftBool:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_4

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    :goto_4
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public onDrawDigital(Landroid/graphics/Canvas;FFFFIIIIIIII)V
    .locals 0

    .line 274
    iget-object p2, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-static {p8}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftHour:F

    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topHour:F

    iget-object p5, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->hourFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    invoke-static {p7}, Lcom/huami/watch/watchface/util/Util;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftMinute:F

    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topMinute:F

    iget-object p5, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->minutesFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsBool:Z

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    const-string p2, "%02d"

    .line 284
    new-array p5, p4, [Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p5, p3

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftSeconds:F

    iget p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topSeconds:F

    iget-object p8, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->secondsFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p5, p7, p8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 288
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 p5, 0x7

    .line 289
    invoke-virtual {p2, p5, p12}, Ljava/util/Calendar;->set(II)V

    .line 293
    iget-boolean p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->monthBool:Z

    .line 304
    iget-boolean p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayBool:Z

    const/4 p8, 0x2

    if-eqz p7, :cond_3

    .line 305
    iget-boolean p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->month_as_textBool:Z

    if-eqz p7, :cond_2

    iget-boolean p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->three_letters_month_if_textBool:Z

    if-eqz p7, :cond_1

    sget-object p7, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months_3let:[[Ljava/lang/String;

    iget p12, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object p7, p7, p12

    aget-object p7, p7, p10

    goto :goto_0

    :cond_1
    sget-object p7, Lcom/mswiniuch/FiveLines2/widget/MainClock;->months:[[Ljava/lang/String;

    iget p12, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object p7, p7, p12

    aget-object p7, p7, p10

    goto :goto_0

    :cond_2
    const-string p7, "%02d"

    new-array p12, p4, [Ljava/lang/Object;

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    aput-object p10, p12, p3

    invoke-static {p7, p12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    :goto_0
    const-string p10, "%s  %02d"

    .line 306
    new-array p12, p8, [Ljava/lang/Object;

    aput-object p7, p12, p3

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p12, p4

    invoke-static {p10, p12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    .line 307
    iget p10, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftDay:F

    iget p11, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topDay:F

    iget-object p12, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->dayFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p7, p10, p11, p12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 311
    :cond_3
    iget-boolean p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearBool:Z

    if-eqz p7, :cond_4

    const-string p7, "%04d"

    .line 312
    new-array p10, p4, [Ljava/lang/Object;

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    aput-object p9, p10, p3

    invoke-static {p7, p10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    .line 313
    iget p9, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftYear:F

    iget p10, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topYear:F

    iget-object p11, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->yearFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p7, p9, p10, p11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    :cond_4
    iget-boolean p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayBool:Z

    if-eqz p7, :cond_6

    .line 319
    invoke-virtual {p2, p5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, p4

    .line 320
    iget-boolean p4, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->three_letters_day_if_textBool:Z

    if-eqz p4, :cond_5

    sget-object p4, Lcom/mswiniuch/FiveLines2/widget/MainClock;->days_3let:[[Ljava/lang/String;

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object p4, p4, p5

    aget-object p2, p4, p2

    goto :goto_1

    :cond_5
    sget-object p4, Lcom/mswiniuch/FiveLines2/widget/MainClock;->days:[[Ljava/lang/String;

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->language:I

    aget-object p4, p4, p5

    aget-object p2, p4, p2

    .line 321
    :goto_1
    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftWeekday:F

    iget p5, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topWeekday:F

    iget-object p7, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->weekdayFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p4, p5, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 325
    :cond_6
    iget-boolean p2, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorBool:Z

    if-eqz p2, :cond_8

    const-string p2, ":"

    .line 326
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 327
    rem-int/2addr p6, p8

    if-eqz p6, :cond_7

    iget-boolean p3, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFlashBool:Z

    if-nez p3, :cond_8

    .line 328
    :cond_7
    iget p3, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->leftIndicator:F

    iget p4, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->topIndicator:F

    iget-object p5, p0, Lcom/mswiniuch/FiveLines2/widget/MainClock;->indicatorFont:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method
