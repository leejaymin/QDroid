.class Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList$2;
.super Ljava/lang/Object;
.source "TFolderSelector.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->SetFolder(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList$2;->this$1:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "pathname"

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
