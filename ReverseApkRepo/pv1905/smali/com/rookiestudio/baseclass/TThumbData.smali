.class public Lcom/rookiestudio/baseclass/TThumbData;
.super Ljava/lang/Object;
.source "TThumbData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public Bpp:I

.field public FileName:Ljava/lang/String;

.field public Height:I

.field public Index:J

.field public Size:I

.field public ThumbHeight:I

.field public ThumbImageData:[B

.field public ThumbWidth:I

.field public Width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TThumbData;->FileName:Ljava/lang/String;

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/baseclass/TThumbData;->Index:J

    .line 10
    iput v2, p0, Lcom/rookiestudio/baseclass/TThumbData;->Width:I

    .line 11
    iput v2, p0, Lcom/rookiestudio/baseclass/TThumbData;->Height:I

    .line 12
    iput v2, p0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbWidth:I

    .line 13
    iput v2, p0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbHeight:I

    .line 14
    iput v2, p0, Lcom/rookiestudio/baseclass/TThumbData;->Bpp:I

    .line 15
    iput v2, p0, Lcom/rookiestudio/baseclass/TThumbData;->Size:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    .line 6
    return-void
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, Result:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v1

    goto :goto_0

    .line 23
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/rookiestudio/baseclass/TThumbData;->FileName:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
