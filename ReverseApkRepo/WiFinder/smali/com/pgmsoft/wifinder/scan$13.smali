.class Lcom/pgmsoft/wifinder/scan$13;
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

.field private final synthetic val$passwd:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/scan;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    iput-object p2, p0, Lcom/pgmsoft/wifinder/scan$13;->val$passwd:Landroid/widget/EditText;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 649
    const/4 v3, -0x1

    .line 650
    .local v3, netId:I
    const/4 v4, 0x0

    .line 651
    .local v4, priority:I
    const/4 v0, -0x1

    .line 654
    .local v0, actualNetId:I
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 655
    .local v2, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 657
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$9(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 670
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->connected:Z
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$35(Lcom/pgmsoft/wifinder/scan;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 671
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v6}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$12(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 672
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 673
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;
    invoke-static {v6}, Lcom/pgmsoft/wifinder/scan;->access$37(Lcom/pgmsoft/wifinder/scan;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Lcom/pgmsoft/wifinder/scan;->GorneInfo(ILjava/lang/String;)V

    .line 766
    :goto_1
    return-void

    .line 661
    :cond_0
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$9(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 663
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$9(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v5, v4, :cond_1

    .line 666
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$9(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v4, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 657
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    :cond_2
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_8

    .line 677
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #setter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$32(Lcom/pgmsoft/wifinder/scan;Landroid/net/wifi/WifiConfiguration;)V

    .line 678
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    iget-object v7, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v7}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 680
    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 678
    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 681
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 686
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput v11, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 687
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pgmsoft/wifinder/RowList;->getEncrypt()Ljava/lang/String;

    move-result-object v5

    .line 688
    const-string v6, ""

    .line 687
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 690
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 718
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v6}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 736
    :cond_4
    :goto_3
    if-eq v3, v10, :cond_a

    .line 743
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #setter for: Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I
    invoke-static {v5, v3}, Lcom/pgmsoft/wifinder/scan;->access$7(Lcom/pgmsoft/wifinder/scan;I)V

    .line 744
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v6}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/pgmsoft/wifinder/scan;->tmpSSID:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$5(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 745
    if-eq v0, v10, :cond_9

    .line 748
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->prevNetworkConnected:Ljava/lang/String;
    invoke-static {v6}, Lcom/pgmsoft/wifinder/scan;->access$39(Lcom/pgmsoft/wifinder/scan;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$12(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 749
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_1

    .line 695
    :cond_5
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pgmsoft/wifinder/RowList;->getEncrypt()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WEP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 696
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    .line 697
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 698
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    .line 699
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 700
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->val$passwd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    goto/16 :goto_2

    .line 703
    :cond_6
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pgmsoft/wifinder/RowList;->getEncrypt()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WPA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 704
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pgmsoft/wifinder/RowList;->getEncrypt()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EAP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 705
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error WPA-EAP not supported "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v7}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pgmsoft/wifinder/scan;->niceToast(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 708
    :cond_7
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 709
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    .line 710
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v12}, Ljava/util/BitSet;->set(I)V

    .line 711
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v11}, Ljava/util/BitSet;->set(I)V

    .line 712
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pgmsoft/wifinder/scan$13;->val$passwd:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 721
    :cond_8
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget v3, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 722
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v5, v4, :cond_4

    .line 727
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 728
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v6}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto/16 :goto_3

    .line 753
    :cond_9
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;
    invoke-static {v6}, Lcom/pgmsoft/wifinder/scan;->access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$12(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 758
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v5, v6}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 759
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto/16 :goto_1

    .line 762
    :cond_a
    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$13;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v7, 0x7f04002b

    invoke-virtual {v6, v7}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pgmsoft/wifinder/scan;->niceToast(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1
.end method
