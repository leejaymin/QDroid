.class public Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;
.super Ljava/lang/Object;
.source "ATFacebook.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/core/sharer/ATFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBLogoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/core/sharer/ATFacebook;


# direct methods
.method public constructor <init>(Lcom/addthis/core/sharer/ATFacebook;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;)Lcom/addthis/core/sharer/ATFacebook;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "state"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/addthis/core/sharer/ATSessions;->clear(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    new-instance v1, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener$1;

    invoke-direct {v1, p0}, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener$1;-><init>(Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;)V

    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 5
    .parameter "e"
    .parameter "state"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 183
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 5
    .parameter "e"
    .parameter "state"

    .prologue
    .line 189
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 190
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 5
    .parameter "e"
    .parameter "state"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 196
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0
    .parameter "e"
    .parameter "state"

    .prologue
    .line 202
    return-void
.end method
