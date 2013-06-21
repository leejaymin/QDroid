.class public Lcom/garageapps/android/spacetracks/languages/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# static fields
.field public static LANG_MAIN_MENU_MENU_AUDIO_1:I

.field public static LANG_MAIN_MENU_MENU_AUDIO_2:I

.field public static LANG_MAIN_MENU_MENU_AUDIO_3:I

.field public static LANG_MAIN_MENU_MENU_BACK:I

.field public static LANG_MAIN_MENU_MENU_CHOOSE:I

.field public static LANG_MAIN_MENU_MENU_CONFIRM:I

.field public static LANG_MAIN_MENU_MENU_CONTROL_1:I

.field public static LANG_MAIN_MENU_MENU_CONTROL_2:I

.field public static LANG_MAIN_MENU_MENU_CONTROL_3:I

.field public static LANG_MAIN_MENU_MENU_CONTROL_4:I

.field public static LANG_MAIN_MENU_MENU_CONTROL_D:I

.field public static LANG_MAIN_MENU_MENU_CONTROL_K:I

.field public static LANG_MAIN_MENU_MENU_ENGLISH:I

.field public static LANG_MAIN_MENU_MENU_FRENCH:I

.field public static LANG_MAIN_MENU_MENU_GAME_1:I

.field public static LANG_MAIN_MENU_MENU_GAME_2:I

.field public static LANG_MAIN_MENU_MENU_GAME_3:I

.field public static LANG_MAIN_MENU_MENU_GERMAN:I

.field public static LANG_MAIN_MENU_MENU_ITALIAN:I

.field public static LANG_MAIN_MENU_MENU_MAX:I

.field public static LANG_MAIN_MENU_MENU_MIN:I

.field public static LANG_MAIN_MENU_MENU_NO:I

.field public static LANG_MAIN_MENU_MENU_OFF:I

.field public static LANG_MAIN_MENU_MENU_ON:I

.field public static LANG_MAIN_MENU_MENU_OPTIONS_1:I

.field public static LANG_MAIN_MENU_MENU_OPTIONS_2:I

.field public static LANG_MAIN_MENU_MENU_OPTIONS_3:I

.field public static LANG_MAIN_MENU_MENU_OPTIONS_4:I

.field public static LANG_MAIN_MENU_MENU_ROOT_1:I

.field public static LANG_MAIN_MENU_MENU_ROOT_2:I

.field public static LANG_MAIN_MENU_MENU_ROOT_3:I

.field public static LANG_MAIN_MENU_MENU_ROOT_4:I

.field public static LANG_MAIN_MENU_MENU_SERBIAN:I

.field public static LANG_MAIN_MENU_MENU_SPANISH:I

.field public static LANG_MAIN_MENU_MENU_START_1:I

.field public static LANG_MAIN_MENU_MENU_START_2:I

.field public static LANG_MAIN_MENU_MENU_START_3:I

.field public static LANG_MAIN_MENU_MENU_VIDEO_1:I

.field public static LANG_MAIN_MENU_MENU_VIDEO_2:I

.field public static LANG_MAIN_MENU_MENU_VIDEO_3:I

.field public static LANG_MAIN_MENU_MENU_YES:I


# instance fields
.field protected mLanguage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ON:I

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OFF:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_YES:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_NO:I

    .line 19
    const/4 v0, 0x4

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_MIN:I

    .line 20
    const/4 v0, 0x5

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_MAX:I

    .line 21
    const/4 v0, 0x6

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    .line 22
    const/4 v0, 0x7

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CHOOSE:I

    .line 23
    const/16 v0, 0x8

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONFIRM:I

    .line 25
    const/16 v0, 0xb

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_1:I

    .line 26
    const/16 v0, 0xc

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_2:I

    .line 27
    const/16 v0, 0xd

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_3:I

    .line 28
    const/16 v0, 0xe

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_4:I

    .line 30
    const/16 v0, 0x14

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_1:I

    .line 31
    const/16 v0, 0x15

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_2:I

    .line 32
    const/16 v0, 0x16

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_3:I

    .line 34
    const/16 v0, 0x1e

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_1:I

    .line 35
    const/16 v0, 0x1f

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_2:I

    .line 36
    const/16 v0, 0x20

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_3:I

    .line 37
    const/16 v0, 0x21

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_4:I

    .line 39
    const/16 v0, 0x28

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_1:I

    .line 40
    const/16 v0, 0x29

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_2:I

    .line 41
    const/16 v0, 0x2a

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_3:I

    .line 43
    const/16 v0, 0x32

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_1:I

    .line 44
    const/16 v0, 0x33

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_2:I

    .line 45
    const/16 v0, 0x34

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_3:I

    .line 47
    const/16 v0, 0x3c

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_1:I

    .line 48
    const/16 v0, 0x3d

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_2:I

    .line 49
    const/16 v0, 0x3e

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_3:I

    .line 50
    const/16 v0, 0x3f

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_4:I

    .line 51
    const/16 v0, 0x40

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_D:I

    .line 52
    const/16 v0, 0x41

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_K:I

    .line 54
    const/16 v0, 0x46

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_1:I

    .line 55
    const/16 v0, 0x47

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_2:I

    .line 56
    const/16 v0, 0x48

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_3:I

    .line 58
    const/16 v0, 0x64

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ENGLISH:I

    .line 59
    const/16 v0, 0x65

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_SERBIAN:I

    .line 60
    const/16 v0, 0x66

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GERMAN:I

    .line 61
    const/16 v0, 0x67

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_FRENCH:I

    .line 62
    const/16 v0, 0x68

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ITALIAN:I

    .line 63
    const/16 v0, 0x69

    sput v0, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_SPANISH:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 2
    .parameter "element"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/Languages;->mLanguage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
