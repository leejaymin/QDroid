.class public Lcom/rookiestudio/baseclass/THistoryItem;
.super Ljava/lang/Object;
.source "THistoryItem.java"


# instance fields
.field public AddDate:Ljava/util/Date;

.field public FileName:Ljava/lang/String;

.field public FolderName:Ljava/lang/String;

.field public PageNo:I

.field public TargetFile:Ljava/io/File;

.field public TotalPage:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "FN"
    .parameter "FN2"
    .parameter "D"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/rookiestudio/baseclass/THistoryItem;->PageNo:I

    .line 21
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rookiestudio/baseclass/THistoryItem;->TargetFile:Ljava/io/File;

    .line 22
    return-void
.end method


# virtual methods
.method public FileExists()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/rookiestudio/baseclass/THistoryItem;->TargetFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public IsArchive()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
