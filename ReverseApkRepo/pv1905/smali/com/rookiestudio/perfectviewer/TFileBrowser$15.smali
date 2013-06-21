.class Lcom/rookiestudio/perfectviewer/TFileBrowser$15;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->DeleteFile(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Parent:Landroid/app/Activity;

.field private final synthetic val$TargetFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15;->val$Parent:Landroid/app/Activity;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15;->val$TargetFile:Ljava/io/File;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 883
    new-instance v0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15;->val$Parent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15;->val$Parent:Landroid/app/Activity;

    check-cast v1, Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;-><init>(Landroid/content/Context;Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;I)V

    .line 884
    .local v0, LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;,"Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher<Ljava/lang/Long;>;"
    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$15;->val$TargetFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser$15$1;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser$15;Ljava/io/File;)V

    .line 896
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 884
    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    return-void
.end method
