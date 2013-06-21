.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;
.super Lcom/adobe/fre/FREContext;


# static fields
.field private static final STATUS_EVENT_CODE_BONJOUR_STATE:Ljava/lang/String; = "bonjourState"

.field private static final STATUS_EVENT_CODE_SERVICE_DISCOVERED:Ljava/lang/String; = "serviceDiscovered"

.field private static final STATUS_EVENT_CODE_SERVICE_PUBLISHED:Ljava/lang/String; = "servicePublished"

.field private static final STATUS_EVENT_CODE_SERVICE_REMOVED:Ljava/lang/String; = "serviceRemoved"

.field private static final STATUS_EVENT_CODE_SERVICE_RESOLVED:Ljava/lang/String; = "serviceResolved"

.field private static final STATUS_EVENT_CODE_SERVICE_UNPUBLISHED:Ljava/lang/String; = "serviceUnpublished"


# instance fields
.field private _bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    return-void
.end method

.method public static unFlattenArray(Lcom/adobe/fre/FREArray;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/fre/FREArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v2

    long-to-int v4, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    int-to-long v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v3, 0x1

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x2

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public close(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->interrupt()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->join()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->close(Z)Z

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "open"

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/FnOpen;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bonjour/FnOpen;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "close"

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/FnClose;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bonjour/FnClose;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isOpen"

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/FnIsOpen;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bonjour/FnIsOpen;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "publishService"

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/FnPublishService;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bonjour/FnPublishService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "unpublishService"

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/FnUnpublishService;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bonjour/FnUnpublishService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startBrowse"

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/FnStartBrowse;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bonjour/FnStartBrowse;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stopBrowse"

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/FnStopBrowse;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bonjour/FnStopBrowse;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public interrupt()V
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->interrupt()V

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join()V
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method public onServiceDiscovered(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceDiscovered"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServicePublished(Ljava/lang/String;)V
    .locals 1

    const-string v0, "servicePublished"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceRemoved(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceRemoved"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceResolved(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceResolved"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceUnpublished(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceUnpublished"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onThreadStateChanged(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V
    .locals 2

    const-string v0, "bonjourState"

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getThreadState()Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public open()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->close(Z)Z

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-direct {v0, p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;-><init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public scheduleCommand(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->_bonjourThread:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getCommandQueue()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
