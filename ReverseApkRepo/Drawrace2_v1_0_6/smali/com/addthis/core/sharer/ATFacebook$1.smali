.class Lcom/addthis/core/sharer/ATFacebook$1;
.super Ljava/lang/Object;
.source "ATFacebook.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/core/sharer/ATFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/core/sharer/ATFacebook;


# direct methods
.method constructor <init>(Lcom/addthis/core/sharer/ATFacebook;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 220
    const-string v1, "post_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, postId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    iget-object v3, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATShareActivity;

    .line 223
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v2, v2, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "successfully_posted"

    invoke-static {v2, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 222
    invoke-virtual {v1, v2}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 214
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 215
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 209
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 210
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$1;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 211
    return-void
.end method
