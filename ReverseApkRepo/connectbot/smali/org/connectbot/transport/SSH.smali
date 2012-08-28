.class public Lorg/connectbot/transport/SSH;
.super Lorg/connectbot/transport/AbsTransport;
.source "SSH.java"

# interfaces
.implements Lcom/trilead/ssh2/AuthAgentCallback;
.implements Lcom/trilead/ssh2/ConnectionMonitor;
.implements Lcom/trilead/ssh2/InteractiveCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/transport/SSH$HostKeyVerifier;
    }
.end annotation


# static fields
.field static final hostmask:Ljava/util/regex/Pattern;


# instance fields
.field private agentLockPassphrase:Ljava/lang/String;

.field private volatile authenticated:Z

.field private columns:I

.field private compression:Z

.field private volatile connected:Z

.field private connection:Lcom/trilead/ssh2/Connection;

.field private connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

.field private height:I

.field private interactiveCanContinue:Z

.field private portForwards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;"
        }
    .end annotation
.end field

.field private pubkeysExhausted:Z

.field private rows:I

.field private session:Lcom/trilead/ssh2/Session;

.field private volatile sessionOpen:Z

.field private stderr:Ljava/io/InputStream;

.field private stdin:Ljava/io/OutputStream;

.field private stdout:Ljava/io/InputStream;

