.class public final Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
.super Ljava/lang/Object;
.source "InMobiAdapterExtras.java"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;,
        Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;
    }
.end annotation


# instance fields
.field private areaCode:Ljava/lang/String;

.field private education:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

.field private ethnicity:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

.field private income:Ljava/lang/Integer;

.field private interests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postalCode:Ljava/lang/String;

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 129
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 155
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    .line 181
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    .line 228
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addInterest(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 2
    .parameter "interest"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setInterests(Ljava/util/Collection;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    .line 204
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    .line 205
    return-object p0
.end method

.method public clearAreaCode()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setAreaCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearEducation()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setEducation(Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearEthnicity()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setEthnicity(Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearIncome()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setIncome(Ljava/lang/Integer;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearInterests()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setInterests(Ljava/util/Collection;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearPostalCode()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearSearchString()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->setSearchString(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-result-object v0

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEducation()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    return-object v0
.end method

.method public getEthnicity()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    return-object v0
.end method

.method public getIncome()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInterests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .parameter "areaCode"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->areaCode:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public setEducation(Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .parameter "education"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->education:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    .line 86
    return-object p0
.end method

.method public setEthnicity(Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .parameter "ethnicity"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->ethnicity:Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    .line 136
    return-object p0
.end method

.method public setIncome(Ljava/lang/Integer;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .parameter "income"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->income:Ljava/lang/Integer;

    .line 162
    return-object p0
.end method

.method public setInterests(Ljava/util/Collection;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, interests:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    .line 193
    :goto_0
    return-object p0

    .line 190
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->interests:Ljava/util/Set;

    goto :goto_0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .parameter "postalCode"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->postalCode:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public setSearchString(Ljava/lang/String;)Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    .locals 0
    .parameter "searchString"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->searchString:Ljava/lang/String;

    .line 261
    return-object p0
.end method
