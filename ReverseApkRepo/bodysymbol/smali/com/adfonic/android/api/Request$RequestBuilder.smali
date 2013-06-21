.class public Lcom/adfonic/android/api/Request$RequestBuilder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adfonic/android/api/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestBuilder"
.end annotation


# instance fields
.field private request:Lcom/adfonic/android/api/Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/adfonic/android/api/Request;

    invoke-direct {v0}, Lcom/adfonic/android/api/Request;-><init>()V

    invoke-direct {p0, v0}, Lcom/adfonic/android/api/Request$RequestBuilder;-><init>(Lcom/adfonic/android/api/Request;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Lcom/adfonic/android/api/Request;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    .line 335
    return-void
.end method


# virtual methods
.method public build()Lcom/adfonic/android/api/Request;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    return-object v0
.end method

.method public withAge(I)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "age"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setAge(I)V

    .line 354
    return-object p0
.end method

.method public withAgeHigh(I)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "ageHigh"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setAgeHigh(I)V

    .line 364
    return-object p0
.end method

.method public withAgeLow(I)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "ageLow"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setAgeLow(I)V

    .line 374
    return-object p0
.end method

.method public withAgeRange(II)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "low"
    .parameter "high"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    #setter for: Lcom/adfonic/android/api/Request;->ageLow:I
    invoke-static {v0, p1}, Lcom/adfonic/android/api/Request;->access$002(Lcom/adfonic/android/api/Request;I)I

    .line 385
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    #setter for: Lcom/adfonic/android/api/Request;->ageHigh:I
    invoke-static {v0, p2}, Lcom/adfonic/android/api/Request;->access$102(Lcom/adfonic/android/api/Request;I)I

    .line 386
    return-object p0
.end method

.method public withAllowLocation(Z)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "allowLocation"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setAllowLocation(Z)V

    .line 456
    return-object p0
.end method

.method public withDateOfBirth(Ljava/lang/String;)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "dateOfBirth"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setDateOfBirth(Ljava/lang/String;)V

    .line 396
    return-object p0
.end method

.method public withIsMale(Z)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "isMale"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setMale(Z)V

    .line 406
    return-object p0
.end method

.method public withIsTest(Z)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "isTest"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setMale(Z)V

    .line 416
    return-object p0
.end method

.method public withLanguage(Ljava/lang/String;)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "language"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setLanguage(Ljava/lang/String;)V

    .line 426
    return-object p0
.end method

.method public withLocation(Landroid/location/Location;)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "location"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setLocation(Landroid/location/Location;)V

    .line 436
    return-object p0
.end method

.method public withRefreshAd(Z)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "isRefreshAd"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setRefreshAd(Z)V

    .line 476
    return-object p0
.end method

.method public withRefreshTime(I)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "refreshTime"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setRefreshTime(I)V

    .line 466
    return-object p0
.end method

.method public withSlotId(Ljava/lang/String;)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setSlotId(Ljava/lang/String;)V

    .line 344
    return-object p0
.end method

.method public withTags(Ljava/util/List;)Lcom/adfonic/android/api/Request$RequestBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adfonic/android/api/Request$RequestBuilder;"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/adfonic/android/api/Request$RequestBuilder;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/api/Request;->setTags(Ljava/util/List;)V

    .line 446
    return-object p0
.end method
