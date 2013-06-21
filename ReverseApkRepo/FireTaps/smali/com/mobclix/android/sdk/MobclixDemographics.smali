.class public Lcom/mobclix/android/sdk/MobclixDemographics;
.super Ljava/lang/Object;
.source "MobclixDemographics.java"


# static fields
.field public static AreaCode:Ljava/lang/String;

.field public static Birthdate:Ljava/lang/String;

.field public static City:Ljava/lang/String;

.field public static Country:Ljava/lang/String;

.field public static DMACode:Ljava/lang/String;

.field public static DatingGender:Ljava/lang/String;

.field public static Education:Ljava/lang/String;

.field public static EducationBachelorsDegree:I

.field public static EducationDoctoralDegree:I

.field public static EducationHighSchool:I

.field public static EducationInCollege:I

.field public static EducationMastersDegree:I

.field public static EducationSomeCollege:I

.field public static EducationUnknown:I

.field public static Ethnicity:Ljava/lang/String;

.field public static EthnicityAsian:I

.field public static EthnicityBlack:I

.field public static EthnicityHispanic:I

.field public static EthnicityMixed:I

.field public static EthnicityNativeAmerican:I

.field public static EthnicityUnknown:I

.field public static EthnicityWhite:I

.field public static Gender:Ljava/lang/String;

.field public static GenderBoth:I

.field public static GenderFemale:I

.field public static GenderMale:I

.field public static GenderUnknown:I

.field public static Income:Ljava/lang/String;

.field public static MaritalMarried:I

.field public static MaritalSingleAvailable:I

.field public static MaritalSingleUnavailable:I

.field public static MaritalStatus:Ljava/lang/String;

.field public static MaritalUnknown:I

.field public static MetroCode:Ljava/lang/String;

.field public static PostalCode:Ljava/lang/String;

.field public static Region:Ljava/lang/String;

.field public static Religion:Ljava/lang/String;

.field public static ReligionBuddhism:I

.field public static ReligionChristianity:I

.field public static ReligionHinduism:I

.field public static ReligionIslam:I

.field public static ReligionJudaism:I

.field public static ReligionOther:I

.field public static ReligionUnaffiliated:I

.field public static ReligionUnknown:I

.field private static TAG:Ljava/lang/String;

