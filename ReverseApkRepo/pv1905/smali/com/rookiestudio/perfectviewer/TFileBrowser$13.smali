.class Lcom/rookiestudio/perfectviewer/TFileBrowser$13;
.super Ljava/lang/Object;
.source "TFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;->RenameFile(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Parent:Landroid/app/Activity;

.field private final synthetic val$TargetFile:Ljava/io/File;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$Parent:Landroid/app/Activity;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$TargetFile:Ljava/io/File;

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v8, 0x7f0a0095

    const/4 v7, 0x0

    .line 833
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, NewFileName:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 835
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$Parent:Landroid/app/Activity;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 857
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$TargetFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, ParentFloder:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 841
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, NewFile:Ljava/io/File;
    :goto_1
    const-string v4, "perfectviewer"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$TargetFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$TargetFile:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 847
    .local v3, result:Z
    if-eqz v3, :cond_3

    .line 848
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v6, 0x7f0a0094

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 849
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$Parent:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TFileBrowser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 850
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$Parent:Landroid/app/Activity;

    check-cast v4, Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->FolderRefresh()V

    goto :goto_0

    .line 843
    .end local v0           #NewFile:Ljava/io/File;
    .end local v3           #result:Z
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #NewFile:Ljava/io/File;
    goto :goto_1

    .line 852
    .restart local v3       #result:Z
    :cond_2
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$13;->val$Parent:Landroid/app/Activity;

    check-cast v4, Lcom/rookiestudio/perfectviewer/TBookshelf;

    sget-boolean v5, Lcom/rookiestudio/perfectviewer/Config;->IncrementalScan:Z

    invoke-virtual {v4, v5}, Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfRefresh(Z)V

    goto/16 :goto_0

    .line 855
    :cond_3
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
