.class public final enum Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;
.super Ljava/lang/Enum;
.source "MillennialAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum ASSOCIATE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum BACHELORS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum HIGH_SCHOOL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum IN_COLLEGE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum MASTERS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum PHD:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum PROFESSIONAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field public static final enum SOME_COLLEGE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "HIGH_SCHOOL"

    const-string v2, "highschool"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->HIGH_SCHOOL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 328
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "IN_COLLEGE"

    const-string v2, "incollege"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->IN_COLLEGE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 329
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "SOME_COLLEGE"

    const-string v2, "somecollege"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->SOME_COLLEGE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 330
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "ASSOCIATE"

    const-string v2, "associate"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->ASSOCIATE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 331
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "BACHELORS"

    const-string v2, "bachelors"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->BACHELORS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 332
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "MASTERS"

    const/4 v2, 0x5

    const-string v3, "masters"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->MASTERS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 333
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "PHD"

    const/4 v2, 0x6

    const-string v3, "phd"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->PHD:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 334
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    const-string v1, "PROFESSIONAL"

    const/4 v2, 0x7

    const-string v3, "professional"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->PROFESSIONAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 326
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->HIGH_SCHOOL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->IN_COLLEGE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->SOME_COLLEGE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->ASSOCIATE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->BACHELORS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->MASTERS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->PHD:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->PROFESSIONAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 339
    iput-object p3, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->description:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;
    .locals 1
    .parameter "name"

    .prologue
    .line 326
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->description:Ljava/lang/String;

    return-object v0
.end method
