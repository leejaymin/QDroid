.class public final enum Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;
.super Ljava/lang/Enum;
.source "InMobiAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum BACHELORS_DEGREE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum DOCTORAL_DEGREE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum HIGH_SCHOOL:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum IN_COLLEGE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum MASTERS:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum NONE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum OTHER:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field public static final enum SOME_COLLEGE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;


# instance fields
.field private final description:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "HIGH_SCHOOL"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_HighSchool:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->HIGH_SCHOOL:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 60
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "IN_COLLEGE"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_InCollege:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->IN_COLLEGE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 61
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "SOME_COLLEGE"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_SomeCollege:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->SOME_COLLEGE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 62
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "OTHER"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_Other:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->OTHER:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 63
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "BACHELORS_DEGREE"

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_BachelorsDegree:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->BACHELORS_DEGREE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 64
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "DOCTORAL_DEGREE"

    const/4 v2, 0x5

    sget-object v3, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_DoctoralDegree:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->DOCTORAL_DEGREE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 65
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "MASTERS"

    const/4 v2, 0x6

    sget-object v3, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_MastersDegree:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->MASTERS:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 66
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    const-string v1, "NONE"

    const/4 v2, 0x7

    sget-object v3, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_None:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;-><init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->NONE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->HIGH_SCHOOL:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->IN_COLLEGE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->SOME_COLLEGE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->OTHER:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->BACHELORS_DEGREE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->DOCTORAL_DEGREE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->MASTERS:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->NONE:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->$VALUES:[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/inmobi/androidsdk/IMAdRequest$EducationType;)V
    .locals 0
    .parameter
    .parameter
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/IMAdRequest$EducationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->description:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->$VALUES:[Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    return-object v0
.end method


# virtual methods
.method public getDescription()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->description:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    return-object v0
.end method
