.class Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rookiestudio/perfectviewer/TFileBrowser$15;

.field private final synthetic val$TargetFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser$15;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;->this$1:Lcom/rookiestudio/perfectviewer/TFileBrowser$15;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;->val$TargetFile:Ljava/io/File;

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0xb

    const/16 v2, 0xa

    .line 887
    const-string v3, "perfectviewer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Delete File:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;->val$TargetFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 889
    .local v0, Result:Ljava/lang/Long;
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;->val$TargetFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 890
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;->val$TargetFile:Ljava/io/File;

    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TUtility;->DeleteFolder(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 894
    :goto_1
    return-object v0

    :cond_0
    move v1, v2

    .line 890
    goto :goto_0

    .line 892
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;->val$TargetFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
