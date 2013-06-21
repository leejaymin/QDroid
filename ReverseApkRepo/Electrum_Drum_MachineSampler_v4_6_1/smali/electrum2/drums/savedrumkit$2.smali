.class Lelectrum2/drums/savedrumkit$2;
.super Ljava/lang/Object;
.source "savedrumkit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/savedrumkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/savedrumkit;


# direct methods
.method constructor <init>(Lelectrum2/drums/savedrumkit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/savedrumkit$2;->this$0:Lelectrum2/drums/savedrumkit;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 204
    :try_start_0
    sget-object v0, Lelectrum2/drums/globalSounds;->kitsavesubfolder:Ljava/lang/String;

    .line 206
    .local v0, Test:Ljava/lang/String;
    iget-object v5, p0, Lelectrum2/drums/savedrumkit$2;->this$0:Lelectrum2/drums/savedrumkit;

    iget-object v5, v5, Lelectrum2/drums/savedrumkit;->patternname:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, newPatternName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/electrum/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, TestFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 234
    :cond_0
    iget-object v5, p0, Lelectrum2/drums/savedrumkit$2;->this$0:Lelectrum2/drums/savedrumkit;

    iget-object v5, v5, Lelectrum2/drums/savedrumkit;->patternname:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v5, p0, Lelectrum2/drums/savedrumkit$2;->this$0:Lelectrum2/drums/savedrumkit;

    #calls: Lelectrum2/drums/savedrumkit;->ShowKitFiles()V
    invoke-static {v5}, Lelectrum2/drums/savedrumkit;->access$0(Lelectrum2/drums/savedrumkit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0           #Test:Ljava/lang/String;
    .end local v1           #TestFile:Ljava/io/File;
    .end local v3           #newPatternName:Ljava/lang/String;
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v2

    .line 244
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lelectrum2/drums/savedrumkit$2;->this$0:Lelectrum2/drums/savedrumkit;

    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error deleting - \r\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 246
    .local v4, temptoast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
