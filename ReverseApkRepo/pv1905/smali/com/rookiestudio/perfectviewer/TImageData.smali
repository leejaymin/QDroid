.class public Lcom/rookiestudio/perfectviewer/TImageData;
.super Ljava/lang/Object;
.source "TImageData.java"


# instance fields
.field CurrentPage:I

.field FileName:Ljava/lang/String;

.field FileOrder:I

.field Height:I

.field Height2:I

.field Page1Height:I

.field Page1Width:I

.field Page2Height:I

.field Page2Width:I

.field PageIndex:I

.field ScaledHeight:I

.field ScaledWidth:I

.field Target:I

.field Width:I

.field Width2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LoadCompleted()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page1Width:I

    .line 23
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page1Height:I

    .line 24
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page2Width:I

    .line 25
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page2Height:I

    .line 26
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledWidth:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Width2:I

    .line 27
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledHeight:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Height2:I

    .line 28
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 29
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page2Width:I

    .line 30
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledHeight:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page2Height:I

    .line 31
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledWidth:I

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page2Width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page1Width:I

    .line 32
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->ScaledHeight:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page1Height:I

    .line 33
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page1Width:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Width2:I

    .line 34
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Page1Height:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->Height2:I

    .line 35
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->CurrentPage:I

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageData;->CurrentPage:I

    .line 39
    :cond_0
    return-void
.end method
