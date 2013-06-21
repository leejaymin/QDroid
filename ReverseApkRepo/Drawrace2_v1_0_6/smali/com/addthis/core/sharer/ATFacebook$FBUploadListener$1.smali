.class Lcom/addthis/core/sharer/ATFacebook$FBUploadListener$1;
.super Ljava/lang/Object;
.source "ATFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;


# direct methods
.method constructor <init>(Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener$1;->this$1:Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener$1;->this$1:Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;

    #getter for: Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;
    invoke-static {v0}, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->access$0(Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;)Lcom/addthis/core/sharer/ATFacebook;

    move-result-object v2

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener$1;->this$1:Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;

    #getter for: Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;
    invoke-static {v0}, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->access$0(Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;)Lcom/addthis/core/sharer/ATFacebook;

    move-result-object v0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 135
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener$1;->this$1:Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;

    #getter for: Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;
    invoke-static {v1}, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;->access$0(Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;)Lcom/addthis/core/sharer/ATFacebook;

    move-result-object v1

    iget-object v1, v1, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "successfully_posted"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 137
    return-void
.end method