.field static controller:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 19
    const-string v0, "mobclixDemographics"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 22
    const-string v0, "dbd"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    .line 23
    const-string v0, "dec"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    .line 24
    const-string v0, "den"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    .line 25
    const-string v0, "dg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    .line 26
    const-string v0, "ddg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    .line 27
    const-string v0, "dic"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    .line 28
    const-string v0, "dms"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    .line 29
    const-string v0, "drl"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    .line 31
    const-string v0, "dac"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    .line 32
    const-string v0, "dci"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    .line 33
    const-string v0, "dco"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    .line 34
    const-string v0, "ddc"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    .line 35
    const-string v0, "dmc"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    .line 36
    const-string v0, "dpo"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    .line 37
    const-string v0, "drg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    .line 40
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationUnknown:I

    .line 41
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationHighSchool:I

    .line 42
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationSomeCollege:I

    .line 43
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationInCollege:I

    .line 44
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationBachelorsDegree:I

    .line 45
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationMastersDegree:I

    .line 46
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationDoctoralDegree:I

    .line 48
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityUnknown:I

    .line 49
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityMixed:I

    .line 50
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityAsian:I

    .line 51
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityBlack:I

    .line 52
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityHispanic:I

    .line 53
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityNativeAmerican:I

    .line 54
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityWhite:I

    .line 56
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionUnknown:I

    .line 57
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionBuddhism:I

    .line 58
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionChristianity:I

    .line 59
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionHinduism:I

    .line 60
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionIslam:I

    .line 61
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionJudaism:I

    .line 62
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionUnaffiliated:I

    .line 63
    const/4 v0, 0x7

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionOther:I

    .line 65
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderUnknown:I

    .line 66
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderMale:I

    .line 67
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderFemale:I

    .line 69
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderBoth:I

    .line 71
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalUnknown:I

    .line 72
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalSingleAvailable:I

    .line 73
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalSingleUnavailable:I

    .line 74
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalMarried:I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendDemographics(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixDemographics;->sendDemographics(Landroid/app/Activity;Ljava/util/Map;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    .line 78
    return-void
.end method

.method public static sendDemographics(Landroid/app/Activity;Ljava/util/Map;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 10
    .parameter "c"
    .parameter
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mobclix/android/sdk/MobclixFeedback$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 205
    .end local p0
    .end local p1           #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 82
    .restart local p0
    .restart local p1       #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {p0}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v3, keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    .end local p0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object p0, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local p0, demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, isValid:Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .end local v1           #isValid:Z
    if-nez v1, :cond_2

    .line 186
    sget-object p1, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .end local p1           #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/mobclix/android/sdk/Mobclix;->getFeedbackServer()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, url:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v1, params:Ljava/lang/StringBuffer;
    :try_start_0
    const-string p1, "p=android&t=demo"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string p1, "&a="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v3, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .end local v3           #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string p1, "&v="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v3, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string p1, "&m="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v3, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string p1, "&d="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v3, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string p1, "&dt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v3, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string p1, "&os="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v3, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string p1, "&gps="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v3, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    if-nez p1, :cond_11

    .line 203
    new-instance p0, Ljava/lang/Thread;

    .end local p0           #demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance p1, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #params:Ljava/lang/StringBuffer;
    invoke-direct {p1, v2, v1, p2}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    .local p0, commentThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 106
    .end local v2           #url:Ljava/lang/String;
    .restart local v3       #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local p0, demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1       #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, k:Ljava/lang/String;
    const-string v5, ""

    .line 108
    .local v5, temp:Ljava/lang/String;
    const/4 v1, 0x0

    .line 109
    .local v1, isValid:Z
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 111
    .local v6, v:Ljava/lang/Object;
    if-eqz v6, :cond_12

    .line 112
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 113
    const/4 v1, 0x0

    move-object v4, v5

    .line 182
    .end local v5           #temp:Ljava/lang/String;
    .end local v6           #v:Ljava/lang/Object;
    .local v4, temp:Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 115
    .end local v4           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    .restart local v6       #v:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Ljava/util/Date;

    if-ne v4, v7, :cond_4

    .line 116
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 117
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #isValid:Z
    const-string v4, "yyyyMMdd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, f:Ljava/text/SimpleDateFormat;
    check-cast v6, Ljava/util/Date;

    .end local v6           #v:Ljava/lang/Object;
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .end local v5           #temp:Ljava/lang/String;
    .restart local v4       #temp:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, isValid:Z
    goto :goto_3

    .line 121
    .end local v4           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    .restart local v6       #v:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Ljava/lang/String;

    if-ne v4, v7, :cond_7

    .line 122
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 123
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 125
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 126
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 127
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 128
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 129
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 131
    :cond_5
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 132
    .end local v5           #temp:Ljava/lang/String;
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 133
    .end local v1           #temp:Ljava/lang/String;
    .restart local v4       #temp:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 134
    const/4 v1, 0x0

    .local v1, isValid:Z
    goto :goto_3

    .line 136
    .end local v1           #isValid:Z
    :cond_6
    const/4 v1, 0x1

    .restart local v1       #isValid:Z
    goto/16 :goto_3

    .line 138
    .end local v4           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Ljava/lang/Integer;

    if-ne v4, v7, :cond_12

    .line 139
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 140
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 141
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 142
    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 144
    :cond_8
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #v:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v5           #temp:Ljava/lang/String;
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 146
    .end local v1           #temp:Ljava/lang/String;
    .restart local v4       #temp:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    const/4 v1, 0x0

    .local v1, isValid:Z
    goto/16 :goto_3

    .line 149
    .end local v1           #isValid:Z
    :cond_9
    const/4 v1, 0x1

    .restart local v1       #isValid:Z
    goto/16 :goto_3

    .line 151
    .end local v4           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    .restart local v6       #v:Ljava/lang/Object;
    :cond_a
    const/4 v4, 0x0

    .line 153
    .local v4, max:I
    sget-object v7, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 155
    const/4 v4, 0x2

    .line 172
    :cond_b
    :goto_4
    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 173
    .local v7, value:I
    const/4 v9, 0x1

    if-gt v9, v7, :cond_12

    if-gt v7, v4, :cond_12

    .line 175
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .end local v5           #temp:Ljava/lang/String;
    .local v4, temp:Ljava/lang/String;
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 157
    .end local v7           #value:I
    .local v4, max:I
    .restart local v5       #temp:Ljava/lang/String;
    :cond_c
    sget-object v7, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 158
    sget-object v7, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 160
    :cond_d
    const/4 v4, 0x3

    goto :goto_4

    .line 162
    :cond_e
    sget-object v7, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 163
    sget-object v7, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 165
    :cond_f
    const/4 v4, 0x6

    goto :goto_4

    .line 167
    :cond_10
    sget-object v7, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 169
    const/4 v4, 0x7

    goto :goto_4

    .line 197
    .end local v3           #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v4           #max:I
    .end local v5           #temp:Ljava/lang/String;
    .end local v6           #v:Ljava/lang/Object;
    .end local p1           #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, params:Ljava/lang/StringBuffer;
    .local v2, url:Ljava/lang/String;
    :cond_11
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 198
    .local p1, k:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #k:Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 200
    :catch_0
    move-exception p0

    .local p0, e:Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0

    .local v1, isValid:Z
    .local v2, k:Ljava/lang/String;
    .restart local v3       #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v5       #temp:Ljava/lang/String;
    .restart local v6       #v:Ljava/lang/Object;
    .local p0, demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_12
    move-object v4, v5

    .end local v5           #temp:Ljava/lang/String;
    .local v4, temp:Ljava/lang/String;
    goto/16 :goto_3
.end method
