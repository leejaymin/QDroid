.class public Lcom/rookiestudio/baseclass/TThumbToLoad;
.super Ljava/lang/Object;
.source "TThumbToLoad.java"


# instance fields
.field public FileName:Ljava/lang/String;

.field public FileOrder:I

.field public FileSize:I

.field public ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

.field public imageInfo:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1
    .parameter "FN"
    .parameter "o"
    .parameter "i"
    .parameter "f"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    .line 17
    iput-object p1, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    .line 19
    iput-object p3, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->imageView:Landroid/widget/ImageView;

    .line 20
    iput-object p4, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->imageInfo:Landroid/widget/TextView;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1
    .parameter "FN"
    .parameter "i"
    .parameter "f"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    .line 23
    iput-object p1, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    .line 25
    iput-object p2, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->imageView:Landroid/widget/ImageView;

    .line 26
    iput-object p3, p0, Lcom/rookiestudio/baseclass/TThumbToLoad;->imageInfo:Landroid/widget/TextView;

    .line 27
    return-void
.end method
