.class public Lcom/addthis/models/ATShareItem;
.super Ljava/lang/Object;
.source "ATShareItem.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDoesContainImage:Ljava/lang/Boolean;

.field private mImage:Landroid/graphics/Bitmap;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/models/ATShareItem;->mDoesContainImage:Ljava/lang/Boolean;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "title"
    .parameter "description"
    .parameter "image"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/addthis/models/ATShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "title"
    .parameter "description"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/addthis/models/ATShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "url"
    .parameter "title"
    .parameter "description"
    .parameter "image"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/models/ATShareItem;->mDoesContainImage:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p0, p1}, Lcom/addthis/models/ATShareItem;->setUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/addthis/models/ATShareItem;->setTitle(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p3}, Lcom/addthis/models/ATShareItem;->setDescription(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p4}, Lcom/addthis/models/ATShareItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method


# virtual methods
.method public doesContainBitmapImage()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/addthis/models/ATShareItem;->mDoesContainImage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/addthis/models/ATShareItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/addthis/models/ATShareItem;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addthis/models/ATShareItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/addthis/models/ATShareItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/addthis/models/ATShareItem;->mDescription:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/models/ATShareItem;->mDoesContainImage:Ljava/lang/Boolean;

    .line 87
    :goto_0
    iput-object p1, p0, Lcom/addthis/models/ATShareItem;->mImage:Landroid/graphics/Bitmap;

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/models/ATShareItem;->mDoesContainImage:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/addthis/models/ATShareItem;->mTitle:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/addthis/models/ATShareItem;->mUrl:Ljava/lang/String;

    .line 60
    return-void
.end method
