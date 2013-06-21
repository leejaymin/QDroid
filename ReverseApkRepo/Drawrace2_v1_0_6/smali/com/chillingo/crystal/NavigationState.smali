.class public Lcom/chillingo/crystal/NavigationState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/NavigationState$ScreenState;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _currentTab:Ljava/lang/String;

.field private _currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

.field private _navigationBar:Lcom/chillingo/crystal/serverdata/UIDescription;

.field private _pendingConfirmedUrl:Ljava/lang/String;

.field private _pendingTab:Ljava/lang/String;

.field private _pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

.field private _pendingUrl:Ljava/lang/String;

.field private _preloadTab:Ljava/lang/String;

.field private _preloadUrl:Ljava/lang/String;

.field private _suppressPopOnDialogClose:Z

.field private _urlStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/NavigationState$ScreenState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/NavigationState;->_suppressPopOnDialogClose:Z

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_currentTab:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_urlStack:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;Ljava/lang/String;Ljava/lang/String;ZLcom/chillingo/crystal/serverdata/UIDescription;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/NavigationState;->_suppressPopOnDialogClose:Z

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_currentTab:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_urlStack:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/NavigationState;->setPendingConfirmedUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/chillingo/crystal/NavigationState;->setPendingUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    invoke-virtual {p0, p3}, Lcom/chillingo/crystal/NavigationState;->setPendingTab(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/chillingo/crystal/NavigationState;->setPendingUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/chillingo/crystal/NavigationState;->setSuppressPopOnDialogClose(Z)V

    invoke-virtual {p0, p6}, Lcom/chillingo/crystal/NavigationState;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {p0, p7}, Lcom/chillingo/crystal/NavigationState;->setCurrentTab(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/chillingo/crystal/NavigationState;->setPreloadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p9}, Lcom/chillingo/crystal/NavigationState;->setNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v0, v1}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chillingo/crystal/NavigationState;->_suppressPopOnDialogClose:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_currentTab:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_navigationBar:Lcom/chillingo/crystal/serverdata/UIDescription;

    :goto_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_urlStack:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_8

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState$ScreenState;

    iget-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_urlStack:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1
    iput-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error creating ui element from json"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    goto/16 :goto_1

    :cond_3
    iput-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    iput-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    iput-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    iput-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    goto/16 :goto_5

    :cond_7
    iput-object v3, p0, Lcom/chillingo/crystal/NavigationState;->_navigationBar:Lcom/chillingo/crystal/serverdata/UIDescription;

    goto :goto_6

    :cond_8
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-ne v0, v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    if-ne v0, v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_5
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    if-ne v0, v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_7
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    if-nez v0, :cond_a

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_9
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v1

    :goto_a
    if-ne v0, v1, :cond_c

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_b
    iget-boolean v0, p0, Lcom/chillingo/crystal/NavigationState;->_suppressPopOnDialogClose:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_c
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_currentTab:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_navigationBar:Lcom/chillingo/crystal/serverdata/UIDescription;

    if-eqz v0, :cond_e

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_navigationBar:Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_urlStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_e
    if-ge v2, v0, :cond_f

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationState;->_urlStack:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_9

    :cond_b
    move v0, v2

    goto :goto_a

    :cond_c
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_b

    :cond_d
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_c

    :cond_e
    move v0, v2

    goto :goto_d

    :cond_f
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 10

    new-instance v0, Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->pendingConfirmedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->pendingUIElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->pendingTab()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->pendingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->suppressPopOnDialogClose()Z

    move-result v5

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v6

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->currentTab()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->preloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationState;->navigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/chillingo/crystal/NavigationState;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;Ljava/lang/String;Ljava/lang/String;ZLcom/chillingo/crystal/serverdata/UIDescription;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIDescription;)V

    return-object v0
.end method

.method public currentTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_currentTab:Ljava/lang/String;

    return-object v0
.end method

.method public currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-object v0
.end method

.method public navigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_navigationBar:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-object v0
.end method

.method public pendingConfirmedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public pendingTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    return-object v0
.end method

.method public pendingUIElement()Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    return-object v0
.end method

.method public pendingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public preloadTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    return-object v0
.end method

.method public preloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setPendingConfirmedUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setPendingUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setPendingTab(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setPendingUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/NavigationState;->setSuppressPopOnDialogClose(Z)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setCurrentTab(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setPreloadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationState;->setNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    return-void
.end method

.method public setCurrentTab(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_currentTab:Ljava/lang/String;

    return-void
.end method

.method public setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_currentUIDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-void
.end method

.method public setNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_navigationBar:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-void
.end method

.method public setPendingConfirmedUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingConfirmedUrl:Ljava/lang/String;

    return-void
.end method

.method public setPendingTab(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingTab:Ljava/lang/String;

    return-void
.end method

.method public setPendingUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUIElement:Lcom/chillingo/crystal/serverdata/UIElement;

    return-void
.end method

.method public setPendingUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_pendingUrl:Ljava/lang/String;

    return-void
.end method

.method public setPreloadTab(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_preloadTab:Ljava/lang/String;

    return-void
.end method

.method public setPreloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationState;->_preloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setSuppressPopOnDialogClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/NavigationState;->_suppressPopOnDialogClose:Z

    return-void
.end method

.method public suppressPopOnDialogClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/NavigationState;->_suppressPopOnDialogClose:Z

    return v0
.end method

.method public urlStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/NavigationState$ScreenState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationState;->_urlStack:Ljava/util/List;

    return-object v0
.end method
