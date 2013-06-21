.class public Lcom/chillingo/crystal/CrystalVirtualGoods;
.super Ljava/lang/Object;


# static fields
.field private static _delegate:Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUnityDelegate(Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;)V
    .locals 0

    sput-object p0, Lcom/chillingo/crystal/CrystalVirtualGoods;->_delegate:Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;

    return-void
.end method


# virtual methods
.method public balances()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->playerData()Lcom/chillingo/crystal/serverdata/PlayerData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->balances()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected crystalPlayerUpdateFinished(Z)V
    .locals 3

    sget-object v0, Lcom/chillingo/crystal/CrystalVirtualGoods;->_delegate:Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/CrystalVirtualGoods;->_delegate:Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;

    invoke-virtual {p0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->goods()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->balances()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;->crystalVirtualGoodsInfoUpdated(ZLjava/util/Map;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public goods()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->playerData()Lcom/chillingo/crystal/serverdata/PlayerData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->goods()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public infoIsUptoDate()Z
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->updateState()Lcom/chillingo/crystal/PlayerUpdateState;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Updated:Lcom/chillingo/crystal/PlayerUpdateState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postBalances(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/chillingo/crystal/CrystalVirtualGoods;->postGoodsAndBalances(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public postGoods(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->postGoodsAndBalances(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public postGoodsAndBalances(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/chillingo/crystal/serverdata/PlayerData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chillingo/crystal/serverdata/PlayerData;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/serverdata/PlayerData;->setGoods(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/chillingo/crystal/serverdata/PlayerData;->setBalances(Ljava/util/Map;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/CrystalPlayer;->postPlayerData(Lcom/chillingo/crystal/serverdata/PlayerData;)V

    return-void
.end method

.method public setDelegate(Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;)V
    .locals 0

    sput-object p1, Lcom/chillingo/crystal/CrystalVirtualGoods;->_delegate:Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;

    return-void
.end method

.method public setLockedGoods(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->setLockedGoods(Ljava/util/Set;)V

    return-void
.end method

.method public startUpdating()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->startUpdating()V

    return-void
.end method

.method public updateNow()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->updatePlayerInfo()V

    return-void
.end method