.field private useAuthAgent:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "^(.+)@([0-9a-z.-]+)(:(\\d+))?$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/connectbot/transport/SSH;->hostmask:Ljava/util/regex/Pattern;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lorg/connectbot/transport/AbsTransport;-><init>()V

    .line 104
    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->compression:Z

    .line 105
    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->authenticated:Z

    .line 106
    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->connected:Z

    .line 107
    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->sessionOpen:Z

    .line 109
    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->pubkeysExhausted:Z

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->interactiveCanContinue:Z

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/connectbot/transport/SSH;->portForwards:Ljava/util/List;

    .line 133
    const-string v0, "no"

    iput-object v0, p0, Lorg/connectbot/transport/SSH;->useAuthAgent:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private authenticate()V
    .locals 10

    .prologue
    .line 207
    :try_start_0
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v7}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/trilead/ssh2/Connection;->authenticateWithNone(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->finishConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ConnectBot.SSH"

    const-string v7, "Host does not support \'none\' authentication."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 218
    :try_start_1
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v6}, Lorg/connectbot/bean/HostBean;->getPubkeyId()J

    move-result-wide v4

    .line 220
    .local v4, pubkeyId:J
    iget-boolean v6, p0, Lorg/connectbot/transport/SSH;->pubkeysExhausted:Z

    if-nez v6, :cond_7

    .line 221
    const-wide/16 v6, -0x2

    cmp-long v6, v4, v6

    if-eqz v6, :cond_7

    .line 222
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v7}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v7

    const-string v8, "publickey"

    invoke-virtual {v6, v7, v8}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 227
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_5

    .line 229
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    .line 230
    const v8, 0x7f0800c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 231
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v6, v6, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 254
    :cond_2
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/connectbot/transport/SSH;->pubkeysExhausted:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 279
    .end local v4           #pubkeyId:J
    :catch_1
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v6, "ConnectBot.SSH"

    const-string v7, "Connection went away while we were trying to authenticate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 231
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v4       #pubkeyId:J
    :cond_3
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/connectbot/service/TerminalManager$KeyHolder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/connectbot/service/TerminalManager$KeyHolder;

    iget-object v6, v6, Lorg/connectbot/service/TerminalManager$KeyHolder;->bean:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v6}, Lorg/connectbot/bean/PubkeyBean;->isConfirmUse()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/connectbot/transport/SSH;->promptForPubkeyUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    :cond_4
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v6}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/connectbot/service/TerminalManager$KeyHolder;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager$KeyHolder;->trileadKey:Ljava/lang/Object;

    .line 236
    invoke-direct {p0, v9, v6, v7}, Lorg/connectbot/transport/SSH;->tryPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->finishConnection()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 282
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/connectbot/service/TerminalManager$KeyHolder;>;"
    .end local v4           #pubkeyId:J
    :catch_2
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ConnectBot.SSH"

    const-string v7, "Problem during handleAuthentication()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 243
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #pubkeyId:J
    :cond_5
    :try_start_3
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 245
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v6, v6, Lorg/connectbot/service/TerminalManager;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    invoke-virtual {v6, v4, v5}, Lorg/connectbot/util/PubkeyDatabase;->findPubkeyById(J)Lorg/connectbot/bean/PubkeyBean;

    move-result-object v3

    .line 247
    .local v3, pubkey:Lorg/connectbot/bean/PubkeyBean;
    if-nez v3, :cond_6

    .line 248
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_6
    invoke-direct {p0, v3}, Lorg/connectbot/transport/SSH;->tryPublicKey(Lorg/connectbot/bean/PubkeyBean;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->finishConnection()V

    goto/16 :goto_1

    .line 255
    .end local v3           #pubkey:Lorg/connectbot/bean/PubkeyBean;
    :cond_7
    iget-boolean v6, p0, Lorg/connectbot/transport/SSH;->interactiveCanContinue:Z

    if-eqz v6, :cond_9

    .line 256
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v7}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v7

    const-string v8, "keyboard-interactive"

    invoke-virtual {v6, v7, v8}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 259
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800c5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 260
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/connectbot/transport/SSH;->interactiveCanContinue:Z

    .line 261
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v7}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Lcom/trilead/ssh2/Connection;->authenticateWithKeyboardInteractive(Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 262
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->finishConnection()V

    goto/16 :goto_0

    .line 264
    :cond_8
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_9
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v7}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v7

    const-string v8, "password"

    invoke-virtual {v6, v7, v8}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 267
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800bf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v6}, Lorg/connectbot/service/TerminalBridge;->getPromptHelper()Lorg/connectbot/service/PromptHelper;

    move-result-object v6

    const/4 v7, 0x0

    .line 269
    iget-object v8, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v8, v8, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v9, 0x7f08002f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 268
    invoke-virtual {v6, v7, v8}, Lorg/connectbot/service/PromptHelper;->requestStringPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, password:Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 271
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v7}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/trilead/ssh2/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 272
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->finishConnection()V

    goto/16 :goto_0

    .line 274
    :cond_a
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800c0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    .end local v2           #password:Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v7, v7, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v8, 0x7f0800c7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method private finishConnection()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->authenticated:Z

    .line 366
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->portForwards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getWantSession()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->onConnected()V

    .line 401
    :goto_1
    return-void

    .line 366
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/connectbot/bean/PortForwardBean;

    .line 368
    .local v9, portForward:Lorg/connectbot/bean/PortForwardBean;
    :try_start_0
    invoke-virtual {p0, v9}, Lorg/connectbot/transport/SSH;->enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 369
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v2, v2, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v3, 0x7f0800c9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Lorg/connectbot/bean/PortForwardBean;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v7

    .line 371
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "ConnectBot.SSH"

    const-string v2, "Error setting up port forward during connect"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 382
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #portForward:Lorg/connectbot/bean/PortForwardBean;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    .line 384
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->useAuthAgent:Ljava/lang/String;

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/Session;->requestAuthAgentForwarding(Lcom/trilead/ssh2/AuthAgentCallback;)Z

    .line 387
    :cond_2
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {p0}, Lorg/connectbot/transport/SSH;->getEmulation()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/connectbot/transport/SSH;->columns:I

    iget v3, p0, Lorg/connectbot/transport/SSH;->rows:I

    iget v4, p0, Lorg/connectbot/transport/SSH;->width:I

    iget v5, p0, Lorg/connectbot/transport/SSH;->height:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 388
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->startShell()V

    .line 390
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/transport/SSH;->stdin:Ljava/io/OutputStream;

    .line 391
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/transport/SSH;->stdout:Ljava/io/InputStream;

    .line 392
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStderr()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/transport/SSH;->stderr:Ljava/io/InputStream;

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->sessionOpen:Z

    .line 396
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->onConnected()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 397
    :catch_1
    move-exception v8

    .line 398
    .local v8, e1:Ljava/io/IOException;
    const-string v0, "ConnectBot.SSH"

    const-string v1, "Problem while trying to create PTY in finishConnection()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public static getFormatHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 846
    const-string v0, "%s@%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 847
    const v3, 0x7f08009a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 848
    const v3, 0x7f08009b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 849
    const v3, 0x7f08009c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 846
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProtocolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    const-string v0, "ssh"

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "input"

    .prologue
    const/4 v7, 0x1

    .line 749
    sget-object v5, Lorg/connectbot/transport/SSH;->hostmask:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 751
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 752
    const/4 v4, 0x0

    .line 785
    :goto_0
    return-object v4

    .line 754
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v5, "ssh"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 757
    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 758
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 759
    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 760
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, portString:Ljava/lang/String;
    const/16 v1, 0x16

    .line 764
    .local v1, port:I
    if-eqz v2, :cond_2

    .line 766
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 767
    if-lt v1, v7, :cond_1

    const v5, 0xffff

    if-le v1, v5, :cond_2

    .line 768
    :cond_1
    const/16 v1, 0x16

    .line 775
    :cond_2
    :goto_1
    const/16 v5, 0x16

    if-eq v1, v5, :cond_3

    .line 776
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 777
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    :cond_3
    const-string v5, "/#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 781
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 785
    .local v4, uri:Landroid/net/Uri;
    goto :goto_0

    .line 770
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private onDisconnect()V
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lorg/connectbot/transport/SSH;->close()V

    .line 489
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 490
    return-void
