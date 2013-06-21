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

    .line 14
    const-string v0, "mobclixDemographics"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->TAG:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 17
    const-string v0, "dbd"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    .line 18
    const-string v0, "dec"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    .line 19
    const-string v0, "den"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    .line 20
    const-string v0, "dg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    .line 21
    const-string v0, "ddg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    .line 22
    const-string v0, "dic"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    .line 23
    const-string v0, "dms"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    .line 24
    const-string v0, "drl"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    .line 26
    const-string v0, "dac"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    .line 27
    const-string v0, "dci"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    .line 28
    const-string v0, "dco"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    .line 29
    const-string v0, "ddc"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    .line 30
    const-string v0, "dmc"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    .line 31
    const-string v0, "dpo"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    .line 32
    const-string v0, "drg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    .line 35
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationUnknown:I

    .line 36
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationHighSchool:I

    .line 37
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationSomeCollege:I

    .line 38
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationInCollege:I

    .line 39
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationBachelorsDegree:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationMastersDegree:I

    .line 41
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationDoctoralDegree:I

    .line 43
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityUnknown:I

    .line 44
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityMixed:I

    .line 45
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityAsian:I

    .line 46
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityBlack:I

    .line 47
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityHispanic:I

    .line 48
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityNativeAmerican:I

    .line 49
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityWhite:I

    .line 51
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionUnknown:I

    .line 52
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionBuddhism:I

    .line 53
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionChristianity:I

    .line 54
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionHinduism:I

    .line 55
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionIslam:I

    .line 56
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionJudaism:I

    .line 57
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionUnaffiliated:I

    .line 58
    const/4 v0, 0x7

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionOther:I

    .line 60
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderUnknown:I

    .line 61
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderMale:I

    .line 62
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderFemale:I

    .line 64
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderBoth:I

    .line 66
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalUnknown:I

    .line 67
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalSingleAvailable:I

    .line 68
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalSingleUnavailable:I

    .line 69
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalMarried:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendDemographics(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .parameter "a"
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
    .line 72
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixDemographics;->sendDemographics(Landroid/app/Activity;Ljava/util/Map;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    .line 73
    return-void
.end method

.method public static sendDemographics(Landroid/app/Activity;Ljava/util/Map;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 11
    .parameter "a"
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
    .line 76
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 207
    .end local p0
    .end local p1           #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 77
    .restart local p0
    .restart local p1       #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {p0}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 79
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v4, keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v1, demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 101
    .local v2, isValid:Z
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .end local v2           #isValid:Z
    if-nez v2, :cond_3

    .line 181
    sget-object p1, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .end local p1           #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/mobclix/android/sdk/Mobclix;->getFeedbackServer()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v2, params:Ljava/lang/StringBuffer;
    :try_start_0
    const-string p1, "p=android&t=demo"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string p1, "&a="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .end local v4           #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string p1, "&v="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string p1, "&m="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string p1, "&d="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string p1, "&dt="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string p1, "&os="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    sget-object v4, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    sget-object p1, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {p1}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object p1

    .line 192
    .local p1, gps:Ljava/lang/String;
    const-string v4, "null"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    const-string v4, "&gps="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .end local p1           #gps:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    if-nez p1, :cond_12

    .line 205
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;

    .end local v1           #demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #params:Ljava/lang/StringBuffer;
    invoke-direct {v1, v3, v2, p0, p2}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    .local p1, commentThread:Ljava/lang/Thread;
    invoke-virtual {p1}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 101
    .end local v3           #url:Ljava/lang/String;
    .restart local v1       #demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, k:Ljava/lang/String;
    const-string v6, ""

    .line 103
    .local v6, temp:Ljava/lang/String;
    const/4 v2, 0x0

    .line 104
    .local v2, isValid:Z
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 106
    .local v7, v:Ljava/lang/Object;
    if-eqz v7, :cond_13

    .line 107
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 108
    const/4 v2, 0x0

    move-object v5, v6

    .line 177
    .end local v6           #temp:Ljava/lang/String;
    .end local v7           #v:Ljava/lang/Object;
    .local v5, temp:Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 110
    .end local v5           #temp:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    .restart local v7       #v:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/util/Date;

    if-ne v5, v8, :cond_5

    .line 111
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 112
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2           #isValid:Z
    const-string v5, "yyyyMMdd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, f:Ljava/text/SimpleDateFormat;
    check-cast v7, Ljava/util/Date;

    .end local v7           #v:Ljava/lang/Object;
    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .end local v6           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, isValid:Z
    goto :goto_3

    .line 116
    .end local v5           #temp:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    .restart local v7       #v:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/lang/String;

    if-ne v5, v8, :cond_8

    .line 117
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 118
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 119
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 120
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 121
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 122
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 123
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 124
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 126
    :cond_6
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 127
    .end local v6           #temp:Ljava/lang/String;
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 128
    .end local v2           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 129
    const/4 v2, 0x0

    .local v2, isValid:Z
    goto :goto_3

    .line 131
    .end local v2           #isValid:Z
    :cond_7
    const/4 v2, 0x1

    .restart local v2       #isValid:Z
    goto/16 :goto_3

    .line 133
    .end local v5           #temp:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/lang/Integer;

    if-ne v5, v8, :cond_13

    .line 134
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 135
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 136
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 137
    sget-object v5, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 139
    :cond_9
    check-cast v7, Ljava/lang/Integer;

    .end local v7           #v:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .end local v6           #temp:Ljava/lang/String;
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 141
    .end local v2           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 142
    const/4 v2, 0x0

    .local v2, isValid:Z
    goto/16 :goto_3

    .line 144
    .end local v2           #isValid:Z
    :cond_a
    const/4 v2, 0x1

    .restart local v2       #isValid:Z
    goto/16 :goto_3

    .line 146
    .end local v5           #temp:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    .restart local v7       #v:Ljava/lang/Object;
    :cond_b
    const/4 v5, 0x0

    .line 148
    .local v5, max:I
    sget-object v8, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 150
    const/4 v5, 0x2

    .line 167
    :cond_c
    :goto_4
    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 168
    .local v8, value:I
    const/4 v10, 0x1

    if-gt v10, v8, :cond_13

    if-gt v8, v5, :cond_13

    .line 170
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 171
    .end local v6           #temp:Ljava/lang/String;
    .local v5, temp:Ljava/lang/String;
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 152
    .end local v8           #value:I
    .local v5, max:I
    .restart local v6       #temp:Ljava/lang/String;
    :cond_d
    sget-object v8, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 153
    sget-object v8, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 155
    :cond_e
    const/4 v5, 0x3

    goto :goto_4

    .line 157
    :cond_f
    sget-object v8, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 158
    sget-object v8, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 160
    :cond_10
    const/4 v5, 0x6

    goto :goto_4

    .line 162
    :cond_11
    sget-object v8, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 164
    const/4 v5, 0x7

    goto :goto_4

    .line 198
    .end local v4           #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5           #max:I
    .end local v6           #temp:Ljava/lang/String;
    .end local v7           #v:Ljava/lang/Object;
    .end local p1           #d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, params:Ljava/lang/StringBuffer;
    .local v3, url:Ljava/lang/String;
    :cond_12
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 199
    .local p1, k:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #k:Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 202
    :catch_0
    move-exception p0

    .local p0, e:Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0

    .local v2, isValid:Z
    .local v3, k:Ljava/lang/String;
    .restart local v4       #keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v6       #temp:Ljava/lang/String;
    .restart local v7       #v:Ljava/lang/Object;
    .local p0, a:Landroid/app/Activity;
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_13
    move-object v5, v6

    .end local v6           #temp:Ljava/lang/String;
    .local v5, temp:Ljava/lang/String;
    goto/16 :goto_3
.end method
