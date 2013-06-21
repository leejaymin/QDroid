.class Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener$1;
.super Ljava/lang/Object;
.source "ATFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;


# direct methods
.method constructor <init>(Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener$1;->this$1:Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener$1;->this$1:Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;

    #getter for: Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;
    invoke-static {v0}, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->access$0(Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;)Lcom/addthis/core/sharer/ATFacebook;

    move-result-object v0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->stopProgressDialog()V

    .line 175
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener$1;->this$1:Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;

    #getter for: Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->this$0:Lcom/addthis/core/sharer/ATFacebook;
    invoke-static {v0}, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;->access$0(Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;)Lcom/addthis/core/sharer/ATFacebook;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 176
    return-void
.end method
