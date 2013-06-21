.class public Lcom/pgmsoft/wifinder/KnownNetworks;
.super Ljava/lang/Object;
.source "KnownNetworks.java"


# instance fields
.field private connected:I

.field private main:Lcom/pgmsoft/wifinder/scan;

.field private menu_setup:Z

.field private network_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private rowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pgmsoft/wifinder/RowList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pgmsoft/wifinder/scan;Landroid/net/wifi/WifiManager;Ljava/util/List;)V
    .locals 19
    .parameter "scan"
    .parameter "managerWifi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pgmsoft/wifinder/scan;",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/List",
            "<",
            "Lcom/pgmsoft/wifinder/RowList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, networkList:Ljava/util/List;,"Ljava/util/List<Lcom/pgmsoft/wifinder/RowList;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    .line 10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->menu_setup:Z

    .line 11
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->position:I

    .line 12
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->connected:I

    .line 13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    .line 14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    .line 17
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    .line 18
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    .line 19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    .line 21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    .line 22
    .local v18, size:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 39
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    new-instance v2, Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v4}, Lcom/pgmsoft/wifinder/scan;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040040

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x2710

    const/4 v11, 0x2

    const-string v12, "ON"

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .local v2, entry:Lcom/pgmsoft/wifinder/RowList;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v2           #entry:Lcom/pgmsoft/wifinder/RowList;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v4}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 57
    return-void

    .line 23
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v4, :cond_2

    .line 24
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pgmsoft/wifinder/KnownNetworks;->connected:I

    .line 27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 29
    const/4 v6, 0x0

    .line 32
    .local v6, checkOpen:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .line 33
    .local v16, end:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v5, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, ssid:Ljava/lang/String;
    new-instance v2, Lcom/pgmsoft/wifinder/RowList;

    const/4 v4, 0x0

    const/16 v5, 0x2710

    const-string v7, "LIST"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v9}, Lcom/pgmsoft/wifinder/scan;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f040042

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .restart local v2       #entry:Lcom/pgmsoft/wifinder/RowList;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .end local v2           #entry:Lcom/pgmsoft/wifinder/RowList;
    .end local v3           #ssid:Ljava/lang/String;
    .end local v6           #checkOpen:I
    .end local v16           #end:I
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 31
    :cond_3
    const/4 v6, 0x1

    .restart local v6       #checkOpen:I
    goto :goto_2

    .line 40
    .end local v6           #checkOpen:I
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->connected:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 39
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 43
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 45
    const/4 v6, 0x0

    .line 48
    .restart local v6       #checkOpen:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .line 49
    .restart local v16       #end:I
    new-instance v2, Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v5, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x2710

    const-string v12, "LIST"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v4}, Lcom/pgmsoft/wifinder/scan;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v7, v2

    move v11, v6

    invoke-direct/range {v7 .. v15}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .restart local v2       #entry:Lcom/pgmsoft/wifinder/RowList;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 47
    .end local v2           #entry:Lcom/pgmsoft/wifinder/RowList;
    .end local v6           #checkOpen:I
    .end local v16           #end:I
    :cond_6
    const/4 v6, 0x1

    .restart local v6       #checkOpen:I
    goto :goto_4
.end method


# virtual methods
.method public checkSetupMenu()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->menu_setup:Z

    return v0
.end method

.method public deleteAll()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v1, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 90
    new-instance v0, Lcom/pgmsoft/wifinder/RowList;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/scan;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040040

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2710

    const/4 v4, 0x2

    const-string v5, "ON"

    const/4 v6, 0x0

    const-string v7, ""

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .local v0, entry:Lcom/pgmsoft/wifinder/RowList;
    iget-object v1, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 93
    return-void
.end method

.method public deleteCurrentPosition()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->rowList:Ljava/util/List;

    iget v1, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->main:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 86
    return-void
.end method

.method public getCurrentNetworkId()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->network_list:Ljava/util/List;

    iget v1, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 72
    iget v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->connected:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->position:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->connected:I

    iget v1, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->position:I

    if-ne v0, v1, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->position:I

    .line 69
    return-void
.end method

.method public setupMenuComplete()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pgmsoft/wifinder/KnownNetworks;->menu_setup:Z

    .line 61
    return-void
.end method
