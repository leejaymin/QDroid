.class public final Lcom/google/api/translate/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final ARABIC:Ljava/lang/String; = "ar"

.field public static final BULGARIAN:Ljava/lang/String; = "bg"

.field public static final CATALAN:Ljava/lang/String; = "ca"

.field public static final CHINESE:Ljava/lang/String; = "zh"

.field public static final CHINESE_SIMPLIFIED:Ljava/lang/String; = "zh-CN"

.field public static final CHINESE_TRADITIONAL:Ljava/lang/String; = "zh-TW"

.field public static final CROATIAN:Ljava/lang/String; = "hr"

.field public static final CZECH:Ljava/lang/String; = "cs"

.field public static final DANISH:Ljava/lang/String; = "da"

.field public static final DUTCH:Ljava/lang/String; = "nl"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final FILIPINO:Ljava/lang/String; = "tl"

.field public static final FINNISH:Ljava/lang/String; = "fi"

.field public static final FRENCH:Ljava/lang/String; = "fr"

.field public static final GERMAN:Ljava/lang/String; = "de"

.field public static final GREEK:Ljava/lang/String; = "el"

.field public static final HEBREW:Ljava/lang/String; = "iw"

.field public static final HINDI:Ljava/lang/String; = "hi"

.field public static final INDONESIAN:Ljava/lang/String; = "id"

.field public static final ITALIAN:Ljava/lang/String; = "it"

.field public static final JAPANESE:Ljava/lang/String; = "ja"

.field public static final KOREAN:Ljava/lang/String; = "ko"

.field public static final LATVIAN:Ljava/lang/String; = "lv"

.field public static final LITHUANIAN:Ljava/lang/String; = "lt"

.field public static final NORWEGIAN:Ljava/lang/String; = "no"

.field public static final POLISH:Ljava/lang/String; = "pl"

.field public static final PORTUGESE:Ljava/lang/String; = "pt"

.field public static final ROMANIAN:Ljava/lang/String; = "ro"

.field public static final RUSSIAN:Ljava/lang/String; = "ru"

.field public static final SERBIAN:Ljava/lang/String; = "sr"

.field public static final SLOVAK:Ljava/lang/String; = "sk"

.field public static final SLOVENIAN:Ljava/lang/String; = "sl"

.field public static final SPANISH:Ljava/lang/String; = "es"

.field public static final SWEDISH:Ljava/lang/String; = "sv"

.field public static final UKRANIAN:Ljava/lang/String; = "uk"

.field public static final VIETNAMESE:Ljava/lang/String; = "vi"

.field public static final validLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 71
    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 72
    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tl"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "iw"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 73
    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 74
    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 75
    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "uk"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "vi"

    aput-object v2, v0, v1

    .line 69
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/api/translate/Language;->validLanguages:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidLanguage(Ljava/lang/String;)Z
    .locals 1
    .parameter "language"

    .prologue
    .line 85
    sget-object v0, Lcom/google/api/translate/Language;->validLanguages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
