.class Lti/modules/titanium/media/MediaModule$2;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModule;->previewImage(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;

.field final synthetic val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field final synthetic val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/titanium/kroll/KrollCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    iput-object p2, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iput-object p3, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

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
    .line 585
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

    .line 586
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$2;->val$fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$2;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v3, 0x0

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v2, v3, v0}, Lti/modules/titanium/media/MediaModule;->access$600(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    .line 590
    :cond_0
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 577
    const-string v0, "TiMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResult called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$2;->val$fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync()V

    .line 581
    :cond_0
    return-void
.end method
