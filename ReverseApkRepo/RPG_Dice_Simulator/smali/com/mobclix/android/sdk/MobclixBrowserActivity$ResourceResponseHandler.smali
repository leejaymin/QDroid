.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;
.super Landroid/os/Handler;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResourceResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->runNextAsyncRequest()V

    .line 236
    return-void
.end method
