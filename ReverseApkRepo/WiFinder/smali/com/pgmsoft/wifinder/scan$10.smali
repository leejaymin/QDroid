.class Lcom/pgmsoft/wifinder/scan$10;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->showDialogNetwork(Ljava/lang/Object;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/scan;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/scan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x0

    #setter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$32(Lcom/pgmsoft/wifinder/scan;Landroid/net/wifi/WifiConfiguration;)V

    .line 525
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$8(Lcom/pgmsoft/wifinder/scan;Ljava/util/List;)V

    .line 526
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;
    invoke-static {v0}, Lcom/pgmsoft/wifinder/scan;->access$33(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/KnownNetworks;

    move-result-object v0

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->current_selected_position:I
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$34(Lcom/pgmsoft/wifinder/scan;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/KnownNetworks;->setPosition(I)V

    .line 527
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$33(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/KnownNetworks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/KnownNetworks;->isConnected()Z

    move-result v1

    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$33(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/KnownNetworks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pgmsoft/wifinder/KnownNetworks;->getCurrentNetworkId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pgmsoft/wifinder/scan;->forgetNerwork(ZIZ)V

    .line 528
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$10;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;
    invoke-static {v0}, Lcom/pgmsoft/wifinder/scan;->access$33(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/KnownNetworks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/KnownNetworks;->deleteCurrentPosition()V

    .line 529
    return-void
.end method
