.class public Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;
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
    name = "FBUploadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/core/sharer/ATFacebook;


# direct methods
.method public constructor <init>(Lcom/addthis/core/sharer/ATFacebook;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;)Lcom/addthis/core/sharer/ATFacebook;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "state"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    new-instance v1, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener$1;

    invoke-direct {v1, p0}, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener$1;-><init>(Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;)V

    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 5
    .parameter "e"
    .parameter "state"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 144
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 5
    .parameter "e"
    .parameter "state"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 150
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 5
    .parameter "e"
    .parameter "state"

    .prologue
    .line 154
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 155
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 5
    .parameter "e"
    .parameter "state"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 162
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 164
    return-void
.end method
