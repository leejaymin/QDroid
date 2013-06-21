.class public Lcom/cauly/android/ad/AdData;
.super Ljava/lang/Object;
.source "AdData.java"


# instance fields
.field private adType:Ljava/lang/String;

.field private adsId:Ljava/lang/String;

.field private backgroundColor:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private eventUrl:Ljava/lang/String;

.field private image:Landroid/graphics/Bitmap;

.field private imageUrl:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private market:Ljava/lang/String;

.field private pay_type:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->adType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->adsId:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->eventUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->market:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->pay_type:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cauly/android/ad/AdData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->adType:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setAdsId(Ljava/lang/String;)V
    .locals 0
    .parameter "adsId"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->adsId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->backgroundColor:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->code:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setEventUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "eventUrl"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->eventUrl:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->image:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->imageUrl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->link:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMarket(Ljava/lang/String;)V
    .locals 0
    .parameter "market"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->market:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPay_type(Ljava/lang/String;)V
    .locals 0
    .parameter "payType"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->pay_type:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->text:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cauly/android/ad/AdData;->title:Ljava/lang/String;

    .line 42
    return-void
.end method
