.class Lti/modules/titanium/media/MediaModule$1;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModule;->openPhotoGallery(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;

.field final synthetic val$fCancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field final synthetic val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field final synthetic val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/titanium/kroll/KrollCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    iput-object p2, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iput-object p3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iput-object p4, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 4
    .parameter "activity"
    .parameter "requestCode"
    .parameter "e"

    .prologue
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gallery problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v3, 0x0

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v2, v3, v0}, Lti/modules/titanium/media/MediaModule;->access$500(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    .line 457
    :cond_0
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v6, "TiMedia"

    .line 429
    const-string v3, "TiMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnResult called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-nez p3, :cond_1

    .line 431
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v3, :cond_0

    .line 432
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fCancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync()V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, path:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    const-string v5, "image/jpeg"

    invoke-virtual {v4, v2, v5}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 441
    .local v0, e:Ljava/lang/OutOfMemoryError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough memory to get image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, msg:Ljava/lang/String;
    const-string v3, "TiMedia"

    invoke-static {v6, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v3, :cond_0

    .line 444
    iget-object v3, p0, Lti/modules/titanium/media/MediaModule$1;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iget-object v4, p0, Lti/modules/titanium/media/MediaModule$1;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v5, 0x0

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v4, v5, v1}, Lti/modules/titanium/media/MediaModule;->access$400(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method
