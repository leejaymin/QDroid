.class public Lcom/addthis/models/ATService;
.super Ljava/lang/Object;
.source "ATService.java"


# instance fields
.field private mCode:Ljava/lang/String;

.field private mImage:Landroid/graphics/Bitmap;

.field private mImageUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "name"
    .parameter "code"
    .parameter "imageUrl"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/addthis/models/ATService;->mName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/addthis/models/ATService;->mCode:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/addthis/models/ATService;->mImage:Landroid/graphics/Bitmap;

    .line 24
    iput-object v0, p0, Lcom/addthis/models/ATService;->mImageUrl:Ljava/lang/String;

    .line 27
    invoke-direct {p0, p2}, Lcom/addthis/models/ATService;->setCode(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/addthis/models/ATService;->setName(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p3}, Lcom/addthis/models/ATService;->setImageUrl(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p4}, Lcom/addthis/models/ATService;->setImage(Landroid/graphics/Bitmap;)V

    .line 31
    return-void
.end method

.method private setCode(Ljava/lang/String;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/models/ATService;->mCode:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/addthis/models/ATService;->mCode:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/addthis/models/ATService;->mImageUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/models/ATService;->mName:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/addthis/models/ATService;->mName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/addthis/models/ATService;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/addthis/models/ATService;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/addthis/models/ATService;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/addthis/models/ATService;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/models/ATService;->mImage:Landroid/graphics/Bitmap;

    .line 47
    iput-object p1, p0, Lcom/addthis/models/ATService;->mImage:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method
