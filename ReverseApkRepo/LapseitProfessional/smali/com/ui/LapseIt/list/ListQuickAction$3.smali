.class Lcom/ui/LapseIt/list/ListQuickAction$3;
.super Ljava/lang/Object;
.source "ListQuickAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/list/ListQuickAction;->createConfirmWatchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/list/ListQuickAction;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/list/ListQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListQuickAction$3;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 360
    packed-switch p2, :pswitch_data_0

    .line 387
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 388
    return-void

    .line 363
    :pswitch_0
    iget-object v8, p0, Lcom/ui/LapseIt/list/ListQuickAction$3;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v8}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "filepath"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, filepath:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, extension:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 368
    :cond_0
    const-string v8, "\\."

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, extArray:[Ljava/lang/String;
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    aget-object v1, v2, v8

    .line 370
    .local v1, ext:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 371
    move-object v3, v1

    .line 375
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #extArray:[Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 376
    .local v7, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v5, i:Landroid/content/Intent;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :try_start_0
    iget-object v8, p0, Lcom/ui/LapseIt/list/ListQuickAction$3;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;
    invoke-static {v8}, Lcom/ui/LapseIt/list/ListQuickAction;->access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/ui/LapseIt/list/ListView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/ui/LapseIt/list/ListQuickAction$3;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    #calls: Lcom/ui/LapseIt/list/ListQuickAction;->buildNoVideoAlert()V
    invoke-static {v8}, Lcom/ui/LapseIt/list/ListQuickAction;->access$7(Lcom/ui/LapseIt/list/ListQuickAction;)V

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
