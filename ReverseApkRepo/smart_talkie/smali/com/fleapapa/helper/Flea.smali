.class public Lcom/fleapapa/helper/Flea;
.super Ljava/lang/Object;
.source "Flea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/Flea$FakeX509;
    }
.end annotation


# static fields
.field public static final MAGIC_AD:Ljava/lang/String; = "@a_"

.field public static final MAGIC_BID:Ljava/lang/String; = "@b_"

.field public static final MAGIC_CSTAT:Ljava/lang/String; = "@s_"

.field public static final MAGIC_END:Ljava/lang/String; = "@e_nd"

.field public static final MAGIC_ITEM:Ljava/lang/String; = "@i_"

.field public static final MAGIC_NEWCAT:Ljava/lang/String; = "@c_"

.field public static final MAGIC_QA:Ljava/lang/String; = "@q_"

.field public static final WHO:Ljava/lang/String; = "Flea"

.field public static cfsi:I

.field static excl0:Z

.field public static fleas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static nonce:I


# instance fields
.field error:Ljava/lang/String;

.field sock:Ljava/net/Socket;

.field stale:Z

.field useSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/fleapapa/helper/Flea;->nonce:I

    .line 37
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "useSSL"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fleapapa/helper/Flea;->useSSL:Z

    .line 59
    invoke-static {}, Lcom/fleapapa/helper/Flea;->initialize()V

    .line 60
    return-void
.end method

