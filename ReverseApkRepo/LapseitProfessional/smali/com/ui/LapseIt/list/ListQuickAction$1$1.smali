.class Lcom/ui/LapseIt/list/ListQuickAction$1$1;
.super Ljava/lang/Object;
.source "ListQuickAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/list/ListQuickAction$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

.field private final synthetic val$zipDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/list/ListQuickAction$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListQuickAction$1$1;->this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

    iput-object p2, p0, Lcom/ui/LapseIt/list/ListQuickAction$1$1;->val$zipDir:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 147
    :try_start_0
    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction$1$1;->val$zipDir:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ui/LapseIt/list/ListQuickAction$1$1;->val$zipDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/package.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lui/utils/NetworkUtils;->zipDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 148
    .local v3, zipFile:Ljava/io/File;
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Zip criado em "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v2, shareIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v4, "application/zip"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction$1$1;->this$1:Lcom/ui/LapseIt/list/ListQuickAction$1;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction$1;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;
    invoke-static {v4}, Lcom/ui/LapseIt/list/ListQuickAction$1;->access$1(Lcom/ui/LapseIt/list/ListQuickAction$1;)Lcom/ui/LapseIt/list/ListQuickAction;

    move-result-object v4

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static {v4}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v4

    const-string v5, "Where to send the zip file?"

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ui/LapseIt/list/ListView;->startActivity(Landroid/content/Intent;)V

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 163
    .end local v2           #shareIntent:Landroid/content/Intent;
    .end local v3           #zipFile:Ljava/io/File;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e1:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0           #e1:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 159
    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v0           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 161
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