.end method

.method private promptForPubkeyUse(Ljava/lang/String;)Z
    .locals 7
    .parameter "nickname"

    .prologue
    .line 898
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    const/4 v2, 0x0

    .line 899
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v3, v3, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v4, 0x7f080035

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 900
    aput-object p1, v5, v6

    .line 899
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-virtual {v1, v2, v3}, Lorg/connectbot/service/PromptHelper;->requestBooleanPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 901
    .local v0, result:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private tryPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .parameter "username"
    .parameter "keyNickname"
    .parameter "trileadKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1, p1, p3}, Lcom/trilead/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 354
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 355
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v2, v2, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v3, 0x7f0800c4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 356
    :cond_0
    return v0
.end method

.method private tryPublicKey(Lorg/connectbot/bean/PubkeyBean;)Z
    .locals 14
    .parameter "pubkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 296
    const/4 v5, 0x0

    .line 297
    .local v5, trileadKey:Ljava/lang/Object;
    iget-object v7, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/connectbot/service/TerminalManager;->isKeyLoaded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 299
    const-string v7, "ConnectBot.SSH"

    const-string v8, "Found unlocked key \'%s\' already in-memory"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->isConfirmUse()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 302
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/connectbot/transport/SSH;->promptForPubkeyUse(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 348
    .end local v5           #trileadKey:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 306
    .restart local v5       #trileadKey:Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalManager;->getKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 348
    :goto_1
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v6}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v5}, Lorg/connectbot/transport/SSH;->tryPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 309
    :cond_2
    const/4 v2, 0x0

    .line 310
    .local v2, password:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->isEncrypted()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 311
    iget-object v7, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v7}, Lorg/connectbot/service/TerminalBridge;->getPromptHelper()Lorg/connectbot/service/PromptHelper;

    move-result-object v7

    const/4 v8, 0x0

    .line 312
    iget-object v9, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v9, v9, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v10, 0x7f080034

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 311
    invoke-virtual {v7, v8, v9}, Lorg/connectbot/service/PromptHelper;->requestStringPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_0

    .line 319
    :cond_3
    const-string v7, "IMPORTED"

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 321
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decode([CLjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 342
    :goto_2
    const-string v7, "ConnectBot.SSH"

    const-string v8, "Unlocked key \'%s\'"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v6, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v6, p1, v5}, Lorg/connectbot/service/TerminalManager;->addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;)V

    goto :goto_1

    .line 326
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v7

    .line 327
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-static {v7, v8, v2}, Lorg/connectbot/util/PubkeyUtils;->decodePrivate([BLjava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 335
    .local v3, privKey:Ljava/security/PrivateKey;
    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 338
    .local v4, pubKey:Ljava/security/PublicKey;
    invoke-static {v3, v4}, Lorg/connectbot/util/PubkeyUtils;->convertToTrilead(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object v5

    .line 339
    const-string v7, "ConnectBot.SSH"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unlocked key "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/connectbot/util/PubkeyUtils;->formatKey(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 328
    .end local v3           #privKey:Ljava/security/PrivateKey;
    .end local v4           #pubKey:Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "Bad password for key \'%s\'. Authentication failed."

    new-array v8, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, message:Ljava/lang/String;
    const-string v7, "ConnectBot.SSH"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    iget-object v7, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v7, v1}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addIdentity(Ljava/lang/Object;Ljava/lang/String;ZI)Z
    .locals 2
    .parameter "key"
    .parameter "comment"
    .parameter "confirmUse"
    .parameter "lifetime"

    .prologue
    .line 905
    new-instance v0, Lorg/connectbot/bean/PubkeyBean;

    invoke-direct {v0}, Lorg/connectbot/bean/PubkeyBean;-><init>()V

    .line 907
    .local v0, pubkey:Lorg/connectbot/bean/PubkeyBean;
    invoke-virtual {v0, p2}, Lorg/connectbot/bean/PubkeyBean;->setNickname(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, p3}, Lorg/connectbot/bean/PubkeyBean;->setConfirmUse(Z)V

    .line 909
    invoke-virtual {v0, p4}, Lorg/connectbot/bean/PubkeyBean;->setLifetime(I)V

    .line 910
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v1, v0, p1}, Lorg/connectbot/service/TerminalManager;->addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;)V

    .line 911
    const/4 v1, 0x1

    return v1
