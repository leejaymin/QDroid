.class Lcom/shoutem/n64635/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;


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
    .line 579
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity$6;->this$0:Lcom/shoutem/n64635/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdFailed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$6;->this$0:Lcom/shoutem/n64635/HomeActivity;

    #setter for: Lcom/shoutem/n64635/HomeActivity;->adLoadInProgress:Z
    invoke-static {v0, v1}, Lcom/shoutem/n64635/HomeActivity;->access$202(Lcom/shoutem/n64635/HomeActivity;Z)Z

    .line 583
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$6;->this$0:Lcom/shoutem/n64635/HomeActivity;

    #setter for: Lcom/shoutem/n64635/HomeActivity;->adLoaded:Z
    invoke-static {v0, v1}, Lcom/shoutem/n64635/HomeActivity;->access$302(Lcom/shoutem/n64635/HomeActivity;Z)Z

    .line 584
    return-void
.end method
