.class Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
.super Lcom/rookiestudio/baseclass/TThumbData;
.source "TBookshelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TBookshelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TBookData"
.end annotation


# instance fields
.field public BookCate:Ljava/lang/String;

.field public InDatabase:Z

.field public IsDirectory:Z

.field public IsFolder:Z

.field public ReadPage:I

.field public Title:Ljava/lang/String;

.field public TotalPage:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-direct {p0}, Lcom/rookiestudio/baseclass/TThumbData;-><init>()V

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->Title:Ljava/lang/String;

    .line 402
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    .line 403
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsFolder:Z

    .line 404
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->InDatabase:Z

    .line 405
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    .line 406
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->TotalPage:I

    .line 398
    return-void
.end method
