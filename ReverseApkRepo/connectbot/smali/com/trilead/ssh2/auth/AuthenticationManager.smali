.class public Lcom/trilead/ssh2/auth/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# instance fields
.field authenticated:Z

.field banner:Ljava/lang/String;

.field connectionClosed:Z

.field initDone:Z

.field isPartialSuccess:Z

.field packets:Ljava/util/Vector;

.field remainingMethods:[Ljava/lang/String;

.field tm:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 2
    .parameter "tm"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 43
    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 50
    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 51
    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 55
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 56
    return-void
.end method

.method private initialize(Ljava/lang/String;)Z
    .locals 9
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 124
    iget-boolean v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    if-nez v6, :cond_2

    .line 126
    iget-object v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v6, p0, v5, v8}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 128
    new-instance v2, Lcom/trilead/ssh2/packets/PacketServiceRequest;

    const-string v6, "ssh-userauth"

    invoke-direct {v2, v6}, Lcom/trilead/ssh2/packets/PacketServiceRequest;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, sr:Lcom/trilead/ssh2/packets/PacketServiceRequest;
    iget-object v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketServiceRequest;->getPayload()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 131
    new-instance v3, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;

    const-string v6, "ssh-connection"

    invoke-direct {v3, v6, p1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v3, urn:Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
    iget-object v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->getPayload()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 134
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 135
    .local v0, msg:[B
    new-instance v6, Lcom/trilead/ssh2/packets/PacketServiceAccept;

    array-length v7, v0

    invoke-direct {v6, v0, v5, v7}, Lcom/trilead/ssh2/packets/PacketServiceAccept;-><init>([BII)V

    .line 136
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 138
    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 140
    aget-byte v6, v0, v5

    const/16 v7, 0x34

    if-ne v6, v7, :cond_0

    .line 142
    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 143
    iget-object v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v6, p0, v5, v8}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 158
    .end local v0           #msg:[B
    .end local v2           #sr:Lcom/trilead/ssh2/packets/PacketServiceRequest;
    .end local v3           #urn:Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
    :goto_0
    return v4

    .line 147
    .restart local v0       #msg:[B
    .restart local v2       #sr:Lcom/trilead/ssh2/packets/PacketServiceRequest;
    .restart local v3       #urn:Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
    :cond_0
    aget-byte v4, v0, v5

    const/16 v6, 0x33

    if-ne v4, v6, :cond_1

    .line 149
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length v4, v0

    invoke-direct {v1, v0, v5, v4}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 151
    .local v1, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 152
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v4

    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    move v4, v5

    .line 153
    goto :goto_0

    .line 156
    .end local v1           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected SSH message (type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    .end local v0           #msg:[B
    .end local v2           #sr:Lcom/trilead/ssh2/packets/PacketServiceRequest;
    .end local v3           #urn:Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
    :cond_2
    iget-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    goto :goto_0
.end method


# virtual methods
.method public authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 13
    .parameter "user"
    .parameter "submethods"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 335
    const-string v0, "keyboard-interactive"

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/io/IOException;

    .line 337
    const-string v1, "Authentication method keyboard-interactive not supported by the server at this stage."

    .line 336
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :catch_0
    move-exception v7

    .line 398
    .local v7, e:Ljava/io/IOException;
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 399
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Keyboard-interactive authentication failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 339
    .end local v7           #e:Ljava/io/IOException;
    :cond_0
    if-nez p2, :cond_1

    .line 340
    const/4 v0, 0x0

    :try_start_1
    new-array p2, v0, [Ljava/lang/String;

    .line 342
    :cond_1
    new-instance v12, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;

    const-string v0, "ssh-connection"

    invoke-direct {v12, v0, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 345
    .local v12, ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v12}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v6

    .line 351
    .local v6, ar:[B
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 354
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 355
    const/4 v0, 0x1

    .line 365
    :goto_1
    return v0

    .line 358
    :cond_2
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    .line 360
    new-instance v8, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    const/4 v0, 0x0

    array-length v1, v6

    invoke-direct {v8, v6, v0, v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 362
    .local v8, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 363
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 365
    const/4 v0, 0x0

    goto :goto_1

    .line 368
    .end local v8           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_3
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_5

    .line 370
    new-instance v9, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;

    const/4 v0, 0x0

    array-length v1, v6

    invoke-direct {v9, v6, v0, v1}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    .local v9, pui:Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;
    :try_start_2
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getNumPrompts()I

    move-result v3

    .line 377
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getPrompt()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getEcho()[Z

    move-result-object v5

    move-object/from16 v0, p3

    .line 376
    invoke-interface/range {v0 .. v5}, Lcom/trilead/ssh2/InteractiveCallback;->replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 384
    .local v11, responses:[Ljava/lang/String;
    if-nez v11, :cond_4

    .line 385
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Your callback may not return NULL!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    .end local v11           #responses:[Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 381
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception in callback."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 387
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #responses:[Ljava/lang/String;
    :cond_4
    new-instance v10, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;

    invoke-direct {v10, v11}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;-><init>([Ljava/lang/String;)V

    .line 388
    .local v10, puir:Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v10}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_0

    .line 393
    .end local v9           #pui:Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;
    .end local v10           #puir:Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;
    .end local v11           #responses:[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected SSH message (type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-byte v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public authenticateNone(Ljava/lang/String;)Z
    .locals 3
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 279
    iget-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 284
    new-instance v1, Ljava/io/IOException;

    const-string v2, "None authentication failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "user"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 292
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 294
    const-string v6, "password"

    invoke-virtual {p0, v6}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 295
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Authentication method password not supported by the server at this stage."

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :catch_0
    move-exception v1

    .line 324
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v1, v5}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 325
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Password authentication failed."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 297
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;

    const-string v6, "ssh-connection"

    invoke-direct {v3, v6, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .local v3, ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;
    iget-object v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->getPayload()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 300
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 302
    .local v0, ar:[B
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/16 v7, 0x34

    if-ne v6, v7, :cond_1

    .line 304
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 305
    iget-object v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v7, 0x0

    const/16 v8, 0xff

    invoke-virtual {v6, p0, v7, v8}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 316
    :goto_0
    return v4

    .line 309
    :cond_1
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v6, 0x33

    if-ne v4, v6, :cond_2

    .line 311
    new-instance v2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    const/4 v4, 0x0

    array-length v6, v0

    invoke-direct {v2, v0, v4, v6}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 313
    .local v2, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 314
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v4

    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    move v4, v5

    .line 316
    goto :goto_0

    .line 319
    .end local v2           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected SSH message (type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public authenticatePublicKey(Ljava/lang/String;Ljava/lang/Object;Ljava/security/SecureRandom;)Z
    .locals 23
    .parameter "user"
    .parameter "key"
    .parameter "rnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 176
    const-string v4, "publickey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Authentication method publickey not supported by the server at this stage."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :catch_0
    move-exception v18

    .line 268
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 270
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Publickey authentication failed."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 179
    .end local v18           #e:Ljava/io/IOException;
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    if-eqz v4, :cond_1

    .line 181
    move-object/from16 v0, p2

    check-cast v0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    move-object/from16 v20, v0

    .line 183
    .local v20, pk:Lcom/trilead/ssh2/signature/DSAPrivateKey;
    invoke-virtual/range {v20 .. v20}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v4

    invoke-static {v4}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSAPublicKey(Lcom/trilead/ssh2/signature/DSAPublicKey;)[B

    move-result-object v7

    .line 185
    .local v7, pk_enc:[B
    new-instance v22, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct/range {v22 .. v22}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 187
    .local v22, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v15

    .line 189
    .local v15, H:[B
    const/4 v4, 0x0

    array-length v5, v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 190
    const/16 v4, 0x32

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 191
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 192
    const-string v4, "ssh-connection"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 193
    const-string v4, "publickey"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 194
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 195
    const-string v4, "ssh-dss"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 196
    const/4 v4, 0x0

    array-length v5, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 198
    invoke-virtual/range {v22 .. v22}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v19

    .line 200
    .local v19, msg:[B
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->generateSignature([BLcom/trilead/ssh2/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lcom/trilead/ssh2/signature/DSASignature;

    move-result-object v17

    .line 202
    .local v17, ds:Lcom/trilead/ssh2/signature/DSASignature;
    invoke-static/range {v17 .. v17}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSASignature(Lcom/trilead/ssh2/signature/DSASignature;)[B

    move-result-object v8

    .line 204
    .local v8, ds_enc:[B
    new-instance v3, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v4, "ssh-connection"

    .line 205
    const-string v6, "ssh-dss"

    move-object/from16 v5, p1

    .line 204
    invoke-direct/range {v3 .. v8}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 206
    .local v3, ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 245
    .end local v8           #ds_enc:[B
    .end local v17           #ds:Lcom/trilead/ssh2/signature/DSASignature;
    .end local v20           #pk:Lcom/trilead/ssh2/signature/DSAPrivateKey;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v16

    .line 246
    .local v16, ar:[B
    const/4 v4, 0x0

    aget-byte v4, v16, v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_3

    .line 248
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v5, 0x0

    const/16 v6, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v6}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 250
    const/4 v4, 0x1

    .line 260
    :goto_1
    return v4

    .line 208
    .end local v3           #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    .end local v7           #pk_enc:[B
    .end local v15           #H:[B
    .end local v16           #ar:[B
    .end local v19           #msg:[B
    .end local v22           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_1
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    if-eqz v4, :cond_2

    .line 210
    move-object/from16 v0, p2

    check-cast v0, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    move-object/from16 v20, v0

    .line 212
    .local v20, pk:Lcom/trilead/ssh2/signature/RSAPrivateKey;
    invoke-virtual/range {v20 .. v20}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v4

    invoke-static {v4}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B

    move-result-object v7

    .line 214
    .restart local v7       #pk_enc:[B
    new-instance v22, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct/range {v22 .. v22}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 216
    .restart local v22       #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v15

    .line 218
    .restart local v15       #H:[B
    const/4 v4, 0x0

    array-length v5, v15

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 219
    const/16 v4, 0x32

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 220
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 221
    const-string v4, "ssh-connection"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 222
    const-string v4, "publickey"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 223
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 224
    const-string v4, "ssh-rsa"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    array-length v5, v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 228
    invoke-virtual/range {v22 .. v22}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v19

    .line 230
    .restart local v19       #msg:[B
    invoke-static/range {v19 .. v20}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->generateSignature([BLcom/trilead/ssh2/signature/RSAPrivateKey;)Lcom/trilead/ssh2/signature/RSASignature;

    move-result-object v17

    .line 232
    .local v17, ds:Lcom/trilead/ssh2/signature/RSASignature;
    invoke-static/range {v17 .. v17}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSASignature(Lcom/trilead/ssh2/signature/RSASignature;)[B

    move-result-object v14

    .line 234
    .local v14, rsa_sig_enc:[B
    new-instance v3, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v10, "ssh-connection"

    .line 235
    const-string v12, "ssh-rsa"

    move-object v9, v3

    move-object/from16 v11, p1

    move-object v13, v7

    .line 234
    invoke-direct/range {v9 .. v14}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 237
    .restart local v3       #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_0

    .line 242
    .end local v3           #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    .end local v7           #pk_enc:[B
    .end local v14           #rsa_sig_enc:[B
    .end local v15           #H:[B
    .end local v17           #ds:Lcom/trilead/ssh2/signature/RSASignature;
    .end local v19           #msg:[B
    .end local v20           #pk:Lcom/trilead/ssh2/signature/RSAPrivateKey;
    .end local v22           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unknown private key type returned by the PEM decoder."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 253
    .restart local v3       #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    .restart local v7       #pk_enc:[B
    .restart local v15       #H:[B
    .restart local v16       #ar:[B
    .restart local v19       #msg:[B
    .restart local v22       #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_3
    const/4 v4, 0x0

    aget-byte v4, v16, v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_4

    .line 255
    new-instance v21, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4, v5}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 257
    .local v21, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual/range {v21 .. v21}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 258
    invoke-virtual/range {v21 .. v21}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 260
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 263
    .end local v21           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_4
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected SSH message (type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-byte v6, v16, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method deQueue()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v2

    .line 75
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 91
    .local v0, res:[B
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 92
    monitor-exit v2

    return-object v0

    .line 77
    .end local v0           #res:[B
    :cond_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    if-eqz v1, :cond_1

    .line 78
    new-instance v1, Ljava/io/IOException;

    const-string v3, "The connection is closed."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 79
    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 78
    invoke-virtual {v1, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getNextMessage()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->deQueue()[B

    move-result-object v0

    .line 102
    .local v0, msg:[B
    aget-byte v2, v0, v4

    const/16 v3, 0x35

    if-eq v2, v3, :cond_0

    .line 103
    return-object v0

    .line 105
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthBanner;

    array-length v2, v0

    invoke-direct {v1, v0, v4, v2}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;-><init>([BII)V

    .line 107
    .local v1, sb:Lcom/trilead/ssh2/packets/PacketUserauthBanner;
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->getBanner()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->banner:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 114
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage([BI)V
    .locals 4
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v2

    .line 407
    if-nez p1, :cond_0

    .line 409
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 420
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_1

    .line 422
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 423
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error, peer is flooding us with authentication packets."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 413
    :cond_0
    :try_start_1
    new-array v0, p2, [B

    .line 414
    .local v0, tmp:[B
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    .end local v0           #tmp:[B
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    return-void
.end method

.method methodPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter "methName"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
