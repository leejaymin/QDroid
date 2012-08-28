.class public final Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.super Ljava/lang/Object;
.source "MillennialAdapterExtras.java"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;,
        Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;
    }
.end annotation


# instance fields
.field private children:Ljava/lang/Boolean;

.field private education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

.field private ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

.field private income:Ljava/lang/Integer;

.field private interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

.field private location:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;

.field private maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

.field private orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

.field private politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field private postalCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->location:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;

    .line 68
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    .line 95
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    .line 143
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 195
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    .line 242
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    .line 296
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .line 350
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 377
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    .line 404
    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearAdLocation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setAdLocation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearChildren()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setChildren(Ljava/lang/Boolean;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setEducation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setEthnicity(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearIncomeInUsDollars()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setIncomeInUsDollars(Ljava/lang/Integer;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setInterstitialTime(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setMaritalStatus(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setOrientation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setPolitics(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearPostalCode()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public getAdLocation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->location:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;

    return-object v0
.end method

.method public getChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    return-object v0
.end method

.method public getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    return-object v0
.end method

.method public getIncomeInUsDollars()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    return-object v0
.end method

.method public getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    return-object v0
.end method

.method public getOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    return-object v0
.end method

.method public getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAdLocation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "location"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->location:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;

    .line 39
    return-object p0
.end method

.method public setChildren(Ljava/lang/Boolean;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "children"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->children:Ljava/lang/Boolean;

    .line 384
    return-object p0
.end method

.method public setEducation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "education"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->education:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    .line 357
    return-object p0
.end method

.method public setEthnicity(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "ethnicity"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->ethnicity:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    .line 202
    return-object p0
.end method

.method public setIncomeInUsDollars(Ljava/lang/Integer;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "income"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->income:Ljava/lang/Integer;

    .line 102
    return-object p0
.end method

.method public setInterstitialTime(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "interstitialTime"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->interstitialTime:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    .line 75
    return-object p0
.end method

.method public setMaritalStatus(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "maritalStatus"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->maritalStatus:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    .line 150
    return-object p0
.end method

.method public setOrientation(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "orientation"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->orientation:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    .line 249
    return-object p0
.end method

.method public setPolitics(Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "politics"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->politics:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .line 303
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    .locals 0
    .parameter "postalCode"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->postalCode:Ljava/lang/String;

    .line 411
    return-object p0
.end method
