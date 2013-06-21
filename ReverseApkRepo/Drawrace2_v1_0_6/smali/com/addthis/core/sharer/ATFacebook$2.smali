.class Lcom/addthis/core/sharer/ATFacebook$2;
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
    iput-object p1, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    #getter for: Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;
    invoke-static {v0}, Lcom/addthis/core/sharer/ATFacebook;->access$0(Lcom/addthis/core/sharer/ATFacebook;)Lcom/facebook/android/Facebook;

    move-result-object v1

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/addthis/core/sharer/ATSessions;->save(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 251
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    #calls: Lcom/addthis/core/sharer/ATFacebook;->postOnWall()V
    invoke-static {v0}, Lcom/addthis/core/sharer/ATFacebook;->access$1(Lcom/addthis/core/sharer/ATFacebook;)V

    .line 252
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 246
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 241
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$2;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 242
    return-void
.end method
