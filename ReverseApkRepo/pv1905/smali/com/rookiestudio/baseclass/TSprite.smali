.class public Lcom/rookiestudio/baseclass/TSprite;
.super Ljava/lang/Object;
.source "TSprite.java"


# instance fields
.field public Alpha:I

.field public Height:I

.field public NeedClip:Z

.field public Visible:Z

.field public Width:I

.field public X:I

.field public Y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v1, p0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iput v1, p0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 5
    iput v1, p0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iput v1, p0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 6
    iput-boolean v1, p0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    .line 7
    iput-boolean v1, p0, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 3
    return-void
.end method


# virtual methods
.method public Clone(Lcom/rookiestudio/baseclass/TSprite;)V
    .locals 1
    .parameter "Source"

    .prologue
    .line 10
    iget v0, p1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    iput v0, p0, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 11
    iget v0, p1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    iput v0, p0, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 12
    iget v0, p1, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    iput v0, p0, Lcom/rookiestudio/baseclass/TSprite;->Alpha:I

    .line 13
    iget v0, p1, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    iput v0, p0, Lcom/rookiestudio/baseclass/TSprite;->Width:I

    .line 14
    iget v0, p1, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    iput v0, p0, Lcom/rookiestudio/baseclass/TSprite;->Height:I

    .line 15
    iget-boolean v0, p1, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    iput-boolean v0, p0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    .line 16
    iget-boolean v0, p1, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    iput-boolean v0, p0, Lcom/rookiestudio/baseclass/TSprite;->NeedClip:Z

    .line 17
    return-void
.end method
