.class final Lcom/trilead/ssh2/transport/TransportManager$1;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 469
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->receiveLoop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_0
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->access$2()Lcom/trilead/ssh2/log/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->access$2()Lcom/trilead/ssh2/log/Logger;

    move-result-object v3

    const/16 v4, 0x32

    const-string v5, "Receive thread: back from receiveLoop"

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 484
    :cond_1
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    if-eqz v3, :cond_2

    .line 488
    :try_start_1
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->handleMessage([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 495
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 506
    return-void

    .line 471
    .end local v2           #i:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 473
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3, v0, v4}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 475
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->access$2()Lcom/trilead/ssh2/log/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->access$2()Lcom/trilead/ssh2/log/Logger;

    move-result-object v3

    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Receive thread: error in receiveLoop: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 497
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    :cond_3
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 500
    .local v1, he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    :try_start_2
    iget-object v3, v1, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/trilead/ssh2/transport/MessageHandler;->handleMessage([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 495
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 502
    :catch_1
    move-exception v3

    goto :goto_3

    .line 490
    .end local v2           #i:I
    .end local v1           #he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    :catch_2
    move-exception v3

    goto :goto_1
.end method
