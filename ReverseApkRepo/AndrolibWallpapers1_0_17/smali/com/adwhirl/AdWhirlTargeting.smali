.class public Lcom/adwhirl/AdWhirlTargeting;
.super Ljava/lang/Object;
.source "AdWhirlTargeting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adwhirl/AdWhirlTargeting$Gender;
    }
.end annotation


# static fields
.field private static birthDate:Ljava/util/GregorianCalendar;

.field private static gender:Lcom/adwhirl/AdWhirlTargeting$Gender;

.field private static keywords:Ljava/lang/String;

.field private static postalCode:Ljava/lang/String;

.field private static testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->resetData()V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAge()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting;->birthDate:Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/adwhirl/AdWhirlTargeting;->birthDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getBirthDate()Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting;->birthDate:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public static getGender()Lcom/adwhirl/AdWhirlTargeting$Gender;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting;->gender:Lcom/adwhirl/AdWhirlTargeting$Gender;

    return-object v0
.end method

.method public static getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestMode()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/adwhirl/AdWhirlTargeting;->testMode:Z

    return v0
.end method

.method public static resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adwhirl/AdWhirlTargeting;->testMode:Z

    .line 37
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->UNKNOWN:Lcom/adwhirl/AdWhirlTargeting$Gender;

    sput-object v0, Lcom/adwhirl/AdWhirlTargeting;->gender:Lcom/adwhirl/AdWhirlTargeting$Gender;

    .line 38
    sput-object v1, Lcom/adwhirl/AdWhirlTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 39
    sput-object v1, Lcom/adwhirl/AdWhirlTargeting;->postalCode:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/adwhirl/AdWhirlTargeting;->keywords:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static setAge(I)V
    .locals 4
    .parameter "age"

    .prologue
    const/4 v3, 0x1

    .line 84
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/adwhirl/AdWhirlTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 85
    return-void
.end method

.method public static setBirthDate(Ljava/util/GregorianCalendar;)V
    .locals 0
    .parameter "birthDate"

    .prologue
    .line 80
    sput-object p0, Lcom/adwhirl/AdWhirlTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 81
    return-void
.end method

.method public static setGender(Lcom/adwhirl/AdWhirlTargeting$Gender;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    sget-object p0, Lcom/adwhirl/AdWhirlTargeting$Gender;->UNKNOWN:Lcom/adwhirl/AdWhirlTargeting$Gender;

    .line 64
    :cond_0
    sput-object p0, Lcom/adwhirl/AdWhirlTargeting;->gender:Lcom/adwhirl/AdWhirlTargeting$Gender;

    .line 65
    return-void
.end method

.method public static setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 100
    sput-object p0, Lcom/adwhirl/AdWhirlTargeting;->keywords:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0
    .parameter "postalCode"

    .prologue
    .line 92
    sput-object p0, Lcom/adwhirl/AdWhirlTargeting;->postalCode:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0
    .parameter "testMode"

    .prologue
    .line 48
    sput-boolean p0, Lcom/adwhirl/AdWhirlTargeting;->testMode:Z

    .line 49
    return-void
.end method
