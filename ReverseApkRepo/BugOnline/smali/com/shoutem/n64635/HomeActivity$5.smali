.class Lcom/shoutem/n64635/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shoutem/n64635/HomeActivity;->runWithAssets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shoutem/n64635/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shoutem/n64635/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity$5;->this$0:Lcom/shoutem/n64635/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$5;->this$0:Lcom/shoutem/n64635/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/shoutem/n64635/HomeActivity;->adLoadInProgress:Z
    invoke-static {v0, v1}, Lcom/shoutem/n64635/HomeActivity;->access$202(Lcom/shoutem/n64635/HomeActivity;Z)Z

    .line 573
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$5;->this$0:Lcom/shoutem/n64635/HomeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/shoutem/n64635/HomeActivity;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/shoutem/n64635/HomeActivity;->access$302(Lcom/shoutem/n64635/HomeActivity;Z)Z

    .line 574
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$5;->this$0:Lcom/shoutem/n64635/HomeActivity;

    #getter for: Lcom/shoutem/n64635/HomeActivity;->adViewShouldShow:Z
    invoke-static {v0}, Lcom/shoutem/n64635/HomeActivity;->access$400(Lcom/shoutem/n64635/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$5;->this$0:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v0}, Lcom/shoutem/n64635/HomeActivity;->doShowAdvertisement()V

    .line 577
    :cond_0
    return-void
.end method