.end method

.method public addPortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 583
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->portForwards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canForwardPorts()Z
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/transport/SSH;->connected:Z

    .line 475
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 477
    iput-object v1, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->close()V

    .line 482
    iput-object v1, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    .line 484
    :cond_1
    return-void
.end method

.method public connect()V
    .locals 9

    .prologue
    .line 405
    new-instance v3, Lcom/trilead/ssh2/Connection;

    iget-object v4, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v4}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/connectbot/transport/SSH;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    .line 406
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v3, p0}, Lcom/trilead/ssh2/Connection;->addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V

    .line 409
    :try_start_0
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    iget-boolean v4, p0, Lorg/connectbot/transport/SSH;->compression:Z

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/Connection;->setCompression(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    new-instance v4, Lorg/connectbot/transport/SSH$HostKeyVerifier;

    invoke-direct {v4, p0}, Lorg/connectbot/transport/SSH$HostKeyVerifier;-><init>(Lorg/connectbot/transport/SSH;)V

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 427
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/connectbot/transport/SSH;->connected:Z

    .line 429
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v3, v3, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    .line 430
    iget-object v4, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v4, v4, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v3, v3, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    .line 432
    iget-object v4, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v4, v4, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v4, v4, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v5, 0x7f0800bd

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 434
    iget-object v8, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v8, v8, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 435
    iget-object v8, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v8, v8, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 433
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    :goto_1
    const/4 v1, 0x0

    .local v1, tries:I
    move v2, v1

    .line 460
    .end local v1           #tries:I
    .local v2, tries:I
    :goto_2
    :try_start_2
    iget-boolean v3, p0, Lorg/connectbot/transport/SSH;->connected:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v3}, Lcom/trilead/ssh2/Connection;->isAuthenticationComplete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    .end local v2           #tries:I
    .restart local v1       #tries:I
    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    .line 469
    .end local v1           #tries:I
    :cond_0
    :goto_3
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ConnectBot.SSH"

    const-string v4, "Could not enable compression!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 437
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v4, v4, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    .line 438
    const v5, 0x7f0800bc

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 439
    iget-object v8, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v8, v8, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 440
    iget-object v8, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v8, v8, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 437
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v4, v4, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    .line 443
    const v5, 0x7f0800bb

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 444
    iget-object v8, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v8, v8, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 445
    iget-object v8, p0, Lorg/connectbot/transport/SSH;->connectionInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget-object v8, v8, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 442
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 447
    :catch_1
    move-exception v0

    .line 448
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "ConnectBot.SSH"

    const-string v4, "Problem in SSH connection thread during authentication"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->onDisconnect()V

    goto :goto_3

    .line 461
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #tries:I
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->authenticate()V

    .line 464
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move v2, v1

    .end local v1           #tries:I
    .restart local v2       #tries:I
    goto/16 :goto_2

    .line 466
    :catch_2
    move-exception v0

    move v1, v2

    .line 467
    .end local v2           #tries:I
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #tries:I
    :goto_4
    const-string v3, "ConnectBot.SSH"

    const-string v4, "Problem in SSH connection thread during authentication"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 466
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 568
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->onDisconnect()V

    .line 569
    return-void
