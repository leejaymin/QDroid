.class public Lcom/rookiestudio/baseclass/TFileData;
.super Ljava/lang/Object;
.source "TFileData.java"


# instance fields
.field public FileDate:Ljava/util/Date;

.field public FileName:Ljava/lang/String;

.field public FileSize:J

.field public FolderName:Ljava/lang/String;

.field public FullFileName:Ljava/lang/String;

.field public Index:I

.field public IsEncrypted:Z

.field public IsFolder:Z

.field public IsHidden:Z

.field public IsRemote:Z

.field public ReadPage:I

.field public TotalPage:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v2, p0, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    iput-boolean v2, p0, Lcom/rookiestudio/baseclass/TFileData;->IsHidden:Z

    iput-boolean v2, p0, Lcom/rookiestudio/baseclass/TFileData;->IsEncrypted:Z

    .line 9
    iput-boolean v2, p0, Lcom/rookiestudio/baseclass/TFileData;->IsRemote:Z

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TFileData;->FolderName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 15
    iput v2, p0, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    .line 16
    iput v2, p0, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    .line 5
    return-void
.end method
