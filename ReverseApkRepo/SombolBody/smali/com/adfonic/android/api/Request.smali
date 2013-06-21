.class public Lcom/adfonic/android/api/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adfonic/android/api/Request$RequestBuilder;
    }
.end annotation


# static fields
.field public static final ALLOW_LOCATION_DEFAULT_VALUE:Z = true

.field public static final REFRESH_DEFAULT_VALUE:Z = true

.field public static final REFRESH_TIME_DEFAULT_VALUE:I = 0x14

.field public static final TEST_MODE_DEFAULT_VALUE:Z


# instance fields
.field private adHeight:F

.field private adWidth:F

.field private age:I

.field private ageHigh:I

.field private ageLow:I

.field private dateOfBirth:Ljava/lang/String;

.field private hasGender:Z

.field private isAllowLocation:Z

.field private isMale:Z

.field private isRefreshAd:Z

.field private isTest:Z

.field private language:Ljava/lang/String;

.field private location:Landroid/location/Location;

.field private refreshTime:I

.field private slotId:Ljava/lang/String;

.field private tags:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/adfonic/android/api/Request;->isRefreshAd:Z

    .line 22
    const/16 v0, 0x14

    iput v0, p0, Lcom/adfonic/android/api/Request;->refreshTime:I

    .line 23
    iput-boolean v1, p0, Lcom/adfonic/android/api/Request;->isAllowLocation:Z

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/adfonic/android/api/Request;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/adfonic/android/api/Request;->ageLow:I

    return p1
.end method

.method static synthetic access$102(Lcom/adfonic/android/api/Request;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/adfonic/android/api/Request;->ageHigh:I

    return p1
.end method


# virtual methods
.method public getAdHeight()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/adfonic/android/api/Request;->adHeight:F

    return v0
.end method

.method public getAdWidth()F
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/adfonic/android/api/Request;->adWidth:F

    return v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/adfonic/android/api/Request;->age:I

    return v0
.end method

.method public getAgeHigh()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/adfonic/android/api/Request;->ageHigh:I

    return v0
.end method

.method public getAgeLow()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/adfonic/android/api/Request;->ageLow:I

    return v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adfonic/android/api/Request;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adfonic/android/api/Request;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adfonic/android/api/Request;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getRefreshTime()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/adfonic/android/api/Request;->refreshTime:I

    return v0
.end method

.method public getSlotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adfonic/android/api/Request;->slotId:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adfonic/android/api/Request;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hasGender()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/adfonic/android/api/Request;->hasGender:Z

    return v0
.end method

.method public isAllowLocation()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/adfonic/android/api/Request;->isAllowLocation:Z

    return v0
.end method

.method public isMale()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/adfonic/android/api/Request;->isMale:Z

    return v0
.end method

.method public isRefreshAd()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/adfonic/android/api/Request;->isRefreshAd:Z

    return v0
.end method

.method public isTest()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/adfonic/android/api/Request;->isTest:Z

    return v0
.end method

.method public setAdHeight(F)V
    .locals 0
    .parameter "adHeight"

    .prologue
    .line 295
    iput p1, p0, Lcom/adfonic/android/api/Request;->adHeight:F

    .line 296
    return-void
.end method

.method public setAdWidth(F)V
    .locals 0
    .parameter "adWidth"

    .prologue
    .line 311
    iput p1, p0, Lcom/adfonic/android/api/Request;->adWidth:F

    .line 312
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .parameter "age"

    .prologue
    .line 124
    iput p1, p0, Lcom/adfonic/android/api/Request;->age:I

    .line 125
    return-void
.end method

.method public setAgeHigh(I)V
    .locals 0
    .parameter "ageHigh"

    .prologue
    .line 189
    iput p1, p0, Lcom/adfonic/android/api/Request;->ageHigh:I

    .line 190
    return-void
.end method

.method public setAgeLow(I)V
    .locals 0
    .parameter "ageLow"

    .prologue
    .line 173
    iput p1, p0, Lcom/adfonic/android/api/Request;->ageLow:I

    .line 174
    return-void
.end method

.method public setAllowLocation(Z)V
    .locals 0
    .parameter "isAllowLocation"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/adfonic/android/api/Request;->isAllowLocation:Z

    .line 222
    return-void
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0
    .parameter "dateOfBirth"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adfonic/android/api/Request;->dateOfBirth:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setHasGender(Z)V
    .locals 0
    .parameter "hasGender"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/adfonic/android/api/Request;->hasGender:Z

    .line 280
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/adfonic/android/api/Request;->language:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/adfonic/android/api/Request;->location:Landroid/location/Location;

    .line 198
    return-void
.end method

.method public setMale(Z)V
    .locals 1
    .parameter "isMale"

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adfonic/android/api/Request;->hasGender:Z

    .line 157
    iput-boolean p1, p0, Lcom/adfonic/android/api/Request;->isMale:Z

    .line 158
    return-void
.end method

.method public setRefreshAd(Z)V
    .locals 0
    .parameter "isRefreshAd"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/adfonic/android/api/Request;->isRefreshAd:Z

    .line 238
    return-void
.end method

.method public setRefreshTime(I)V
    .locals 2
    .parameter "refreshTime"

    .prologue
    const/16 v1, 0x78

    const/16 v0, 0x14

    .line 254
    if-ge p1, v0, :cond_0

    .line 255
    iput v0, p0, Lcom/adfonic/android/api/Request;->refreshTime:I

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    if-le p1, v1, :cond_1

    .line 259
    iput v1, p0, Lcom/adfonic/android/api/Request;->refreshTime:I

    goto :goto_0

    .line 262
    :cond_1
    iput p1, p0, Lcom/adfonic/android/api/Request;->refreshTime:I

    goto :goto_0
.end method

.method public setSlotId(Ljava/lang/String;)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/adfonic/android/api/Request;->slotId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/adfonic/android/api/Request;->tags:Ljava/util/List;

    .line 93
    return-void
.end method

.method public setTest(Z)V
    .locals 0
    .parameter "isTest"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/adfonic/android/api/Request;->isTest:Z

    .line 77
    return-void
.end method