.end method

.method public createHost(Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;
    .locals 6
    .parameter "uri"

    .prologue
    .line 803
    new-instance v0, Lorg/connectbot/bean/HostBean;

    invoke-direct {v0}, Lorg/connectbot/bean/HostBean;-><init>()V

    .line 805
    .local v0, host:Lorg/connectbot/bean/HostBean;
    const-string v3, "ssh"

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setProtocol(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setHostname(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 810
    .local v2, port:I
    if-gez v2, :cond_0

    .line 811
    const/16 v2, 0x16

    .line 812
    :cond_0
    invoke-virtual {v0, v2}, Lorg/connectbot/bean/HostBean;->setPort(I)V

    .line 814
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setUsername(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, nickname:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 818
    :cond_1
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getPort()I

    move-result v5

    .line 818
    invoke-virtual {p0, v3, v4, v5}, Lorg/connectbot/transport/SSH;->getDefaultNickname(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setNickname(Ljava/lang/String;)V

    .line 824
    :goto_0
    return-object v0

    .line 821
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setNickname(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 8
    .parameter "portForward"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 656
    iget-object v5, p0, Lorg/connectbot/transport/SSH;->portForwards:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 657
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Attempt to disable port forward not in list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    :goto_0
    return v3

    .line 661
    :cond_1
    iget-boolean v5, p0, Lorg/connectbot/transport/SSH;->authenticated:Z

    if-eqz v5, :cond_0

    .line 664
    const-string v5, "local"

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 665
    const/4 v2, 0x0

    .line 666
    .local v2, lpf:Lcom/trilead/ssh2/LocalPortForwarder;
    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getIdentifier()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #lpf:Lcom/trilead/ssh2/LocalPortForwarder;
    check-cast v2, Lcom/trilead/ssh2/LocalPortForwarder;

    .line 668
    .restart local v2       #lpf:Lcom/trilead/ssh2/LocalPortForwarder;
    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_3

    .line 669
    :cond_2
    const-string v5, "ConnectBot.SSH"

    const-string v6, "Could not disable %s; it appears to be not enabled or have no handler"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :cond_3
    invoke-virtual {p1, v3}, Lorg/connectbot/bean/PortForwardBean;->setEnabled(Z)V

    .line 676
    :try_start_0
    invoke-virtual {v2}, Lcom/trilead/ssh2/LocalPortForwarder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 682
    goto :goto_0

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Could not stop local port forwarder, setting enabled to false"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 683
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #lpf:Lcom/trilead/ssh2/LocalPortForwarder;
    :cond_4
    const-string v5, "remote"

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 684
    invoke-virtual {p1, v3}, Lorg/connectbot/bean/PortForwardBean;->setEnabled(Z)V

    .line 687
    :try_start_1
    iget-object v5, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getSourcePort()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/Connection;->cancelRemotePortForwarding(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 693
    goto :goto_0

    .line 688
    :catch_1
    move-exception v1

    .line 689
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Could not stop remote port forwarding, setting enabled to false"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 694
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    const-string v5, "dynamic5"

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getIdentifier()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    check-cast v0, Lcom/trilead/ssh2/DynamicPortForwarder;

    .line 698
    .restart local v0       #dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v0, :cond_7

    .line 699
    :cond_6
    const-string v5, "ConnectBot.SSH"

    const-string v6, "Could not disable %s; it appears to be not enabled or have no handler"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_7
    invoke-virtual {p1, v3}, Lorg/connectbot/bean/PortForwardBean;->setEnabled(Z)V

    .line 706
    :try_start_2
    invoke-virtual {v0}, Lcom/trilead/ssh2/DynamicPortForwarder;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v4

    .line 712
    goto/16 :goto_0

    .line 707
    :catch_2
    move-exception v1

    .line 708
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Could not stop dynamic port forwarder, setting enabled to false"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 715
    .end local v0           #dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    .end local v1           #e:Ljava/io/IOException;
    :cond_8
    const-string v5, "ConnectBot.SSH"

    const-string v6, "attempt to forward unknown type %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 10
    .parameter "portForward"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    iget-object v5, p0, Lorg/connectbot/transport/SSH;->portForwards:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 597
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Attempt to enable port forward not in list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    :goto_0
    return v3

    .line 601
    :cond_1
    iget-boolean v5, p0, Lorg/connectbot/transport/SSH;->authenticated:Z

    if-eqz v5, :cond_0

    .line 604
    const-string v5, "local"

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 605
    const/4 v2, 0x0

    .line 607
    .local v2, lpf:Lcom/trilead/ssh2/LocalPortForwarder;
    :try_start_0
    iget-object v5, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    .line 608
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getSourcePort()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 609
    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getDestAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getDestPort()I

    move-result v8

    .line 607
    invoke-virtual {v5, v6, v7, v8}, Lcom/trilead/ssh2/Connection;->createLocalPortForwarder(Ljava/net/InetSocketAddress;Ljava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 615
    if-nez v2, :cond_2

    .line 616
    const-string v4, "ConnectBot.SSH"

    const-string v5, "returned LocalPortForwarder object is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Could not create local port forward"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 620
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1, v2}, Lorg/connectbot/bean/PortForwardBean;->setIdentifier(Ljava/lang/Object;)V

    .line 621
    invoke-virtual {p1, v4}, Lorg/connectbot/bean/PortForwardBean;->setEnabled(Z)V

    move v3, v4

    .line 622
    goto :goto_0

    .line 623
    .end local v2           #lpf:Lcom/trilead/ssh2/LocalPortForwarder;
    :cond_3
    const-string v5, "remote"

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 625
    :try_start_1
    iget-object v5, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    const-string v6, ""

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getSourcePort()I

    move-result v7

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getDestAddr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getDestPort()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/trilead/ssh2/Connection;->requestRemotePortForwarding(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    invoke-virtual {p1, v4}, Lorg/connectbot/bean/PortForwardBean;->setEnabled(Z)V

    move v3, v4

    .line 632
    goto :goto_0

    .line 626
    :catch_1
    move-exception v1

    .line 627
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Could not create remote port forward"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 633
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, "dynamic5"

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 634
    const/4 v0, 0x0

    .line 637
    .local v0, dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_start_2
    iget-object v5, p0, Lorg/connectbot/transport/SSH;->connection:Lcom/trilead/ssh2/Connection;

    .line 638
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getSourcePort()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 637
    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/Connection;->createDynamicPortForwarder(Ljava/net/InetSocketAddress;)Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 644
    invoke-virtual {p1, v0}, Lorg/connectbot/bean/PortForwardBean;->setIdentifier(Ljava/lang/Object;)V

    .line 645
    invoke-virtual {p1, v4}, Lorg/connectbot/bean/PortForwardBean;->setEnabled(Z)V

    move v3, v4

    .line 646
    goto/16 :goto_0

    .line 639
    :catch_2
    move-exception v1

    .line 640
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "ConnectBot.SSH"

    const-string v5, "Could not create dynamic port forward"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 649
    .end local v0           #dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    const-string v5, "ConnectBot.SSH"

    const-string v6, "attempt to forward unknown type %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->stdin:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 496
    :cond_0
    return-void
.end method

.method public getDefaultNickname(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "username"
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 741
    const/16 v0, 0x16

    if-ne p3, v0, :cond_0

    .line 742
    const-string v0, "%s@%s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 744
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s@%s:%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPortForwards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->portForwards:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateKey([B)Ljava/lang/Object;
    .locals 4
    .parameter "publicKey"

    .prologue
    const/4 v2, 0x0

    .line 881
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v1, p1}, Lorg/connectbot/service/TerminalManager;->getKeyNickname([B)Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, nickname:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 894
    :goto_0
    return-object v1

    .line 886
    :cond_0
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->useAuthAgent:Ljava/lang/String;

    const-string v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    const-string v1, "ConnectBot.SSH"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 888
    goto :goto_0

    .line 889
    :cond_1
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->useAuthAgent:Ljava/lang/String;

    const-string v3, "confirm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 890
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/service/TerminalManager$KeyHolder;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager$KeyHolder;->bean:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v1}, Lorg/connectbot/bean/PubkeyBean;->isConfirmUse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 891
    :cond_2
    invoke-direct {p0, v0}, Lorg/connectbot/transport/SSH;->promptForPubkeyUse(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    .line 892
    goto :goto_0

    .line 894
    :cond_3
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v1, v0}, Lorg/connectbot/service/TerminalManager;->getKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelectionArgs(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 829
    .local p2, selection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "protocol"

    const-string v2, "ssh"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v1, "nickname"

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v1, "hostname"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    .line 834
    .local v0, port:I
    if-gez v0, :cond_0

    .line 835
    const/16 v0, 0x16

    .line 836
    :cond_0
    const-string v1, "port"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v1, "username"

    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    return-void
.end method

.method public isAgentLocked()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->agentLockPassphrase:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lorg/connectbot/transport/SSH;->connected:Z

    return v0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lorg/connectbot/transport/SSH;->sessionOpen:Z

    return v0
.end method

.method public read([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, bytesRead:I
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    if-nez v3, :cond_0

    .line 503
    const/4 v3, 0x0

    .line 523
    :goto_0
    return v3

    .line 505
    :cond_0
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    const/16 v4, 0x1e

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/trilead/ssh2/Session;->waitForCondition(IJ)I

    move-result v2

    .line 507
    .local v2, newConditions:I
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_1

    .line 508
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->stdout:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 511
    :cond_1
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_2

    .line 512
    const/16 v3, 0x100

    new-array v1, v3, [B

    .line 513
    .local v1, discard:[B
    :goto_1
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->stderr:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-gtz v3, :cond_3

    .line 518
    .end local v1           #discard:[B
    :cond_2
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_4

    .line 519
    invoke-direct {p0}, Lorg/connectbot/transport/SSH;->onDisconnect()V

    .line 520
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote end closed connection"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 514
    .restart local v1       #discard:[B
    :cond_3
    iget-object v3, p0, Lorg/connectbot/transport/SSH;->stderr:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    goto :goto_1

    .end local v1           #discard:[B
    :cond_4
    move v3, v0

    .line 523
    goto :goto_0
.end method

.method public removeAllIdentities()Z
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v0, v0, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 916
    const/4 v0, 0x1

    return v0
.end method

.method public removeIdentity([B)Z
    .locals 1
    .parameter "publicKey"

    .prologue
    .line 920
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v0, p1}, Lorg/connectbot/service/TerminalManager;->removeKey([B)Z

    move-result v0

    return v0
.end method

.method public removePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lorg/connectbot/transport/SSH;->disablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z

    .line 591
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->portForwards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 4
    .parameter "name"
    .parameter "instruction"
    .parameter "numPrompts"
    .parameter "prompt"
    .parameter "echo"

    .prologue
    .line 792
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/connectbot/transport/SSH;->interactiveCanContinue:Z

    .line 793
    new-array v1, p3, [Ljava/lang/String;

    .line 794
    .local v1, responses:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 798
    return-object v1

    .line 796
    :cond_0
    iget-object v2, p0, Lorg/connectbot/transport/SSH;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, v2, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    aget-object v3, p4, v0

    invoke-virtual {v2, p2, v3}, Lorg/connectbot/service/PromptHelper;->requestStringPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public requestAgentUnlock(Ljava/lang/String;)Z
    .locals 2
    .parameter "unlockPassphrase"

    .prologue
    const/4 v0, 0x0

    .line 928
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->agentLockPassphrase:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v0

    .line 931
    :cond_1
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->agentLockPassphrase:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 932
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/connectbot/transport/SSH;->agentLockPassphrase:Ljava/lang/String;

    .line 934
    :cond_2
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->agentLockPassphrase:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public retrieveIdentities()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 858
    new-instance v1, Ljava/util/HashMap;

    iget-object v4, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v4, v4, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 860
    .local v1, pubKeys:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v4, p0, Lorg/connectbot/transport/SSH;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v4, v4, Lorg/connectbot/service/TerminalManager;->loadedKeypairs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 877
    return-object v1

    .line 860
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 861
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/connectbot/service/TerminalManager$KeyHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/connectbot/service/TerminalManager$KeyHolder;

    iget-object v3, v4, Lorg/connectbot/service/TerminalManager$KeyHolder;->trileadKey:Ljava/lang/Object;

    .line 864
    .local v3, trileadKey:Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    if-eqz v4, :cond_2

    .line 865
    check-cast v3, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    .end local v3           #trileadKey:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v2

    .line 866
    .local v2, pubkey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 872
    .end local v2           #pubkey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 867
    .restart local v3       #trileadKey:Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    if-eqz v4, :cond_0

    .line 868
    check-cast v3, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    .end local v3           #trileadKey:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v2

    .line 869
    .local v2, pubkey:Lcom/trilead/ssh2/signature/DSAPublicKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSAPublicKey(Lcom/trilead/ssh2/signature/DSAPublicKey;)[B

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setAgentLock(Ljava/lang/String;)Z
    .locals 1
    .parameter "lockPassphrase"

    .prologue
    .line 938
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->agentLockPassphrase:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x0

    .line 942
    :goto_0
    return v0

    .line 941
    :cond_0
    iput-object p1, p0, Lorg/connectbot/transport/SSH;->agentLockPassphrase:Ljava/lang/String;

    .line 942
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCompression(Z)V
    .locals 0
    .parameter "compression"

    .prologue
    .line 842
    iput-boolean p1, p0, Lorg/connectbot/transport/SSH;->compression:Z

    .line 843
    return-void
.end method

.method public setDimensions(IIII)V
    .locals 3
    .parameter "columns"
    .parameter "rows"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 722
    iput p1, p0, Lorg/connectbot/transport/SSH;->columns:I

    .line 723
    iput p2, p0, Lorg/connectbot/transport/SSH;->rows:I

    .line 725
    iget-boolean v1, p0, Lorg/connectbot/transport/SSH;->sessionOpen:Z

    if-eqz v1, :cond_0

    .line 727
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/transport/SSH;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/trilead/ssh2/Session;->resizePTY(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.SSH"

    const-string v2, "Couldn\'t send resize PTY packet"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUseAuthAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "useAuthAgent"

    .prologue
    .line 854
    iput-object p1, p0, Lorg/connectbot/transport/SSH;->useAuthAgent:Ljava/lang/String;

    .line 855
    return-void
.end method

.method public usesNetwork()Z
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x1

    return v0
.end method

.method public write(I)V
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->stdin:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->stdin:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lorg/connectbot/transport/SSH;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 530
    :cond_0
    return-void
.end method
