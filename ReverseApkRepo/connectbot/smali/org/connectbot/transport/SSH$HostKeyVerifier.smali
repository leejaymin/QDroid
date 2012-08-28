.class public Lorg/connectbot/transport/SSH$HostKeyVerifier;
.super Ljava/lang/Object;
.source "SSH.java"

# interfaces
.implements Lcom/trilead/ssh2/ServerHostKeyVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/transport/SSH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostKeyVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/transport/SSH;


# direct methods
.method public constructor <init>(Lorg/connectbot/transport/SSH;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    .locals 17
    .parameter "hostname"
    .parameter "port"
    .parameter "serverHostKeyAlgorithm"
    .parameter "serverHostKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v12, v12, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v12}, Lorg/connectbot/util/HostDatabase;->getKnownHosts()Lcom/trilead/ssh2/KnownHosts;

    move-result-object v9

    .line 144
    .local v9, hosts:Lcom/trilead/ssh2/KnownHosts;
    const-string v12, "%s:%d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, matchName:Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Lcom/trilead/ssh2/KnownHosts;->createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, fingerprint:Ljava/lang/String;
    const-string v12, "ssh-rsa"

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 150
    const-string v4, "RSA"

    .line 156
    .local v4, algorithmName:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v9, v10, v0, v1}, Lcom/trilead/ssh2/KnownHosts;->verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 199
    const/4 v12, 0x0

    :goto_1
    return v12

    .line 151
    .end local v4           #algorithmName:Ljava/lang/String;
    :cond_0
    const-string v12, "ssh-dss"

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 152
    const-string v4, "DSA"

    .restart local v4       #algorithmName:Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v4           #algorithmName:Ljava/lang/String;
    :cond_1
    move-object/from16 v4, p3

    .restart local v4       #algorithmName:Ljava/lang/String;
    goto :goto_0

    .line 158
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v13, v13, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v13, v13, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v14, 0x7f0800b9

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 159
    const/4 v12, 0x1

    goto :goto_1

    .line 163
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v13, v13, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v13, v13, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v14, 0x7f08003a

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v13, v13, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v13, v13, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v14, 0x7f08003b

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v12, v12, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v14, v14, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v14, v14, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v15, 0x7f080039

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/connectbot/service/PromptHelper;->requestBooleanPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    .line 167
    .local v11, result:Ljava/lang/Boolean;
    if-nez v11, :cond_2

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 168
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v12, v12, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lorg/connectbot/util/HostDatabase;->saveKnownHost(Ljava/lang/String;ILjava/lang/String;[B)V

    .line 172
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto/16 :goto_1

    .line 175
    .end local v11           #result:Ljava/lang/Boolean;
    :pswitch_2
    const-string v12, "@   %s   @"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v15, v15, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v15, v15, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v16, 0x7f080036

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 175
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, header:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    new-array v5, v12, [C

    .line 179
    .local v5, atsigns:[C
    const/16 v12, 0x40

    invoke-static {v5, v12}, Ljava/util/Arrays;->fill([CC)V

    .line 180
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    .line 182
    .local v6, border:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v12, v6}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v13, v13, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v13, v13, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v14, 0x7f080037

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v12, v6}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v13, v13, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v13, v13, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v14, 0x7f08003b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 187
    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    .line 186
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v12, v12, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v14, v14, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v14, v14, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v15, 0x7f080039

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/connectbot/service/PromptHelper;->requestBooleanPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    .line 191
    .restart local v11       #result:Ljava/lang/Boolean;
    if-nez v11, :cond_4

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 192
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/connectbot/transport/SSH$HostKeyVerifier;->this$0:Lorg/connectbot/transport/SSH;

    iget-object v12, v12, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v12, v12, Lorg/connectbot/service/TerminalManager;->hostdb:Lorg/connectbot/util/HostDatabase;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lorg/connectbot/util/HostDatabase;->saveKnownHost(Ljava/lang/String;ILjava/lang/String;[B)V

    .line 196
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto/16 :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
