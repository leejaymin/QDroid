.class public Lcom/inmobi/androidsdk/IMAdRequest;
.super Ljava/lang/Object;
.source "IMAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/IMAdRequest$EducationType;,
        Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;,
        Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;,
        Lcom/inmobi/androidsdk/IMAdRequest$GenderType;,
        Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;
    }
.end annotation


# static fields
.field public static final ID_DEVICE_NONE:I = 0x1

.field public static final ID_DEVICE_ODIN_1:I = 0x2


# instance fields
.field private a:Z

.field private b:Landroid/location/Location;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Date;

.field private h:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

.field private m:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->a:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->d:Z

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:I

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->r:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public addIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_0
    return-void
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->n:I

    return v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->b:Landroid/location/Location;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/util/Date;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->g:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceIdMask()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:I

    return v0
.end method

.method public getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->l:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    return-object v0
.end method

.method public getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->m:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    return-object v0
.end method

.method public getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->h:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    return-object v0
.end method

.method public getIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->k:I

    return v0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->p:Ljava/util/Map;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isLocationInquiryAllowed()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->a:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->d:Z

    return v0
.end method

.method public removeIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)V
    .locals 1
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->n:I

    .line 407
    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->f:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setCurrentLocation(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->b:Landroid/location/Location;

    .line 172
    return-void
.end method

.method public setDateOfBirth(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->g:Ljava/util/Date;

    .line 274
    return-void
.end method

.method public setDeviceIDMask(I)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:I

    .line 459
    return-void
.end method

.method public setEducation(Lcom/inmobi/androidsdk/IMAdRequest$EducationType;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->l:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    .line 369
    return-void
.end method

.method public setEthnicity(Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->m:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    .line 388
    return-void
.end method

.method public setGender(Lcom/inmobi/androidsdk/IMAdRequest$GenderType;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->h:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    .line 293
    return-void
.end method

.method public setIncome(I)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->k:I

    .line 350
    return-void
.end method

.method public setInterests(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->o:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->i:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setLocationInquiryAllowed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->a:Z

    .line 153
    return-void
.end method

.method public setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->c:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->e:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->p:Ljava/util/Map;

    .line 446
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->j:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->d:Z

    .line 217
    return-void
.end method