.method public static declared-synchronized initialize()V
    .locals 10

    .prologue
    .line 62
    const-class v5, Lcom/fleapapa/helper/Flea;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-lez v6, :cond_0

    .line 86
    :goto_0
    monitor-exit v5

    return-void

    .line 66
    :cond_0
    :try_start_1
    sget-object v6, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 67
    .local v3, istream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v2, ireader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .local v0, breader:Ljava/io/BufferedReader;
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v6

    if-nez v6, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 79
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 80
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 81
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    .end local v0           #breader:Ljava/io/BufferedReader;
    .end local v2           #ireader:Ljava/io/InputStreamReader;
    .end local v3           #istream:Ljava/io/InputStream;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 84
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea: fail to load servers.txt!!+("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 74
    .restart local v0       #breader:Ljava/io/BufferedReader;
    .restart local v2       #ireader:Ljava/io/InputStreamReader;
    .restart local v3       #istream:Ljava/io/InputStream;
    .restart local v4       #line:Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v6, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea: fleas["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1
.end method

.method static itemURI(Lcom/fleapapa/helper/Item;)Ljava/lang/String;
    .locals 5
    .parameter "item"

    .prologue
    .line 1079
    const-string v0, "http://%s/%d?apk=1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v4, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fleapapa/helper/Item;->iid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method connected()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-string v3, "Flea.connected: flea server "

    const-string v7, "Flea.connected: "

    .line 105
    const-string v3, "no connection"

    iput-object v3, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flea.connected: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v6, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already connected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 143
    :goto_0
    return v3

    .line 112
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 137
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Flea.connected: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v6, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is connected"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_2
    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_0

    .line 115
    :cond_2
    :try_start_0
    iget-boolean v3, p0, Lcom/fleapapa/helper/Flea;->stale:Z

    if-nez v3, :cond_1

    .line 116
    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v4, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 117
    .local v1, fsa:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Flea.connected: flea server "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v6, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " unresolvable!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1           #fsa:Ljava/net/InetSocketAddress;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/fleapapa/helper/Flea;->cfsi:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    sput v3, Lcom/fleapapa/helper/Flea;->cfsi:I

    goto/16 :goto_1

    .line 121
    .restart local v1       #fsa:Ljava/net/InetSocketAddress;
    :cond_3
    :try_start_1
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Flea.connected: flea server "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v6, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " resolved="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v3, p0, Lcom/fleapapa/helper/Flea;->useSSL:Z

    if-eqz v3, :cond_5

    .line 124
    invoke-static {v1}, Lcom/fleapapa/helper/Flea$FakeX509;->connectSSL(Ljava/net/InetSocketAddress;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    .line 130
    :goto_4
    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    :cond_4
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Flea.connected: "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v6, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is unreachable!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 133
    .end local v1           #fsa:Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 134
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "Flea.connected: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v6, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 127
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fsa:Ljava/net/InetSocketAddress;
    :cond_5
    :try_start_2
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    .line 128
    iget-object v3, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    const/16 v4, 0x1388

    invoke-virtual {v3, v1, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 139
    .end local v1           #fsa:Ljava/net/InetSocketAddress;
    :cond_6
    iget-boolean v3, p0, Lcom/fleapapa/helper/Flea;->stale:Z

    if-eqz v3, :cond_7

    .line 140
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v4, "Flea.connected: calling activity is destroyed!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 142
    :cond_7
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v4, "Flea.connected: all servers unreachable!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 143
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 6

    .prologue
    const-string v5, "Flea.finalize: "

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 95
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Flea.finalize: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 101
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Flea.finalize: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method flea_hello(Z)Z
    .locals 18
    .parameter "bootup"

    .prologue
    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    .line 935
    .end local p1
    :goto_0
    return v13

    .line 847
    .restart local p1
    :cond_0
    const/4 v11, 0x0

    .local v11, nitem:I
    const/4 v10, 0x0

    .line 848
    .local v10, ncats:I
    const/4 v3, 0x0

    .line 849
    .local v3, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 852
    .local v5, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 853
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .local v6, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "GET /html/stat.htm?op=dummy&uid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    sget v14, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 855
    const-string v14, "&pswd="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v14}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 856
    const-string v14, "&lon="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v14}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 857
    const-string v14, "&lat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v14}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 858
    const-string v14, "&catstat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p1, :cond_3

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 859
    const-string v14, "&tevents="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/helper/Event;->ltime:Ljava/lang/String;

    invoke-static {v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 860
    const-string v14, "&tnewcat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/helper/Category;->latime:Ljava/lang/String;

    invoke-static {v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 861
    const-string v14, " HTTP/1.1\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 862
    const-string v14, "Host: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v15, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 863
    const-string v14, "Cookie: tzoffs="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/fleapapa/util/My;->tzOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 864
    const-string v14, "Content-Length: 0\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 865
    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 853
    invoke-virtual {v6, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 869
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 870
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v13, "flea_hello"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    if-nez v13, :cond_b

    .line 924
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 925
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 926
    :cond_2
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v14, "Flea.flea_hello: done"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 870
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 858
    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local p1
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 928
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local p1
    .restart local v4       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 929
    .local v8, e:Ljava/lang/Exception;
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Flea.flea_hello: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 874
    .end local v8           #e:Ljava/lang/Exception;
    .local v9, line:Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b

    .line 879
    :goto_3
    sget-object v13, Lcom/fleapapa/helper/Event;->events:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 880
    :cond_5
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    .line 917
    :cond_6
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ltime"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/fleapapa/helper/Event;->ltime:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 924
    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 925
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 926
    :cond_8
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v14, "Flea.flea_hello: done"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 933
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :goto_5
    if-lez v10, :cond_9

    invoke-static {}, Lcom/fleapapa/helper/Category;->writeNewCats()V

    .line 934
    :cond_9
    if-lez v11, :cond_a

    invoke-static {}, Lcom/fleapapa/helper/Category;->countItems()V

    .line 935
    :cond_a
    if-lez v11, :cond_14

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 873
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    :cond_b
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #line:Ljava/lang/String;
    if-nez v9, :cond_4

    goto :goto_3

    .line 881
    :cond_c
    const-string v13, "@e_nd"

    invoke-virtual {v9, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_6

    .line 882
    const-string v13, "@s_"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 884
    const-string v13, "@s_"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\\\"

    const/16 v15, 0x8

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 885
    .local v12, t:[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_5

    .line 886
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v7

    .line 887
    .local v7, cat:Lcom/fleapapa/helper/Category;
    if-eqz v7, :cond_5

    iget-boolean v13, v7, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v13, :cond_5

    .line 888
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v7, Lcom/fleapapa/helper/Category;->nintr:I

    .line 889
    const/4 v13, 0x2

    aget-object v13, v12, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v7, Lcom/fleapapa/helper/Category;->nitem:I

    .line 890
    iget v13, v7, Lcom/fleapapa/helper/Category;->nitem:I

    add-int/2addr v11, v13

    goto/16 :goto_4

    .line 893
    .end local v7           #cat:Lcom/fleapapa/helper/Category;
    .end local v12           #t:[Ljava/lang/String;
    :cond_d
    const-string v13, "@c_"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 896
    const-string v13, "@c_"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/fleapapa/helper/Category;->initCat(Ljava/lang/String;)Lcom/fleapapa/helper/Category;

    move-result-object v7

    .line 897
    .restart local v7       #cat:Lcom/fleapapa/helper/Category;
    if-eqz v7, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 902
    .end local v7           #cat:Lcom/fleapapa/helper/Category;
    :cond_e
    const-string v13, "="

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 903
    .restart local v12       #t:[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-lt v13, v14, :cond_5

    .line 904
    const/4 v13, 0x0

    aget-object v13, v12, v13

    const-string v14, "hello"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 905
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/fleapapa/helper/Monitor;->tHello:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 919
    .end local v9           #line:Ljava/lang/String;
    .end local v12           #t:[Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object v8, v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 920
    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v8       #e:Ljava/lang/Exception;
    :goto_6
    :try_start_7
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Flea.flea_hello: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 924
    if-eqz v5, :cond_f

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 925
    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 926
    :cond_10
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v14, "Flea.flea_hello: done"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_5

    .line 928
    :catch_2
    move-exception v13

    move-object v8, v13

    .line 929
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Flea.flea_hello: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 907
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v12       #t:[Ljava/lang/String;
    :cond_11
    const/4 v13, 0x0

    :try_start_9
    aget-object v13, v12, v13

    const-string v14, "event"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 908
    const/4 v13, 0x1

    aget-object v13, v12, v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 909
    array-length v13, v12

    const/4 v14, 0x4

    if-lt v13, v14, :cond_5

    .line 910
    new-instance v13, Lcom/fleapapa/helper/Event;

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-static {v14}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    aget-object v15, v12, v15

    const/16 v16, 0x2

    aget-object v16, v12, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x3

    aget-object v17, v12, v17

    invoke-direct/range {v13 .. v17}, Lcom/fleapapa/helper/Event;-><init>(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 922
    .end local v9           #line:Ljava/lang/String;
    .end local v12           #t:[Ljava/lang/String;
    :catchall_0
    move-exception v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 924
    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :goto_7
    if-eqz v5, :cond_12

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 925
    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 926
    :cond_13
    sget-object v14, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v15, "Flea.flea_hello: done"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 931
    :goto_8
    throw v13

    .line 928
    :catch_3
    move-exception v14

    move-object v8, v14

    .line 929
    .restart local v8       #e:Ljava/lang/Exception;
    sget-object v14, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Flea.flea_hello: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 928
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    .restart local v9       #line:Ljava/lang/String;
    :catch_4
    move-exception v13

    move-object v8, v13

    .line 929
    .restart local v8       #e:Ljava/lang/Exception;
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Flea.flea_hello: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 935
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #line:Ljava/lang/String;
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 922
    :catchall_1
    move-exception v13

    goto :goto_7

    .end local v5           #bw:Ljava/io/BufferedWriter;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 919
    .restart local p1
    :catch_5
    move-exception v13

    move-object v8, v13

    goto/16 :goto_6

    .end local v5           #bw:Ljava/io/BufferedWriter;
    .end local p1
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v13

    move-object v8, v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_6
.end method

.method flea_signin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "user"
    .parameter "pswd"
    .parameter "mail"

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 1008
    .end local p1
    :goto_0
    return v7

    .line 940
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    .line 941
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 944
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    iget-object v8, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 945
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GET /html/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_3

    const-string v8, "signin.htm?op=signin"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 946
    const-string v8, "&user="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 947
    const-string v8, "&pswd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 948
    if-nez p3, :cond_4

    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 956
    const-string v8, " HTTP/1.1\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 957
    const-string v8, "Host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v9, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 958
    const-string v8, "Content-Length: 0\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 959
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 945
    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 963
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 964
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v7, "flea_signin"

    invoke-virtual {p0, v7, v1}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    if-nez v7, :cond_a

    .line 1000
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1001
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1002
    :cond_2
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v8, "Flea.flea_signin: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 964
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 945
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local p1
    :cond_3
    :try_start_4
    const-string v8, "signup.htm?op=finish"

    goto/16 :goto_1

    .line 949
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "&ccode="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fleapapa."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "...."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "fleamama"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    const/16 v11, 0xc

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 950
    const-string v9, "&email="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 951
    const-string v9, "&phone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 952
    const-string v9, "&android=1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 953
    const-string v9, "&lat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v9}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 954
    const-string v9, "&lon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v9}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 949
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v8

    goto/16 :goto_2

    .line 1004
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local p1
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 1005
    .local v4, e:Ljava/lang/Exception;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 968
    .end local v4           #e:Ljava/lang/Exception;
    .local v5, line:Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    .line 973
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v5

    if-nez v5, :cond_b

    .line 1000
    :cond_7
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1001
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1002
    :cond_9
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v8, "Flea.flea_signin: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 1008
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_5
    sget v7, Lcom/fleapapa/util/My;->uid:I

    if-eqz v7, :cond_13

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 967
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :cond_a
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #line:Ljava/lang/String;
    if-nez v5, :cond_5

    goto :goto_4

    .line 974
    :cond_b
    const-string v7, "@e_nd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 975
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, t:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_6

    .line 977
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "uid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 978
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/fleapapa/util/My;->uid:I

    .line 979
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: uid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 995
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #t:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 996
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_6
    :try_start_8
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1000
    if-eqz v2, :cond_c

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1001
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1002
    :cond_d
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v8, "Flea.flea_signin: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 1004
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 1005
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 982
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #t:[Ljava/lang/String;
    :cond_e
    const/4 v7, 0x0

    :try_start_a
    aget-object v7, v6, v7

    const-string v8, "class"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 983
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/fleapapa/util/My;->sclass:I

    .line 984
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: class="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/fleapapa/util/My;->sclass:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_4

    .line 998
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #t:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 1000
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_7
    if-eqz v2, :cond_f

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1001
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1002
    :cond_10
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.flea_signin: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1007
    :goto_8
    throw v7

    .line 987
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #t:[Ljava/lang/String;
    :cond_11
    const/4 v7, 0x0

    :try_start_c
    aget-object v7, v6, v7

    const-string v8, "email"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 988
    const/4 v7, 0x1

    aget-object v7, v6, v7

    sput-object v7, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    .line 989
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: email="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 992
    :cond_12
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_4

    .line 1004
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #t:[Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 1005
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.flea_signin: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1004
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v5       #line:Ljava/lang/String;
    :catch_4
    move-exception v7

    move-object v4, v7

    .line 1005
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.flea_signin: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 1008
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #line:Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 998
    :catchall_1
    move-exception v7

    goto/16 :goto_7

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_7

    .line 995
    .restart local p1
    :catch_5
    move-exception v7

    move-object v4, v7

    goto/16 :goto_6

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local p1
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_6
.end method

.method item_bid(Lcom/fleapapa/helper/Item;Ljava/lang/String;DI)Z
    .locals 16
    .parameter "item"
    .parameter "op"
    .parameter "bid"
    .parameter "qty"

    .prologue
    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 732
    .end local p2
    :goto_0
    return v4

    .line 656
    .restart local p2
    :cond_0
    const/4 v9, 0x0

    .line 657
    .local v9, br:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 660
    .local v11, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v12, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 661
    .end local v11           #bw:Ljava/io/BufferedWriter;
    .local v12, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET /html/bid.htm?op="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 662
    const-string v5, "&iid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 663
    const-string v5, "&uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 661
    invoke-virtual {v12, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 665
    const-string v4, "get"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&bid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 668
    const-string v5, "&qty="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 669
    const-string v5, "&digest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v6}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    invoke-virtual {v12, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 671
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " HTTP/1.1\r\nHost: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    sget-object v5, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v6, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 673
    const-string v5, "Cookie: tzoffs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/fleapapa/util/My;->tzOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 674
    const-string v5, "Content-Length: 0\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 675
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 671
    invoke-virtual {v12, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    .line 679
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 680
    .end local v9           #br:Ljava/io/BufferedReader;
    .local v10, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v4, "item_bid"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-nez v4, :cond_9

    .line 724
    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 725
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 726
    :cond_3
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v5, "Flea.item_bid: done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 680
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 728
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 729
    .local v13, e:Ljava/lang/Exception;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flea.item_bid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    .end local v13           #e:Ljava/lang/Exception;
    .local v14, line:Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 687
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    .line 688
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/fleapapa/helper/Item;->maxbid:D

    .line 689
    :cond_5
    :goto_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_a

    .line 709
    :cond_6
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " bids on item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/fleapapa/helper/Flea$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/Flea$1;-><init>(Lcom/fleapapa/helper/Flea;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 724
    if-eqz v12, :cond_7

    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 725
    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 726
    :cond_8
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v5, "Flea.item_bid: done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v11, v12

    .end local v12           #bw:Ljava/io/BufferedWriter;
    .restart local v11       #bw:Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 732
    .end local v10           #br:Ljava/io/BufferedReader;
    .end local v14           #line:Ljava/lang/String;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 683
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v11           #bw:Ljava/io/BufferedWriter;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v12       #bw:Ljava/io/BufferedWriter;
    :cond_9
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #line:Ljava/lang/String;
    if-nez v14, :cond_4

    goto :goto_2

    .line 690
    :cond_a
    const-string v4, "@e_nd"

    invoke-virtual {v14, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 691
    const-string v4, "@b_"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 692
    const-string v4, "@b_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\\\"

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 693
    .local v15, tk:[Ljava/lang/String;
    array-length v4, v15

    const/16 v5, 0xc

    if-lt v4, v5, :cond_5

    .line 695
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    .line 696
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->maxbid:D

    move-wide v4, v0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_b

    move-wide/from16 v0, p3

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/fleapapa/helper/Item;->maxbid:D

    .line 698
    :cond_b
    new-instance v3, Lcom/fleapapa/helper/Bid;

    const/4 v4, 0x3

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v4, 0x1

    aget-object v8, v15, v4

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/fleapapa/helper/Bid;-><init>(Lcom/fleapapa/helper/Item;IDLjava/lang/String;)V

    .line 699
    .local v3, b:Lcom/fleapapa/helper/Bid;
    const/4 v4, 0x2

    aget-object v4, v15, v4

    iput-object v4, v3, Lcom/fleapapa/helper/Bid;->user:Ljava/lang/String;

    .line 700
    const/4 v4, 0x4

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/fleapapa/helper/Bid;->lati:I

    .line 701
    const/4 v4, 0x5

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/fleapapa/helper/Bid;->loni:I

    .line 702
    const/4 v4, 0x6

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/fleapapa/helper/Bid;->ratp:I

    .line 703
    const/4 v4, 0x7

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/fleapapa/helper/Bid;->ratn:I

    .line 704
    const/16 v4, 0x8

    aget-object v4, v15, v4

    iput-object v4, v3, Lcom/fleapapa/helper/Bid;->phone:Ljava/lang/String;

    .line 705
    const/16 v4, 0x9

    aget-object v4, v15, v4

    iput-object v4, v3, Lcom/fleapapa/helper/Bid;->email:Ljava/lang/String;

    .line 706
    const/16 v4, 0xa

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/fleapapa/helper/Bid;->qty:I

    .line 707
    const/16 v4, 0xb

    aget-object v4, v15, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/fleapapa/helper/Bid;->sid:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 719
    .end local v3           #b:Lcom/fleapapa/helper/Bid;
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #tk:[Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v13, v4

    move-object v11, v12

    .end local v12           #bw:Ljava/io/BufferedWriter;
    .restart local v11       #bw:Ljava/io/BufferedWriter;
    move-object v9, v10

    .line 720
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v13       #e:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flea.item_bid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 724
    if-eqz v11, :cond_c

    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 725
    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 726
    :cond_d
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v5, "Flea.item_bid: done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 728
    :catch_2
    move-exception v4

    move-object v13, v4

    .line 729
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flea.item_bid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 722
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 724
    :goto_6
    if-eqz v11, :cond_e

    :try_start_9
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 725
    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 726
    :cond_f
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "Flea.item_bid: done"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 731
    :goto_7
    throw v4

    .line 728
    :catch_3
    move-exception v5

    move-object v13, v5

    .line 729
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Flea.item_bid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 728
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v11           #bw:Ljava/io/BufferedWriter;
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v12       #bw:Ljava/io/BufferedWriter;
    .restart local v14       #line:Ljava/lang/String;
    :catch_4
    move-exception v4

    move-object v13, v4

    .line 729
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flea.item_bid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .end local v12           #bw:Ljava/io/BufferedWriter;
    .restart local v11       #bw:Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 732
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #line:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 722
    .end local v11           #bw:Ljava/io/BufferedWriter;
    .restart local v12       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v11, v12

    .end local v12           #bw:Ljava/io/BufferedWriter;
    .restart local v11       #bw:Ljava/io/BufferedWriter;
    goto :goto_6

    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v11           #bw:Ljava/io/BufferedWriter;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v12       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v4

    move-object v11, v12

    .end local v12           #bw:Ljava/io/BufferedWriter;
    .restart local v11       #bw:Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 719
    .restart local p2
    :catch_5
    move-exception v4

    move-object v13, v4

    goto/16 :goto_5

    .end local v11           #bw:Ljava/io/BufferedWriter;
    .end local p2
    .restart local v12       #bw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v4

    move-object v13, v4

    move-object v11, v12

    .end local v12           #bw:Ljava/io/BufferedWriter;
    .restart local v11       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_5
.end method

.method item_del(Lcom/fleapapa/helper/Item;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const-string v5, "Flea.item_del: done"

    const-string v9, "Flea.item_del: "

    .line 623
    invoke-virtual {p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v8

    .line 641
    :goto_0
    return v5

    .line 624
    :cond_0
    const/4 v0, 0x0

    .line 625
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 628
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 629
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GET /html/iedit.htm?op=delete&uid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    sget v6, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 631
    const-string v6, "&iid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 632
    const-string v6, "&digest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/fleapapa/helper/Item;->iid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 636
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 637
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v5, "item_del"

    invoke-virtual {p0, v5, v1}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v5

    .line 645
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 646
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 647
    :cond_2
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v7, "Flea.item_del: done"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 649
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 650
    .local v4, e:Ljava/lang/Exception;
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.item_del: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 639
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 640
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Flea.item_del: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 645
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 646
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 647
    :cond_4
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "Flea.item_del: done"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_2
    move v5, v8

    .line 641
    goto/16 :goto_0

    .line 649
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 650
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Flea.item_del: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 643
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 645
    :goto_3
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 646
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 647
    :cond_6
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v7, "Flea.item_del: done"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 652
    :goto_4
    throw v5

    .line 649
    :catch_3
    move-exception v6

    move-object v4, v6

    .line 650
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.item_del: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 643
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 639
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v5

    move-object v4, v5

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v5

    move-object v4, v5

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method item_detail(Lcom/fleapapa/helper/Item;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const-string v9, "Flea.item_detail: done"

    const-string v9, "\r\n"

    const-string v13, "Flea.item_detail: "

    .line 201
    invoke-virtual {p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v12

    .line 246
    :goto_0
    return v9

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 203
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 205
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    iget-object v10, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 206
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "GET /"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p1, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?apk=1 HTTP/1.1\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 207
    const-string v10, "Host: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v9, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v11, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 208
    const-string v10, "Cookie: tzoffs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/fleapapa/util/My;->tzOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 209
    const-string v10, "Content-Length: 0\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 210
    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 206
    invoke-virtual {v3, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 214
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 215
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v9, "item_detail"

    invoke-virtual {p0, v9, v1}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v9

    if-nez v9, :cond_3

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 254
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 255
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 256
    :cond_2
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v10, "Flea.item_detail: done"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    move v9, v12

    .line 215
    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 259
    .local v6, e:Ljava/lang/Exception;
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Flea.item_detail: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 220
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :cond_3
    const/4 v5, 0x0

    .line 221
    .local v5, chunked:Z
    :cond_4
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-nez v7, :cond_a

    .line 230
    :cond_5
    const/4 v4, 0x0

    .line 231
    .local v4, chsiz:I
    const-string v9, ""

    iput-object v9, p1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 232
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    .line 245
    :cond_7
    :goto_5
    iget-object v9, p1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    invoke-static {v9}, Lcom/fleapapa/util/MyUtil;->rmvTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 254
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 255
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 256
    :cond_9
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v10, "Flea.item_detail: done"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 246
    :goto_6
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 222
    .end local v4           #chsiz:I
    :cond_a
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 225
    const-string v9, "Transfer-Encoding"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 226
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v10, "Flea.item_detail: chunked!!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v5, 0x1

    goto :goto_3

    .line 233
    .restart local v4       #chsiz:I
    :cond_b
    const-string v9, "@e_nd"

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_7

    .line 234
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Flea.item_detail: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v5, :cond_c

    if-gtz v4, :cond_c

    .line 236
    const-string v9, "\\r*\\n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, t:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 238
    if-gtz v4, :cond_6

    goto :goto_5

    .line 241
    .end local v8           #t:[Ljava/lang/String;
    :cond_c
    iget-object v9, p1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 242
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v9

    add-int/lit8 v9, v9, 0x1

    sub-int/2addr v4, v9

    goto/16 :goto_4

    .line 258
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 259
    .restart local v6       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Flea.item_detail: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 248
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v4           #chsiz:I
    .end local v5           #chunked:Z
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v9

    move-object v6, v9

    .line 249
    .restart local v6       #e:Ljava/lang/Exception;
    :goto_7
    :try_start_7
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Flea.item_detail: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 252
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 254
    :goto_8
    if-eqz v2, :cond_d

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 255
    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 256
    :cond_e
    sget-object v10, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v11, "Flea.item_detail: done"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 261
    :goto_9
    throw v9

    .line 258
    :catch_3
    move-exception v10

    move-object v6, v10

    .line 259
    .restart local v6       #e:Ljava/lang/Exception;
    sget-object v10, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Flea.item_detail: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 252
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_8

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_8

    .line 248
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v9

    move-object v6, v9

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v9

    move-object v6, v9

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7
.end method

.method item_getauth()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    const-string v7, "\r\n"

    const-string v7, "Flea.item_getauth: done"

    const-string v11, "Flea.item_getauth: "

    .line 146
    invoke-virtual {p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v10

    .line 178
    :goto_0
    return v7

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 151
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    iget-object v8, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 152
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GET /html/iedit.htm?op=getauth&uid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    sget v8, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 154
    const-string v8, "&digest="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getauth/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v9}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 155
    const-string v8, " HTTP/1.1\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    const-string v8, "Host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v7, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v9, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 157
    const-string v8, "Content-Length: 0\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 158
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 162
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 163
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v7, "item_getauth"

    invoke-virtual {p0, v7, v1}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-nez v7, :cond_5

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 191
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 192
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 193
    :cond_2
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v8, "Flea.item_getauth: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    move v7, v10

    .line 163
    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 196
    .local v4, e:Ljava/lang/Exception;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.item_getauth: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 167
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .local v5, line:Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 171
    :goto_3
    const-string v7, "unknown data"

    iput-object v7, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    .line 172
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 183
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 166
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v5           #line:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #line:Ljava/lang/String;
    if-nez v5, :cond_3

    goto :goto_3

    .line 173
    :cond_6
    const-string v7, "@e_nd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 174
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :cond_7
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, t:[Ljava/lang/String;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.item_getauth: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 177
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "ok"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 178
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v7

    .line 191
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 192
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 193
    :cond_9
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.item_getauth: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 195
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 196
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.item_getauth: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    .end local v4           #e:Ljava/lang/Exception;
    :cond_a
    const/4 v7, 0x0

    :try_start_6
    aget-object v7, v6, v7

    const-string v8, "error"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 181
    iput-object v5, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 185
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #t:[Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 186
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.item_getauth: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 189
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 191
    :goto_6
    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 192
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 193
    :cond_c
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.item_getauth: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 198
    :goto_7
    throw v7

    .line 195
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 196
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.item_getauth: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 189
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_6

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 185
    :catch_4
    move-exception v7

    move-object v4, v7

    goto :goto_5

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_5
.end method

.method item_match(Lcom/fleapapa/helper/Interest;Ljava/lang/String;Lcom/fleapapa/helper/ItemRoute;Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 22
    .parameter "interest"
    .parameter "args"
    .parameter "route"
    .parameter "handler"
    .parameter "eachrow"

    .prologue
    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x0

    .line 620
    .end local p1
    :goto_0
    return v17

    .line 514
    .restart local p1
    :cond_0
    const/4 v14, 0x0

    .line 516
    .local v14, nm:I
    const/4 v6, 0x0

    .line 517
    .local v6, br:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 520
    .local v8, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 523
    .end local v8           #bw:Ljava/io/BufferedWriter;
    .local v9, bw:Ljava/io/BufferedWriter;
    if-eqz p1, :cond_3

    .line 524
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Interest;->code:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v10

    .line 527
    .local v10, cat:Lcom/fleapapa/helper/Category;
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "client=apk&uid="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    sget v18, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 529
    const-string v18, "&code="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v10

    iget v0, v0, Lcom/fleapapa/helper/Category;->code:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 530
    const-string v18, "&type="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v10

    iget v0, v0, Lcom/fleapapa/helper/Category;->type:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 531
    const-string v18, "&lat="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->center:Lcom/google/android/maps/GeoPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L

    div-double v18, v18, v20

    :goto_2
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 532
    const-string v18, "&lon="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->center:Lcom/google/android/maps/GeoPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L

    div-double v18, v18, v20

    :goto_3
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 533
    const-string v18, "&dlat="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->dlati:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L

    div-double v18, v18, v20

    :goto_4
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 534
    const-string v18, "&dlon="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    iget v0, v0, Lcom/fleapapa/helper/ItemRoute;->dloni:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L

    div-double v18, v18, v20

    :goto_5
    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 535
    const-string v18, "&keywd="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Interest;->keyw:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Interest;->keyw:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_6
    invoke-static/range {v18 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 537
    const-string v18, "&noad="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v10

    iget-boolean v0, v0, Lcom/fleapapa/helper/Category;->noAd:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    :goto_7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 538
    const-string v18, "&excl0="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/fleapapa/helper/Flea;->excl0:Z

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    :goto_8
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 539
    if-eqz p1, :cond_d

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "&flags="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v19, Lcom/fleapapa/util/My;->flags:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 540
    if-eqz p2, :cond_e

    move-object/from16 v18, p2

    :goto_a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 541
    if-eqz p3, :cond_f

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "&mdist="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v19, Lcom/fleapapa/helper/ItemRoute;->mdist:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 542
    if-eqz p3, :cond_10

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "&points="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->pstr:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 527
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 545
    .local v15, params:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "POST /html/match.htm HTTP/1.1\r\nHost: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    sget-object v18, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v19, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 547
    const-string v18, "Cookie: tzoffs="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/fleapapa/util/My;->tzOffset:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 548
    const-string v18, "Content-type: application/x-www-form-urlencoded\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 549
    const-string v18, "Content-Length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 550
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 551
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 545
    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 553
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/fleapapa/helper/Category;->noAd:Z

    .line 554
    const/16 v17, 0x1

    sput-boolean v17, Lcom/fleapapa/helper/Flea;->excl0:Z

    .line 555
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    .line 557
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 558
    .end local v6           #br:Ljava/io/BufferedReader;
    .local v7, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v17, "item_match"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    if-nez v17, :cond_16

    .line 612
    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 613
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 614
    :cond_2
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v18, "Flea.item_match: done"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 558
    :goto_d
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 526
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v10           #cat:Lcom/fleapapa/helper/Category;
    .end local v15           #params:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local p1
    :cond_3
    :try_start_4
    sget-object v10, Lcom/fleapapa/helper/Category;->root:Lcom/fleapapa/helper/Category;

    .restart local v10       #cat:Lcom/fleapapa/helper/Category;
    goto/16 :goto_1

    .line 531
    :cond_4
    sget-object v18, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual/range {v18 .. v18}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    goto/16 :goto_2

    .line 532
    :cond_5
    sget-object v18, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual/range {v18 .. v18}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    goto/16 :goto_3

    .line 533
    :cond_6
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Interest;->dist:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Interest;->dist:I

    move/from16 v18, v0

    :goto_e
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x1b58

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L

    div-double v18, v18, v20

    goto/16 :goto_4

    :cond_7
    const/16 v18, 0x0

    goto :goto_e

    .line 534
    :cond_8
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Interest;->dist:I

    move/from16 v18, v0

    if-lez v18, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Interest;->dist:I

    move/from16 v18, v0

    :goto_f
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x1b58

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L

    div-double v18, v18, v20

    goto/16 :goto_5

    :cond_9
    const/16 v18, 0x0

    goto :goto_f

    .line 535
    :cond_a
    const-string v18, ""

    goto/16 :goto_6

    .line 537
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 538
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 539
    :cond_d
    const-string v18, ""

    goto/16 :goto_9

    .line 540
    :cond_e
    const-string v18, ""

    goto/16 :goto_a

    .line 541
    :cond_f
    const-string v18, ""

    goto/16 :goto_b

    .line 542
    :cond_10
    const-string v18, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_c

    .line 616
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local p1
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v15       #params:Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v11, v17

    .line 617
    .local v11, e:Ljava/lang/Exception;
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Flea.item_match: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 562
    .end local v11           #e:Ljava/lang/Exception;
    .local v13, line:Ljava/lang/String;
    :cond_11
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_16

    .line 566
    :cond_12
    :goto_10
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v13

    if-nez v13, :cond_17

    .line 612
    :cond_13
    if-eqz v9, :cond_14

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 613
    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 614
    :cond_15
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v18, "Flea.item_match: done"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v8, v9

    .end local v9           #bw:Ljava/io/BufferedWriter;
    .restart local v8       #bw:Ljava/io/BufferedWriter;
    move-object v6, v7

    .line 620
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v10           #cat:Lcom/fleapapa/helper/Category;
    .end local v13           #line:Ljava/lang/String;
    .end local v15           #params:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    :goto_11
    if-lez v14, :cond_1f

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 561
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #bw:Ljava/io/BufferedWriter;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v9       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #cat:Lcom/fleapapa/helper/Category;
    .restart local v15       #params:Ljava/lang/String;
    :cond_16
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #line:Ljava/lang/String;
    if-nez v13, :cond_11

    goto :goto_10

    .line 567
    :cond_17
    const-string v17, "@e_nd"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_13

    .line 568
    const-string v17, "@i_"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 569
    invoke-static {v13}, Lcom/fleapapa/helper/Item;->decodeDesc(Ljava/lang/String;)Lcom/fleapapa/helper/Item;

    move-result-object v12

    .line 570
    .local v12, item:Lcom/fleapapa/helper/Item;
    if-eqz v12, :cond_12

    .line 571
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "item_match: matched item["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    add-int/lit8 v14, v14, 0x1

    .line 576
    if-eqz p4, :cond_12

    .line 577
    if-eqz p5, :cond_12

    .line 578
    invoke-virtual/range {p4 .. p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_10

    .line 607
    .end local v12           #item:Lcom/fleapapa/helper/Item;
    .end local v13           #line:Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v11, v17

    move-object v8, v9

    .end local v9           #bw:Ljava/io/BufferedWriter;
    .restart local v8       #bw:Ljava/io/BufferedWriter;
    move-object v6, v7

    .line 608
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v10           #cat:Lcom/fleapapa/helper/Category;
    .end local v15           #params:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v11       #e:Ljava/lang/Exception;
    :goto_12
    :try_start_8
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Flea.item_match: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 612
    if-eqz v8, :cond_18

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 613
    :cond_18
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 614
    :cond_19
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v18, "Flea.item_match: done"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_11

    .line 616
    :catch_2
    move-exception v17

    move-object/from16 v11, v17

    .line 617
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Flea.item_match: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 581
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #bw:Ljava/io/BufferedWriter;
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v9       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #cat:Lcom/fleapapa/helper/Category;
    .restart local v13       #line:Ljava/lang/String;
    .restart local v15       #params:Ljava/lang/String;
    :cond_1a
    :try_start_a
    const-string v17, "@a_"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 582
    const-string v17, "@a_"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "\\\\"

    const/16 v19, 0x9

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v16

    .line 584
    .local v16, t:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_12

    .line 585
    const/16 v17, 0x0

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v10

    .line 588
    if-eqz v10, :cond_1e

    move-object v0, v10

    iget-boolean v0, v0, Lcom/fleapapa/helper/Category;->isleaf:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1e

    .line 589
    move-object v0, v10

    iget-object v0, v0, Lcom/fleapapa/helper/Category;->ads:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_1b

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/fleapapa/helper/Category;->ads:Ljava/util/HashMap;

    .line 590
    :cond_1b
    iget-object v5, v10, Lcom/fleapapa/helper/Category;->ads:Ljava/util/HashMap;

    .line 595
    .local v5, ads:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/fleapapa/helper/Ad;>;"
    :goto_13
    const/16 v17, 0x2

    aget-object v17, v16, v17

    const-string v18, "http"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 597
    new-instance v4, Lcom/fleapapa/helper/Ad;

    const/16 v17, 0x2

    aget-object v17, v16, v17

    const/16 v18, 0x3

    aget-object v18, v16, v18

    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/fleapapa/helper/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    .local v4, ad:Lcom/fleapapa/helper/Ad;
    const/16 v17, 0x4

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/fleapapa/helper/Ad;->lati:I

    .line 599
    const/16 v17, 0x5

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/fleapapa/helper/Ad;->loni:I

    .line 600
    const/16 v17, 0x6

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/fleapapa/helper/Ad;->dist:I

    .line 601
    const/16 v17, 0x7

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/fleapapa/helper/Ad;->wide:I

    .line 602
    const/16 v17, 0x8

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/fleapapa/helper/Ad;->high:I

    .line 603
    move-object v0, v4

    iget-object v0, v0, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_10

    .line 610
    .end local v4           #ad:Lcom/fleapapa/helper/Ad;
    .end local v5           #ads:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/fleapapa/helper/Ad;>;"
    .end local v13           #line:Ljava/lang/String;
    .end local v16           #t:[Ljava/lang/String;
    :catchall_0
    move-exception v17

    move-object v8, v9

    .end local v9           #bw:Ljava/io/BufferedWriter;
    .restart local v8       #bw:Ljava/io/BufferedWriter;
    move-object v6, v7

    .line 612
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v10           #cat:Lcom/fleapapa/helper/Category;
    .end local v15           #params:Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    :goto_14
    if-eqz v8, :cond_1c

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 613
    :cond_1c
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 614
    :cond_1d
    sget-object v18, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v19, "Flea.item_match: done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 619
    :goto_15
    throw v17

    .line 593
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #bw:Ljava/io/BufferedWriter;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v9       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #cat:Lcom/fleapapa/helper/Category;
    .restart local v13       #line:Ljava/lang/String;
    .restart local v15       #params:Ljava/lang/String;
    .restart local v16       #t:[Ljava/lang/String;
    :cond_1e
    :try_start_c
    sget-object v5, Lcom/fleapapa/helper/Ad;->dads:Ljava/util/HashMap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .restart local v5       #ads:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/fleapapa/helper/Ad;>;"
    goto/16 :goto_13

    .line 616
    .end local v5           #ads:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/fleapapa/helper/Ad;>;"
    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v9           #bw:Ljava/io/BufferedWriter;
    .end local v10           #cat:Lcom/fleapapa/helper/Category;
    .end local v13           #line:Ljava/lang/String;
    .end local v15           #params:Ljava/lang/String;
    .end local v16           #t:[Ljava/lang/String;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v8       #bw:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v18

    move-object/from16 v11, v18

    .line 617
    .restart local v11       #e:Ljava/lang/Exception;
    sget-object v18, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Flea.item_match: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 616
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #bw:Ljava/io/BufferedWriter;
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v9       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #cat:Lcom/fleapapa/helper/Category;
    .restart local v13       #line:Ljava/lang/String;
    .restart local v15       #params:Ljava/lang/String;
    :catch_4
    move-exception v17

    move-object/from16 v11, v17

    .line 617
    .restart local v11       #e:Ljava/lang/Exception;
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Flea.item_match: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .end local v9           #bw:Ljava/io/BufferedWriter;
    .restart local v8       #bw:Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto/16 :goto_11

    .line 620
    .end local v10           #cat:Lcom/fleapapa/helper/Category;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #line:Ljava/lang/String;
    .end local v15           #params:Ljava/lang/String;
    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 610
    :catchall_1
    move-exception v17

    goto :goto_14

    .end local v8           #bw:Ljava/io/BufferedWriter;
    .restart local v9       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9           #bw:Ljava/io/BufferedWriter;
    .restart local v8       #bw:Ljava/io/BufferedWriter;
    goto :goto_14

    .line 607
    .restart local p1
    :catch_5
    move-exception v17

    move-object/from16 v11, v17

    goto/16 :goto_12

    .end local v8           #bw:Ljava/io/BufferedWriter;
    .end local p1
    .restart local v9       #bw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v17

    move-object/from16 v11, v17

    move-object v8, v9

    .end local v9           #bw:Ljava/io/BufferedWriter;
    .restart local v8       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_12
.end method

.method item_qa(Lcom/fleapapa/helper/Item;Lcom/fleapapa/helper/QA;Ljava/lang/String;I)Z
    .locals 24
    .parameter "item"
    .parameter "qa"
    .parameter "feedback"
    .parameter "rating"

    .prologue
    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 842
    .end local p3
    :goto_0
    return v3

    .line 736
    .restart local p3
    :cond_0
    const/4 v11, 0x0

    .line 737
    .local v11, br:Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 740
    .local v13, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v14, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v14, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 742
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .local v14, bw:Ljava/io/BufferedWriter;
    if-nez p2, :cond_3

    const/4 v3, 0x0

    move/from16 v21, v3

    .line 744
    .local v21, rid:I
    :goto_1
    if-eqz p3, :cond_4

    .line 745
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "op=save&uid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    sget v4, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 747
    const-string v4, "&iid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 748
    const-string v4, "&rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 749
    const-string v4, "&rat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 750
    const-string v4, "&ruid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->uid:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 751
    const-string v4, "&private=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 752
    const-string v4, "&body="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 753
    const-string v4, "&digest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 745
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 768
    .local v19, params:Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "POST /html/comt.htm HTTP/1.1\r\nHost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    sget-object v4, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v5, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 770
    const-string v4, "Cookie: tzoffs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/fleapapa/util/My;->tzOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 771
    const-string v4, "Content-type: application/x-www-form-urlencoded\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 772
    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 773
    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 774
    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 768
    invoke-virtual {v14, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->flush()V

    .line 778
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 779
    .end local v11           #br:Ljava/io/BufferedReader;
    .local v12, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v3, "item_qa"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v3

    if-nez v3, :cond_6

    .line 834
    if-eqz v14, :cond_1

    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    .line 835
    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 836
    :cond_2
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v4, "Flea.item_qa: done"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 779
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 742
    .end local v12           #br:Ljava/io/BufferedReader;
    .end local v19           #params:Ljava/lang/String;
    .end local v21           #rid:I
    .restart local v11       #br:Ljava/io/BufferedReader;
    .restart local p3
    :cond_3
    :try_start_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/fleapapa/helper/QA;->qid:I

    move v3, v0

    move/from16 v21, v3

    goto/16 :goto_1

    .line 756
    .restart local v21       #rid:I
    :cond_4
    if-eqz p2, :cond_5

    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "op=delete&uid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    sget v4, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 759
    const-string v4, "&iid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 760
    const-string v4, "&rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 761
    const-string v4, "&digest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19       #params:Ljava/lang/String;
    goto/16 :goto_2

    .line 765
    .end local v19           #params:Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "op=get&iid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 765
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v19

    .restart local v19       #params:Ljava/lang/String;
    goto/16 :goto_2

    .line 838
    .end local v11           #br:Ljava/io/BufferedReader;
    .end local p3
    .restart local v12       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    move-object/from16 v17, v3

    .line 839
    .local v17, e:Ljava/lang/Exception;
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flea.item_qa: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 784
    .end local v17           #e:Ljava/lang/Exception;
    :cond_6
    const/16 v16, 0x0

    .line 785
    .local v16, chunked:Z
    :cond_7
    :goto_4
    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, line:Ljava/lang/String;
    if-nez v18, :cond_d

    .line 789
    :cond_8
    const/4 v15, 0x0

    .line 793
    .local v15, chsiz:I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 794
    const/16 p2, 0x0

    move-object/from16 v20, p2

    .line 795
    .end local p2
    .local v20, qa:Lcom/fleapapa/helper/QA;
    :cond_9
    :goto_5
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_e

    .line 827
    :cond_a
    :goto_6
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " feedbacks on item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 834
    if-eqz v14, :cond_b

    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    .line 835
    :cond_b
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 836
    :cond_c
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v4, "Flea.item_qa: done"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    move-object/from16 p2, v20

    .line 842
    .end local v15           #chsiz:I
    .end local v16           #chunked:Z
    .end local v18           #line:Ljava/lang/String;
    .end local v19           #params:Ljava/lang/String;
    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .end local v21           #rid:I
    .restart local p2
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    move-object v3, v0

    if-nez v3, :cond_18

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 786
    .end local v11           #br:Ljava/io/BufferedReader;
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .restart local v12       #br:Ljava/io/BufferedReader;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    .restart local v16       #chunked:Z
    .restart local v18       #line:Ljava/lang/String;
    .restart local v19       #params:Ljava/lang/String;
    .restart local v21       #rid:I
    :cond_d
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 787
    const-string v3, "Transfer-Encoding"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result v3

    if-eqz v3, :cond_7

    const/16 v16, 0x1

    goto :goto_4

    .line 797
    .end local p2
    .restart local v15       #chsiz:I
    .restart local v20       #qa:Lcom/fleapapa/helper/QA;
    :cond_e
    :try_start_9
    const-string v3, "@e_nd"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    .line 798
    if-eqz v16, :cond_f

    if-gtz v15, :cond_f

    .line 799
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 800
    const-string v3, "\\r*\\n"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 801
    .local v22, t:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v22, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 803
    if-gtz v15, :cond_9

    goto/16 :goto_6

    .line 806
    .end local v22           #t:[Ljava/lang/String;
    :cond_f
    const-string v3, "@q_"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 807
    const-string v3, "@b_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\\\"

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v23

    .line 808
    .local v23, tk:[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move v3, v0

    const/16 v4, 0xa

    if-lt v3, v4, :cond_9

    .line 809
    new-instance p2, Lcom/fleapapa/helper/QA;

    .line 810
    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 811
    const/4 v3, 0x1

    aget-object v3, v23, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 812
    const/4 v3, 0x3

    aget-object v3, v23, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 813
    const/4 v3, 0x4

    aget-object v8, v23, v3

    .line 814
    const/4 v3, 0x2

    aget-object v3, v23, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 815
    const/4 v3, 0x5

    aget-object v10, v23, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    .line 809
    invoke-direct/range {v3 .. v10}, Lcom/fleapapa/helper/QA;-><init>(Lcom/fleapapa/helper/Item;IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 816
    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .restart local p2
    const/4 v3, 0x6

    :try_start_a
    aget-object v3, v23, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/fleapapa/helper/QA;->lati:I

    .line 817
    const/4 v3, 0x7

    aget-object v3, v23, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/fleapapa/helper/QA;->loni:I

    .line 818
    const/16 v3, 0x8

    aget-object v3, v23, v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    :goto_8
    move v0, v3

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/fleapapa/helper/QA;->bPrivate:Z

    .line 819
    const/16 v3, 0x9

    aget-object v3, v23, v3

    move-object v0, v3

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/fleapapa/helper/QA;->tago:Ljava/lang/String;

    .line 824
    .end local v23           #tk:[Ljava/lang/String;
    :goto_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v15, v3

    move-object/from16 v20, p2

    .end local p2
    .restart local v20       #qa:Lcom/fleapapa/helper/QA;
    goto/16 :goto_5

    .line 818
    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .restart local v23       #tk:[Ljava/lang/String;
    .restart local p2
    :cond_10
    const/4 v3, 0x1

    goto :goto_8

    .line 822
    .end local v23           #tk:[Ljava/lang/String;
    .end local p2
    .restart local v20       #qa:Lcom/fleapapa/helper/QA;
    :cond_11
    if-eqz v20, :cond_12

    .line 823
    :try_start_b
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_13

    move-object/from16 v3, v18

    :goto_a
    move-object v0, v3

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    :cond_12
    move-object/from16 p2, v20

    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .restart local p2
    goto :goto_9

    .end local p2
    .restart local v20       #qa:Lcom/fleapapa/helper/QA;
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v3

    goto :goto_a

    .line 829
    .end local v12           #br:Ljava/io/BufferedReader;
    .end local v14           #bw:Ljava/io/BufferedWriter;
    .end local v15           #chsiz:I
    .end local v16           #chunked:Z
    .end local v18           #line:Ljava/lang/String;
    .end local v19           #params:Ljava/lang/String;
    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .end local v21           #rid:I
    .restart local v11       #br:Ljava/io/BufferedReader;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    .restart local p2
    .restart local p3
    :catch_1
    move-exception v3

    move-object/from16 v17, v3

    .line 830
    .end local p3
    .restart local v17       #e:Ljava/lang/Exception;
    :goto_b
    :try_start_c
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flea.item_qa: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 834
    if-eqz v13, :cond_14

    :try_start_d
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    .line 835
    :cond_14
    if-eqz v11, :cond_15

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 836
    :cond_15
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v4, "Flea.item_qa: done"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_7

    .line 838
    :catch_2
    move-exception v3

    move-object/from16 v17, v3

    .line 839
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flea.item_qa: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 832
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 834
    :goto_c
    if-eqz v13, :cond_16

    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    .line 835
    :cond_16
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 836
    :cond_17
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v5, "Flea.item_qa: done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 841
    :goto_d
    throw v3

    .line 838
    :catch_3
    move-exception v4

    move-object/from16 v17, v4

    .line 839
    .restart local v17       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flea.item_qa: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 838
    .end local v11           #br:Ljava/io/BufferedReader;
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .end local v17           #e:Ljava/lang/Exception;
    .end local p2
    .restart local v12       #br:Ljava/io/BufferedReader;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    .restart local v15       #chsiz:I
    .restart local v16       #chunked:Z
    .restart local v18       #line:Ljava/lang/String;
    .restart local v19       #params:Ljava/lang/String;
    .restart local v20       #qa:Lcom/fleapapa/helper/QA;
    .restart local v21       #rid:I
    :catch_4
    move-exception v3

    move-object/from16 v17, v3

    .line 839
    .restart local v17       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flea.item_qa: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    move-object/from16 p2, v20

    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .restart local p2
    goto/16 :goto_7

    .line 842
    .end local v15           #chsiz:I
    .end local v16           #chunked:Z
    .end local v17           #e:Ljava/lang/Exception;
    .end local v18           #line:Ljava/lang/String;
    .end local v19           #params:Ljava/lang/String;
    .end local v21           #rid:I
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_19

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 832
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    goto :goto_c

    .end local v11           #br:Ljava/io/BufferedReader;
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .restart local v12       #br:Ljava/io/BufferedReader;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    .restart local v19       #params:Ljava/lang/String;
    .restart local v21       #rid:I
    :catchall_2
    move-exception v3

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    goto :goto_c

    .end local v11           #br:Ljava/io/BufferedReader;
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .end local p2
    .restart local v12       #br:Ljava/io/BufferedReader;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    .restart local v15       #chsiz:I
    .restart local v16       #chunked:Z
    .restart local v18       #line:Ljava/lang/String;
    .restart local v20       #qa:Lcom/fleapapa/helper/QA;
    :catchall_3
    move-exception v3

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    move-object/from16 p2, v20

    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .restart local p2
    goto :goto_c

    .line 829
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .end local v15           #chsiz:I
    .end local v16           #chunked:Z
    .end local v18           #line:Ljava/lang/String;
    .end local v19           #params:Ljava/lang/String;
    .end local v21           #rid:I
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v3

    move-object/from16 v17, v3

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_b

    .end local v11           #br:Ljava/io/BufferedReader;
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .restart local v12       #br:Ljava/io/BufferedReader;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    .restart local v19       #params:Ljava/lang/String;
    .restart local v21       #rid:I
    :catch_6
    move-exception v3

    move-object/from16 v17, v3

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    goto/16 :goto_b

    .end local v11           #br:Ljava/io/BufferedReader;
    .end local v13           #bw:Ljava/io/BufferedWriter;
    .end local p2
    .restart local v12       #br:Ljava/io/BufferedReader;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    .restart local v15       #chsiz:I
    .restart local v16       #chunked:Z
    .restart local v18       #line:Ljava/lang/String;
    .restart local v20       #qa:Lcom/fleapapa/helper/QA;
    :catch_7
    move-exception v3

    move-object/from16 v17, v3

    move-object v13, v14

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v13       #bw:Ljava/io/BufferedWriter;
    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    move-object/from16 p2, v20

    .end local v20           #qa:Lcom/fleapapa/helper/QA;
    .restart local p2
    goto/16 :goto_b
.end method

.method item_save(Lcom/fleapapa/helper/Item;I)I
    .locals 18
    .parameter "item"
    .parameter "aid"

    .prologue
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    .line 328
    .end local p1
    :goto_0
    return v13

    .line 265
    .restart local p1
    :cond_0
    const/4 v3, 0x0

    .line 266
    .local v3, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 268
    .local v5, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 270
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .local v6, bw:Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    :try_start_1
    check-cast v7, [Ljava/lang/String;

    .line 271
    .local v7, dt:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    move-object v13, v0

    if-eqz v13, :cond_1

    .line 273
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    move-object v13, v0

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->toUTC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 274
    .local v12, utc:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 275
    const-string v13, " "

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 277
    .end local v12           #utc:Ljava/lang/String;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "op=save&uid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    sget v14, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 279
    const-string v14, "&aid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 280
    const-string v14, "&iid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 281
    const-string v14, "&digest="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v15}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 282
    const-string v14, "&code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->code:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 283
    const-string v14, "&lon="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->loni:I

    move v14, v0

    int-to-double v14, v14

    const-wide v16, 0x412e848000000000L

    div-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 284
    const-string v14, "&lat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->lati:I

    move v14, v0

    int-to-double v14, v14

    const-wide v16, 0x412e848000000000L

    div-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 285
    const-string v14, "&title="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 286
    const-string v14, "&detail="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v14, v15}, Lcom/fleapapa/util/MyUtil;->addTags(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 287
    const-string v14, "&rdist="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->rdist:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 288
    const-string v14, "&type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->type:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 289
    const-string v14, "&buynow="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->buynow:D

    move-wide v14, v0

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 290
    const-string v14, "&reserve="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->reserve:D

    move-wide v14, v0

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 291
    const-string v14, "&biddable="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->biddable:Z

    move v14, v0

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 292
    const-string v14, "&callable="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->callable:Z

    move v14, v0

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 293
    const-string v14, "&mailable="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->mailable:Z

    move v14, v0

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 294
    const-string v14, "&date="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_7

    array-length v14, v7

    if-lez v14, :cond_7

    const/4 v14, 0x0

    aget-object v14, v7, v14

    :goto_4
    invoke-static {v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 295
    const-string v14, "&time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_8

    array-length v14, v7

    const/4 v15, 0x1

    if-le v14, v15, :cond_8

    const/4 v14, 0x1

    aget-object v14, v7, v14

    :goto_5
    invoke-static {v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 296
    const-string v14, "&flags="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 297
    const-string v14, "&minbid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->minbid:D

    move-wide v14, v0

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 298
    const-string v14, "&qty="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->qty:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 299
    const-string v14, "&currency="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/fleapapa/helper/Item;->currency:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 300
    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 277
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, params:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "POST /html/iedit.htm HTTP/1.1\r\nHost: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    sget-object v14, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v15, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 304
    const-string v14, "Cookie: tzoffs="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/fleapapa/util/My;->tzOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 305
    const-string v14, "Content-type: application/x-www-form-urlencoded\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 306
    const-string v14, "Content-Length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 307
    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 308
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 302
    invoke-virtual {v6, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 312
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 313
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v13, "item_save"

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v13

    if-nez v13, :cond_b

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 342
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v7           #dt:[Ljava/lang/String;
    .end local v10           #params:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :goto_6
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 343
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 344
    :cond_3
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v14, "Flea.item_save: done"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 313
    :goto_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 291
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    .restart local v7       #dt:[Ljava/lang/String;
    .restart local p1
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 292
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 293
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 294
    :cond_7
    :try_start_4
    const-string v14, ""

    goto/16 :goto_4

    .line 295
    :cond_8
    const-string v14, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_5

    .line 346
    .end local v6           #bw:Ljava/io/BufferedWriter;
    .end local v7           #dt:[Ljava/lang/String;
    .end local p1
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 347
    .local v8, e:Ljava/lang/Exception;
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Flea.item_save: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 317
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    .restart local v7       #dt:[Ljava/lang/String;
    .local v9, line:Ljava/lang/String;
    .restart local v10       #params:Ljava/lang/String;
    :cond_9
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b

    .line 321
    :goto_8
    const-string v13, "unknown data"

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    .line 322
    :cond_a
    :goto_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 333
    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 316
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .end local v9           #line:Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    :cond_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #line:Ljava/lang/String;
    if-nez v9, :cond_9

    goto :goto_8

    .line 323
    :cond_c
    const-string v13, "@e_nd"

    invoke-virtual {v9, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_d

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 324
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    :cond_d
    const-string v13, "="

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 325
    .local v11, t:[Ljava/lang/String;
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Flea.item_save: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    array-length v13, v11

    const/4 v14, 0x2

    if-lt v13, v14, :cond_a

    .line 327
    const/4 v13, 0x0

    aget-object v13, v11, v13

    const-string v14, "ok"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 328
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v13

    .line 342
    if-eqz v6, :cond_e

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 343
    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 344
    :cond_f
    sget-object v14, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v15, "Flea.item_save: done"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 346
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 347
    .restart local v8       #e:Ljava/lang/Exception;
    sget-object v14, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Flea.item_save: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    .end local v8           #e:Ljava/lang/Exception;
    :cond_10
    const/4 v13, 0x0

    :try_start_7
    aget-object v13, v11, v13

    const-string v14, "error"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 331
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_9

    .line 335
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #t:[Ljava/lang/String;
    :catch_2
    move-exception v13

    move-object v8, v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 336
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v7           #dt:[Ljava/lang/String;
    .end local v10           #params:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v8       #e:Ljava/lang/Exception;
    :goto_a
    :try_start_8
    sget-object v13, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Flea.item_save: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    .line 340
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 342
    :goto_b
    if-eqz v5, :cond_11

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 343
    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 344
    :cond_12
    sget-object v14, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v15, "Flea.item_save: done"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 349
    :goto_c
    throw v13

    .line 346
    :catch_3
    move-exception v14

    move-object v8, v14

    .line 347
    .restart local v8       #e:Ljava/lang/Exception;
    sget-object v14, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Flea.item_save: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 340
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    goto :goto_b

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #bw:Ljava/io/BufferedWriter;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    .restart local v7       #dt:[Ljava/lang/String;
    .restart local v10       #params:Ljava/lang/String;
    :catchall_2
    move-exception v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_b

    .line 335
    .end local v7           #dt:[Ljava/lang/String;
    .end local v10           #params:Ljava/lang/String;
    .restart local p1
    :catch_4
    move-exception v13

    move-object v8, v13

    goto :goto_a

    .end local v5           #bw:Ljava/io/BufferedWriter;
    .end local p1
    .restart local v6       #bw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v13

    move-object v8, v13

    move-object v5, v6

    .end local v6           #bw:Ljava/io/BufferedWriter;
    .restart local v5       #bw:Ljava/io/BufferedWriter;
    goto :goto_a
.end method

.method item_watch(Lcom/fleapapa/helper/Item;Z)Z
    .locals 13
    .parameter "item"
    .parameter "watch"

    .prologue
    const/4 v11, 0x0

    const-string v8, "\r\n"

    const-string v8, "Flea.item_watch: done"

    const-string v12, "Flea.item_watch: "

    .line 1011
    invoke-virtual {p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v11

    .line 1058
    :goto_0
    return v8

    .line 1012
    :cond_0
    const/4 v0, 0x0

    .line 1013
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1015
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    iget-object v9, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1016
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    :try_start_1
    iget v8, p1, Lcom/fleapapa/helper/Item;->flags:I

    if-eqz p2, :cond_3

    const/high16 v9, 0x1000

    :goto_1
    and-int/2addr v8, v9

    if-nez v8, :cond_4

    iget v8, p1, Lcom/fleapapa/helper/Item;->uid:I

    move v7, v8

    .line 1017
    .local v7, uee:I
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GET /html/iedit.htm?op=watch&uid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    sget v9, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1019
    const-string v9, "&iid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_5

    iget v9, p1, Lcom/fleapapa/helper/Item;->iid:I

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1020
    const-string v9, "&uee="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1021
    const-string v9, "&digest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v10}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1022
    const-string v9, " HTTP/1.1\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1023
    const-string v9, "Host: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v10, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1024
    const-string v9, "Content-Length: 0\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1025
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1017
    invoke-virtual {v3, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1029
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1030
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v8, "item_watch"

    invoke-virtual {p0, v8, v1}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result v8

    if-nez v8, :cond_a

    .line 1050
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1051
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1052
    :cond_2
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.item_watch: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    move v8, v11

    .line 1030
    goto/16 :goto_0

    .line 1016
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v7           #uee:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    const/high16 v9, 0x2000

    goto/16 :goto_1

    :cond_4
    :try_start_4
    iget v8, p1, Lcom/fleapapa/helper/Item;->uid:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    neg-int v8, v8

    move v7, v8

    goto/16 :goto_2

    .restart local v7       #uee:I
    :cond_5
    move v9, v11

    .line 1019
    goto/16 :goto_3

    .line 1054
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1055
    .local v4, e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.item_watch: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1034
    .end local v4           #e:Ljava/lang/Exception;
    .local v5, line:Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    .line 1038
    :cond_7
    :goto_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v5

    if-nez v5, :cond_b

    .line 1050
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1051
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1052
    :cond_9
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.item_watch: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #uee:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_6
    move v8, v11

    .line 1058
    goto/16 :goto_0

    .line 1033
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v7       #uee:I
    :cond_a
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #line:Ljava/lang/String;
    if-nez v5, :cond_6

    goto :goto_5

    .line 1039
    :cond_b
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1040
    .local v6, t:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_7

    .line 1041
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "ok"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v8

    if-eqz v8, :cond_e

    .line 1050
    :goto_7
    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1051
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1052
    :cond_d
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.item_watch: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1041
    :goto_8
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1054
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 1055
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.item_watch: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1042
    .end local v4           #e:Ljava/lang/Exception;
    :cond_e
    const/4 v8, 0x0

    :try_start_9
    aget-object v8, v6, v8

    const-string v9, "error"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_7

    .line 1045
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #t:[Ljava/lang/String;
    .end local v7           #uee:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v8

    move-object v4, v8

    .line 1046
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_9
    :try_start_a
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.item_watch: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1050
    if-eqz v2, :cond_f

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1051
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1052
    :cond_10
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.item_watch: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_6

    .line 1054
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 1055
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.item_watch: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1048
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1050
    :goto_a
    if-eqz v2, :cond_11

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1051
    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1052
    :cond_12
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v10, "Flea.item_watch: done"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 1057
    :goto_b
    throw v8

    .line 1054
    :catch_4
    move-exception v9

    move-object v4, v9

    .line 1055
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Flea.item_watch: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1054
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #uee:I
    :catch_5
    move-exception v8

    move-object v4, v8

    .line 1055
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.item_watch: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 1048
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #uee:I
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_a

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v7       #uee:I
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_a

    .line 1045
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v7           #uee:I
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v8

    move-object v4, v8

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto/16 :goto_9

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v7       #uee:I
    :catch_7
    move-exception v8

    move-object v4, v8

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_9
.end method

.method parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    .locals 10
    .parameter "func"
    .parameter "br"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "Flea."

    .line 1064
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v1           #line:Ljava/lang/String;
    :goto_0
    move v3, v6

    .line 1076
    :goto_1
    return v3

    .line 1065
    .restart local v1       #line:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flea."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": rsp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string v3, " "

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1067
    .local v2, t:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v8, :cond_0

    .line 1068
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    .line 1069
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "http/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1070
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_1

    .line 1073
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #t:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1074
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flea."

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method upload_check(I)I
    .locals 12
    .parameter "ucode"

    .prologue
    const/4 v10, 0x0

    const-string v7, "\r\n"

    const-string v7, "Flea.upload_check: done"

    const-string v11, "Flea.upload_check: "

    .line 459
    invoke-virtual {p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v10

    .line 490
    :goto_0
    return v7

    .line 460
    :cond_0
    const/4 v0, 0x0

    .line 461
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 463
    .local v2, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    iget-object v8, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 464
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .local v3, bw:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GET /html/iedit.htm?op=progress&uid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    sget v8, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 466
    const-string v8, "&ucode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 467
    const-string v8, " HTTP/1.1\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 468
    const-string v8, "Host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v7, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v9, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 469
    const-string v8, "Content-Length: 0\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 470
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 474
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 475
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    const-string v7, "upload_check"

    invoke-virtual {p0, v7, v1}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-nez v7, :cond_5

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 503
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 504
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 505
    :cond_2
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v8, "Flea.upload_check: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    move v7, v10

    .line 475
    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 508
    .local v4, e:Ljava/lang/Exception;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.upload_check: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 479
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .local v5, line:Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 483
    :goto_3
    const-string v7, "unknown data"

    iput-object v7, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    .line 484
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 495
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 478
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v5           #line:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #line:Ljava/lang/String;
    if-nez v5, :cond_3

    goto :goto_3

    .line 485
    :cond_6
    const-string v7, "@e_nd"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 486
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :cond_7
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, t:[Ljava/lang/String;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.upload_check: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 489
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "ok"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 490
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v7

    .line 503
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 504
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 505
    :cond_9
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.upload_check: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 507
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 508
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.upload_check: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 492
    .end local v4           #e:Ljava/lang/Exception;
    :cond_a
    const/4 v7, 0x0

    :try_start_6
    aget-object v7, v6, v7

    const-string v8, "error"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 493
    iput-object v5, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 497
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #t:[Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 498
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.upload_check: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 501
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 503
    :goto_6
    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 504
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 505
    :cond_c
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "Flea.upload_check: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 510
    :goto_7
    throw v7

    .line 507
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 508
    .restart local v4       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Flea.upload_check: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 501
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_6

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 497
    :catch_4
    move-exception v7

    move-object v4, v7

    goto :goto_5

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    goto :goto_5
.end method

.method upload_photo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 28
    .parameter "photo_uri"
    .parameter "ucode"

    .prologue
    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/Flea;->connected()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 435
    .end local p1
    :goto_0
    return-object v6

    .line 353
    .restart local p1
    :cond_0
    const/4 v11, 0x0

    .line 354
    .local v11, br:Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 355
    .local v14, bw:Ljava/io/BufferedWriter;
    const/16 v23, 0x0

    .line 357
    .local v23, os:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    .line 358
    new-instance v15, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v15, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 360
    .end local v14           #bw:Ljava/io/BufferedWriter;
    .local v15, bw:Ljava/io/BufferedWriter;
    :try_start_1
    sget-object v6, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 361
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 363
    .local v5, puri:Landroid/net/Uri;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 364
    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 365
    const-string v8, "_size"

    aput-object v8, v6, v7

    .line 367
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 362
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 368
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_5

    .line 369
    :cond_1
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: query("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") fail!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v14, v15

    .line 448
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #puri:Landroid/net/Uri;
    .end local v15           #bw:Ljava/io/BufferedWriter;
    .end local v16           #c:Landroid/database/Cursor;
    .end local p1
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    :goto_1
    if-eqz v14, :cond_2

    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    .line 449
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 450
    :cond_3
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 451
    :cond_4
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v7, "Flea.upload_photo: done"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 370
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v6

    move-object/from16 v17, v6

    .line 454
    .local v17, e:Ljava/lang/Exception;
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 372
    .end local v14           #bw:Ljava/io/BufferedWriter;
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #puri:Landroid/net/Uri;
    .restart local v15       #bw:Ljava/io/BufferedWriter;
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local p1
    :cond_5
    const/4 v6, 0x0

    :try_start_3
    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 373
    .local v18, file:Ljava/lang/String;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 374
    .local v24, size:I
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: uri="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: file="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: size="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: type="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 380
    const-string v6, "o(x^%x^x)o"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 384
    .local v10, bound:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 386
    const-string v7, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 387
    const-string v7, "Content-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 388
    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 384
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 389
    .local v19, head:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\r\n--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 391
    .local v26, tail:Ljava/lang/String;
    new-instance v14, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v14, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 393
    .end local v15           #bw:Ljava/io/BufferedWriter;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "POST /html/upload.pl?uid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    sget v7, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 395
    const-string v7, "&ucode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 396
    const-string v7, "&file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 397
    const-string v7, "&digest="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    invoke-static {v8}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 398
    const-string v7, " HTTP/1.1\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 399
    const-string v7, "Host: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v8, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 400
    const-string v7, "Content-Type: multipart/form-data; boundary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 401
    const-string v7, "Content-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v7

    add-int v7, v7, v24

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 402
    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 403
    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 393
    invoke-virtual {v14, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->flush()V

    .line 407
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 408
    .local v20, is:Ljava/io/InputStream;
    const/high16 v6, 0x1

    new-array v13, v6, [B

    .line 410
    .local v13, buf:[B
    const/16 v27, 0x0

    .local v27, tr:I
    :goto_3
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .local v22, nr:I
    if-gtz v22, :cond_6

    .line 412
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 413
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 414
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->flush()V

    .line 419
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/Flea;->sock:Ljava/net/Socket;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 420
    .end local v11           #br:Ljava/io/BufferedReader;
    .local v12, br:Ljava/io/BufferedReader;
    :try_start_5
    const-string v6, "upload_photo"

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/Flea;->parse_response(Ljava/lang/String;Ljava/io/BufferedReader;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    if-nez v6, :cond_9

    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 411
    :cond_6
    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, v23

    move-object v1, v13

    move v2, v6

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 410
    add-int v27, v27, v22

    goto :goto_3

    .line 424
    .end local v11           #br:Ljava/io/BufferedReader;
    .restart local v12       #br:Ljava/io/BufferedReader;
    .local v21, line:Ljava/lang/String;
    :cond_7
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    .line 428
    :goto_4
    const-string v6, "unknown data"

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    .line 429
    :cond_8
    :goto_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_a

    move-object v11, v12

    .line 440
    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 423
    .end local v11           #br:Ljava/io/BufferedReader;
    .end local v21           #line:Ljava/lang/String;
    .restart local v12       #br:Ljava/io/BufferedReader;
    :cond_9
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .restart local v21       #line:Ljava/lang/String;
    if-nez v21, :cond_7

    goto :goto_4

    .line 430
    :cond_a
    const-string v6, "@e_nd"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 431
    .end local v11           #br:Ljava/io/BufferedReader;
    .restart local v12       #br:Ljava/io/BufferedReader;
    :cond_b
    const-string v6, "=|,"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 432
    .local v25, t:[Ljava/lang/String;
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_8

    .line 434
    const/4 v6, 0x0

    aget-object v6, v25, v6

    const-string v7, "ok"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    const/4 v7, 0x3

    if-lt v6, v7, :cond_f

    .line 435
    const/4 v6, 0x2

    aget-object v6, v25, v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 448
    if-eqz v14, :cond_c

    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    .line 449
    :cond_c
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 450
    :cond_d
    if-eqz v23, :cond_e

    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 451
    :cond_e
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v8, "Flea.upload_photo: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 453
    :catch_1
    move-exception v7

    move-object/from16 v17, v7

    .line 454
    .restart local v17       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.upload_photo: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .end local v17           #e:Ljava/lang/Exception;
    :cond_f
    const/4 v6, 0x0

    :try_start_9
    aget-object v6, v25, v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 438
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_5

    .line 442
    .end local v21           #line:Ljava/lang/String;
    .end local v25           #t:[Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object/from16 v17, v6

    move-object v11, v12

    .line 443
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #puri:Landroid/net/Uri;
    .end local v10           #bound:Ljava/lang/String;
    .end local v12           #br:Ljava/io/BufferedReader;
    .end local v13           #buf:[B
    .end local v16           #c:Landroid/database/Cursor;
    .end local v18           #file:Ljava/lang/String;
    .end local v19           #head:Ljava/lang/String;
    .end local v20           #is:Ljava/io/InputStream;
    .end local v22           #nr:I
    .end local v24           #size:I
    .end local v26           #tail:Ljava/lang/String;
    .end local v27           #tr:I
    .restart local v11       #br:Ljava/io/BufferedReader;
    .restart local v17       #e:Ljava/lang/Exception;
    :goto_6
    :try_start_a
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Flea.upload_photo: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 446
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 448
    :goto_7
    if-eqz v14, :cond_10

    :try_start_b
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    .line 449
    :cond_10
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 450
    :cond_11
    if-eqz v23, :cond_12

    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 451
    :cond_12
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v8, "Flea.upload_photo: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 456
    :goto_8
    throw v6

    .line 453
    :catch_3
    move-exception v7

    move-object/from16 v17, v7

    .line 454
    .restart local v17       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Flea.upload_photo: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 446
    .end local v14           #bw:Ljava/io/BufferedWriter;
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #bw:Ljava/io/BufferedWriter;
    .restart local p1
    :catchall_1
    move-exception v6

    move-object v14, v15

    .end local v15           #bw:Ljava/io/BufferedWriter;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    goto :goto_7

    .end local v11           #br:Ljava/io/BufferedReader;
    .end local p1
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #puri:Landroid/net/Uri;
    .restart local v10       #bound:Ljava/lang/String;
    .restart local v12       #br:Ljava/io/BufferedReader;
    .restart local v13       #buf:[B
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v18       #file:Ljava/lang/String;
    .restart local v19       #head:Ljava/lang/String;
    .restart local v20       #is:Ljava/io/InputStream;
    .restart local v22       #nr:I
    .restart local v24       #size:I
    .restart local v26       #tail:Ljava/lang/String;
    .restart local v27       #tr:I
    :catchall_2
    move-exception v6

    move-object v11, v12

    .end local v12           #br:Ljava/io/BufferedReader;
    .restart local v11       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 442
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #puri:Landroid/net/Uri;
    .end local v10           #bound:Ljava/lang/String;
    .end local v13           #buf:[B
    .end local v16           #c:Landroid/database/Cursor;
    .end local v18           #file:Ljava/lang/String;
    .end local v19           #head:Ljava/lang/String;
    .end local v20           #is:Ljava/io/InputStream;
    .end local v22           #nr:I
    .end local v24           #size:I
    .end local v26           #tail:Ljava/lang/String;
    .end local v27           #tr:I
    :catch_4
    move-exception v6

    move-object/from16 v17, v6

    goto :goto_6

    .end local v14           #bw:Ljava/io/BufferedWriter;
    .restart local v15       #bw:Ljava/io/BufferedWriter;
    .restart local p1
    :catch_5
    move-exception v6

    move-object/from16 v17, v6

    move-object v14, v15

    .end local v15           #bw:Ljava/io/BufferedWriter;
    .restart local v14       #bw:Ljava/io/BufferedWriter;
    goto :goto_6
.end method
