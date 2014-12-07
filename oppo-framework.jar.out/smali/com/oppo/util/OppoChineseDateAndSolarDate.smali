.class public Lcom/oppo/util/OppoChineseDateAndSolarDate;
.super Ljava/lang/Object;
.source "OppoChineseDateAndSolarDate.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ChineseDateAndSolarDate"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChineseDateToSunDate(III)[I
    .locals 1
    .parameter "iChineseYear"
    .parameter "iChineseMonth"
    .parameter "iChineseDay"

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/oppo/util/OppoChineseDateAndSolarDate;->NativeChineseDateToSunDate(III)[I

    move-result-object v0

    return-object v0
.end method

.method public static GetChLeapMonth(I)I
    .locals 1
    .parameter "iChineseYear"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/oppo/util/OppoChineseDateAndSolarDate;->NativeGetChineseLeapMonth(I)I

    move-result v0

    return v0
.end method

.method public static GetChMonthDays(II)I
    .locals 1
    .parameter "iChineseYear"
    .parameter "iChineseMonth"

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/oppo/util/OppoChineseDateAndSolarDate;->NativeGetChineseMonthDays(II)I

    move-result v0

    return v0
.end method

.method public static GetSolarMonthDays(II)I
    .locals 1
    .parameter "iSolarYear"
    .parameter "iSolarMonth"

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/oppo/util/OppoChineseDateAndSolarDate;->NativeGetSunMonthDays(II)I

    move-result v0

    return v0
.end method

.method private static native NativeChineseDateToSunDate(III)[I
.end method

.method private static native NativeGetChineseLeapMonth(I)I
.end method

.method private static native NativeGetChineseMonthDays(II)I
.end method

.method private static native NativeGetSunMonthDays(II)I
.end method

.method private static native NativeSunDateToChineseDate(III)[I
.end method

.method public static SunDateToChineseDate(III)[I
    .locals 1
    .parameter "iSunDateYear"
    .parameter "iSunDateMonth"
    .parameter "iSunDateDay"

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/oppo/util/OppoChineseDateAndSolarDate;->NativeSunDateToChineseDate(III)[I

    move-result-object v0

    return-object v0
.end method
