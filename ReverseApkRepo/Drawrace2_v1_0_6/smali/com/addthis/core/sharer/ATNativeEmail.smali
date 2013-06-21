.class public Lcom/addthis/core/sharer/ATNativeEmail;
.super Lcom/addthis/core/sharer/ATSharer;
.source "ATNativeEmail.java"


# direct methods
.method public constructor <init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V
    .locals 0
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/addthis/core/sharer/ATSharer;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 37
    return-void
.end method


# virtual methods
.method public logoutSharer()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public share()V
    .locals 11

    .prologue
    .line 41
    const-string v6, "Email"

    const-string v7, "EMail share"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 44
    const-string v6, "android.intent.action.SEND"

    .line 43
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, emailIntent:Landroid/content/Intent;
    const-string v6, "plain/text"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v6, "android.intent.extra.SUBJECT"

    iget-object v7, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mItem:Lcom/addthis/models/ATShareItem;

    .line 47
    invoke-virtual {v7}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v6, "android.intent.extra.TEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mItem:Lcom/addthis/models/ATShareItem;

    .line 49
    invoke-virtual {v8}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v8}, Lcom/addthis/models/ATShareItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v6, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v6}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    const-string v6, "mounted"

    .line 55
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    iget-object v6, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/addthis/ui/activities/ATShareActivity;

    iget-object v7, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    const-string v8, "string"

    const-string v9, "external_memory_for_image"

    invoke-static {v7, v8, v9}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/addthis/core/sharer/ATNativeEmail;->didCompleteShare(Ljava/lang/String;)V

    .line 83
    .end local v2           #emailIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 60
    .restart local v2       #emailIntent:Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v6}, Lcom/addthis/models/ATShareItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 61
    .local v5, image:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, bytes:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 66
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "emailAttachment.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 68
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v4, fo:Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 70
    const-string v6, "android.intent.extra.STREAM"

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 70
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    .end local v0           #bytes:Ljava/io/ByteArrayOutputStream;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #fo:Ljava/io/FileOutputStream;
    .end local v5           #image:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/addthis/ui/activities/ATShareActivity;

    .line 76
    iget-object v7, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/addthis/ui/activities/ATShareActivity;

    .line 77
    iget-object v8, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    const-string v9, "string"

    const-string v10, "send_email"

    invoke-static {v8, v9, v10}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 76
    invoke-virtual {v7, v8}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Lcom/addthis/ui/activities/ATShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v6, p0, Lcom/addthis/core/sharer/ATNativeEmail;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v6}, Lcom/addthis/ui/activities/ATShareActivity;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 80
    .end local v2           #emailIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public shareMessage(Landroid/os/Bundle;)V
    .locals 0
    .parameter "messageValues"

    .prologue
    .line 88
    return-void
.end method
