.class Lcom/mopub/mobileads/MraidDisplayController$2;
.super Landroid/content/BroadcastReceiver;
.source "MraidDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastRotation:I

.field final synthetic this$0:Lcom/mopub/mobileads/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mopub/mobileads/MraidDisplayController$2;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController$2;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    #calls: Lcom/mopub/mobileads/MraidDisplayController;->getDisplayRotation()I
    invoke-static {v2}, Lcom/mopub/mobileads/MraidDisplayController;->access$200(Lcom/mopub/mobileads/MraidDisplayController;)I

    move-result v1

    .line 88
    .local v1, orientation:I
    iget v2, p0, Lcom/mopub/mobileads/MraidDisplayController$2;->mLastRotation:I

    if-eq v1, v2, :cond_0

    .line 89
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController$2;->mLastRotation:I

    .line 90
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController$2;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    iget v3, p0, Lcom/mopub/mobileads/MraidDisplayController$2;->mLastRotation:I

    #calls: Lcom/mopub/mobileads/MraidDisplayController;->onOrientationChanged(I)V
    invoke-static {v2, v3}, Lcom/mopub/mobileads/MraidDisplayController;->access$300(Lcom/mopub/mobileads/MraidDisplayController;I)V

    .line 93
    .end local v1           #orientation:I
    :cond_0
    return-void
.end method
