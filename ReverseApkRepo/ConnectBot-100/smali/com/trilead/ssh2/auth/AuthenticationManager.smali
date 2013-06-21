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

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 124
    iget-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    if-nez v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, p0, v7, v8}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 128
    new-instance v2, Lcom/trilead/ssh2/packets/PacketServiceRequest;

    const-string v4, "ssh-userauth"

    invoke-direct {v2, v4}, Lcom/trilead/ssh2/packets/PacketServiceRequest;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, sr:Lcom/trilead/ssh2/packets/PacketServiceRequest;
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketServiceRequest;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 131
    new-instance v3, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;

    const-string v4, "ssh-connection"

    invoke-direct {v3, v4, p1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v3, urn:Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 134
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 135
    .local v0, msg:[B
    new-instance v4, Lcom/trilead/ssh2/packets/PacketServiceAccept;

    array-length v5, v0

    invoke-direct {v4, v0, v7, v5}, Lcom/trilead/ssh2/packets/PacketServiceAccept;-><init>([BII)V

    .line 136
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 138
    iput-boolean v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 140
    aget-byte v4, v0, v7

    const/16 v5, 0x34

    if-ne v4, v5, :cond_0

    .line 142
    iput-boolean v6, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 143
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, p0, v7, v8}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    move v4, v6

    .line 158
    .end local v2           #sr:Lcom/trilead/ssh2/packets/PacketServiceRequest;
    .end local v3           #urn:Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
    .end local v0           #msg:[B
    :goto_0
    return v4

    .line 147
    .restart local v0       #msg:[B
    .restart local v2       #sr:Lcom/trilead/ssh2/packets/PacketServiceRequest;
    .restart local v3       #urn:Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
    :cond_0
    aget-byte v4, v0, v7

    const/16 v5, 0x33

    if-ne v4, v5, :cond_1

    .line 149
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length v4, v0

    invoke-direct {v1, v0, v7, v4}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 151
    .local v1, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 152
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v4

    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    move v4, v7

    .line 153
    goto :goto_0

    .line 156
    .end local v1           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected SSH message (type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 331
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 333
    const-string v0, "keyboard-interactive"

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/io/IOException;

    .line 335
    const-string v1, "Authentication method keyboard-interactive not supported by the server at this stage."

    .line 334
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local p1
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 396
    .local v7, e:Ljava/io/IOException;
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 397
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Keyboard-interactive authentication failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 337
    .end local v7           #e:Ljava/io/IOException;
    .restart local p0
    .restart local p1
    :cond_0
    if-nez p2, :cond_1

    .line 338
    const/4 v0, 0x0

    :try_start_1
    new-array p2, v0, [Ljava/lang/String;

    .line 340
    :cond_1
    new-instance v12, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;

    const-string v0, "ssh-connection"

    invoke-direct {v12, v0, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 343
    .local v12, ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v12}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 347
    :goto_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v6

    .line 349
    .local v6, ar:[B
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 352
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 353
    const/4 v0, 0x1

    .line 363
    :goto_1
    return v0

    .line 356
    :cond_2
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    .line 358
    new-instance v8, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    const/4 v0, 0x0

    array-length v1, v6

    invoke-direct {v8, v6, v0, v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 360
    .local v8, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 361
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 363
    const/4 v0, 0x0

    goto :goto_1

    .line 366
    .end local v8           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_3
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_5

    .line 368
    new-instance v9, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;

    const/4 v0, 0x0

    array-length v1, v6

    invoke-direct {v9, v6, v0, v1}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 374
    .local v9, pui:Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;
    :try_start_2
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getNumPrompts()I

    move-result v3

    .line 375
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getPrompt()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getEcho()[Z

    move-result-object v5

    move-object/from16 v0, p3

    .line 374
    invoke-interface/range {v0 .. v5}, Lcom/trilead/ssh2/InteractiveCallback;->replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 382
    .local v11, responses:[Ljava/lang/String;
    if-nez v11, :cond_4

    .line 383
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Your callback may not return NULL!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    .end local v11           #responses:[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 379
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exception in callback."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 385
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #responses:[Ljava/lang/String;
    .restart local p1
    :cond_4
    new-instance v10, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;

    invoke-direct {v10, v11}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;-><init>([Ljava/lang/String;)V

    .line 386
    .local v10, puir:Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v10}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->getPayload()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_0

    .line 391
    .end local v9           #pui:Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;
    .end local v11           #responses:[Ljava/lang/String;
    .end local v10           #puir:Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;
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
    .line 276
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 277
    iget-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 279
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 281
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 282
    new-instance v1, Ljava/io/IOException;

    const-string v2, "None authentication failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 290
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 292
    const-string v4, "password"

    invoke-virtual {p0, v4}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Authentication method password not supported by the server at this stage."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 322
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v1, v7}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 323
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Password authentication failed."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 295
    .end local v1           #e:Ljava/io/IOException;
    .restart local p0
    :cond_0
    :try_start_1
    new-instance v3, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;

    const-string v4, "ssh-connection"

    invoke-direct {v3, v4, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v3, ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 298
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v0

    .line 300
    .local v0, ar:[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_1

    .line 302
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 303
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-virtual {v4, p0, v5, v6}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    move v4, v8

    .line 314
    :goto_0
    return v4

    .line 307
    :cond_1
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_2

    .line 309
    new-instance v2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 311
    .local v2, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 312
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v4

    iput-boolean v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    move v4, v7

    .line 314
    goto :goto_0

    .line 317
    .end local v2           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected SSH message (type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-byte v6, v0, v6

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

.method public authenticatePublicKey(Ljava/lang/String;Ljava/lang/Object;Ljava/security/SecureRandom;)Z
    .locals 24
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
    const-string v5, "publickey"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Authentication method publickey not supported by the server at this stage."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :catch_0
    move-exception v5

    move-object/from16 v19, v5

    .line 267
    .local v19, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 268
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Publickey authentication failed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 179
    .end local v19           #e:Ljava/io/IOException;
    .restart local p0
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    move v5, v0

    if-eqz v5, :cond_1

    .line 181
    move-object/from16 v0, p2

    check-cast v0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    move-object/from16 v21, v0

    .line 183
    .local v21, pk:Lcom/trilead/ssh2/signature/DSAPrivateKey;
    invoke-virtual/range {v21 .. v21}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v5

    invoke-static {v5}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSAPublicKey(Lcom/trilead/ssh2/signature/DSAPublicKey;)[B

    move-result-object v8

    .line 185
    .local v8, pk_enc:[B
    new-instance v23, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct/range {v23 .. v23}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 187
    .local v23, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v16

    .line 189
    .local v16, H:[B
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 190
    const/16 v5, 0x32

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 191
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 192
    const-string v5, "ssh-connection"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 193
    const-string v5, "publickey"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 194
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 195
    const-string v5, "ssh-dss"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 196
    const/4 v5, 0x0

    array-length v6, v8

    move-object/from16 v0, v23

    move-object v1, v8

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 198
    invoke-virtual/range {v23 .. v23}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v20

    .line 200
    .local v20, msg:[B
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->generateSignature([BLcom/trilead/ssh2/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lcom/trilead/ssh2/signature/DSASignature;

    move-result-object v18

    .line 202
    .local v18, ds:Lcom/trilead/ssh2/signature/DSASignature;
    invoke-static/range {v18 .. v18}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSASignature(Lcom/trilead/ssh2/signature/DSASignature;)[B

    move-result-object v9

    .line 204
    .local v9, ds_enc:[B
    new-instance v4, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v5, "ssh-connection"

    .line 205
    const-string v7, "ssh-dss"

    move-object/from16 v6, p1

    .line 204
    invoke-direct/range {v4 .. v9}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 206
    .local v4, ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 243
    .end local v21           #pk:Lcom/trilead/ssh2/signature/DSAPrivateKey;
    .end local v18           #ds:Lcom/trilead/ssh2/signature/DSASignature;
    .end local v9           #ds_enc:[B
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object v17

    .line 245
    .local v17, ar:[B
    const/4 v5, 0x0

    aget-byte v5, v17, v5

    const/16 v6, 0x34

    if-ne v5, v6, :cond_3

    .line 247
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 249
    const/4 v5, 0x1

    .line 259
    :goto_1
    return v5

    .line 208
    .end local v8           #pk_enc:[B
    .end local v23           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    .end local v16           #H:[B
    .end local v20           #msg:[B
    .end local v4           #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    .end local v17           #ar:[B
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    move v5, v0

    if-eqz v5, :cond_2

    .line 210
    move-object/from16 v0, p2

    check-cast v0, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    move-object/from16 v21, v0

    .line 212
    .local v21, pk:Lcom/trilead/ssh2/signature/RSAPrivateKey;
    invoke-virtual/range {v21 .. v21}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v5

    invoke-static {v5}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B

    move-result-object v8

    .line 214
    .restart local v8       #pk_enc:[B
    new-instance v23, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct/range {v23 .. v23}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 216
    .restart local v23       #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v16

    .line 218
    .restart local v16       #H:[B
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 219
    const/16 v5, 0x32

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 220
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 221
    const-string v5, "ssh-connection"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 222
    const-string v5, "publickey"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 223
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 224
    const-string v5, "ssh-rsa"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 225
    const/4 v5, 0x0

    array-length v6, v8

    move-object/from16 v0, v23

    move-object v1, v8

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 228
    invoke-virtual/range {v23 .. v23}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v20

    .line 230
    .restart local v20       #msg:[B
    invoke-static/range {v20 .. v21}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->generateSignature([BLcom/trilead/ssh2/signature/RSAPrivateKey;)Lcom/trilead/ssh2/signature/RSASignature;

    move-result-object v18

    .line 232
    .local v18, ds:Lcom/trilead/ssh2/signature/RSASignature;
    invoke-static/range {v18 .. v18}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSASignature(Lcom/trilead/ssh2/signature/RSASignature;)[B

    move-result-object v15

    .line 234
    .local v15, rsa_sig_enc:[B
    new-instance v4, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v11, "ssh-connection"

    .line 235
    const-string v13, "ssh-rsa"

    move-object v10, v4

    move-object/from16 v12, p1

    move-object v14, v8

    .line 234
    invoke-direct/range {v10 .. v15}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 236
    .restart local v4       #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v5, v0

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_0

    .line 240
    .end local v21           #pk:Lcom/trilead/ssh2/signature/RSAPrivateKey;
    .end local v8           #pk_enc:[B
    .end local v23           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    .end local v16           #H:[B
    .end local v20           #msg:[B
    .end local v18           #ds:Lcom/trilead/ssh2/signature/RSASignature;
    .end local v15           #rsa_sig_enc:[B
    .end local v4           #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unknown private key type returned by the PEM decoder."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 252
    .restart local v4       #ua:Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
    .restart local v8       #pk_enc:[B
    .restart local v16       #H:[B
    .restart local v17       #ar:[B
    .restart local v20       #msg:[B
    .restart local v23       #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_3
    const/4 v5, 0x0

    aget-byte v5, v17, v5

    const/16 v6, 0x33

    if-ne v5, v6, :cond_4

    .line 254
    new-instance v22, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 256
    .local v22, puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    invoke-virtual/range {v22 .. v22}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 257
    invoke-virtual/range {v22 .. v22}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 259
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 262
    .end local v22           #puf:Lcom/trilead/ssh2/packets/PacketUserauthFailure;
    :cond_4
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected SSH message (type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-byte v7, v17, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z
    .locals 2
    .parameter "user"
    .parameter "PEMPrivateKey"
    .parameter "password"
    .parameter "rnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p2, p3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decode([CLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, p4}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/lang/Object;Ljava/security/SecureRandom;)Z

    move-result v1

    return v1
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
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v1

    .line 75
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 91
    .local v0, res:[B
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 92
    monitor-exit v1

    return-object v0

    .line 77
    .end local v0           #res:[B
    :cond_0
    iget-boolean v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    if-eqz v2, :cond_1

    .line 78
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The connection is closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 73
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 83
    .restart local p0
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

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

.method public getPartialSuccess()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0
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
    .line 403
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v1

    .line 405
    if-nez p1, :cond_0

    .line 407
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 418
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 420
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 421
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error, peer is flooding us with authentication packets."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 411
    :cond_0
    :try_start_1
    new-array v0, p2, [B

    .line 412
    .local v0, tmp:[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    .end local v0           #tmp:[B
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    return-void
.end method

.method methodPossible(Ljava/lang/String;)Z
    .locals 3
    .parameter "methName"

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    .line 68
    :goto_0
    return v1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    move v1, v2

    .line 68
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
