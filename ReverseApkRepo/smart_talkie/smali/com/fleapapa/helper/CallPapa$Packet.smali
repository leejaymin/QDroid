.class Lcom/fleapapa/helper/CallPapa$Packet;
.super Ljava/lang/Object;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallPapa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Packet"
.end annotation


# instance fields
.field body:[B

.field data:[B

.field dlen:I

.field ersp:I

.field lines:[Ljava/lang/String;

.field mid:I

.field mop:Ljava/lang/String;

.field mtry:I

.field nsrv:I

.field ntry:I

.field peer:Ljava/net/InetSocketAddress;

.field rcode:I

.field final synthetic this$0:Lcom/fleapapa/helper/CallPapa;

.field tout:J

.field uacid:I

.field uasid:I


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;I)V
    .locals 1
    .parameter
    .parameter "size"

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 1660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    const/4 v0, 0x1

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mtry:I

    .line 1661
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    return-void
.end method

.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "msg"
    .parameter "mid"

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 1668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    const/4 v0, 0x1

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mtry:I

    .line 1670
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    .line 1671
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    array-length v0, v0

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    .line 1672
    iput p3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/fleapapa/helper/CallPapa;[BII)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "len"
    .parameter "mid"

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    const/4 v0, 0x1

    iput v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mtry:I

    .line 1664
    iput-object p2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    .line 1665
    iput p3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    .line 1666
    iput p4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallPapa$Packet;)Lcom/fleapapa/helper/CallPapa;
    .locals 1
    .parameter

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    return-object v0
.end method


# virtual methods
.method b2a([B)V
    .locals 3
    .parameter "b"

    .prologue
    .line 1679
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 1680
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    .line 1681
    return-void

    .line 1679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method header(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    .line 1690
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    array-length v3, v2

    move v4, v7

    :goto_0
    if-lt v4, v3, :cond_0

    .line 1695
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1690
    :cond_0
    aget-object v0, v2, v4

    .line 1691
    .local v0, line:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1692
    .local v1, tk:[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1690
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1693
    :cond_2
    aget-object v5, v1, v7

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    goto :goto_1
.end method

.method headers()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 1683
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1687
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    :goto_1
    return-object v1

    .line 1684
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    add-int/lit8 v2, v0, 0x0

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    .line 1685
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    .line 1686
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    add-int/lit8 v3, v0, 0x2

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_1

    .line 1683
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method req_bye()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1964
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Packet;->uacid:I

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v3

    .line 1965
    .local v3, uac:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v0, 0x0

    .line 1967
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    array-length v5, v4

    move v6, v9

    :goto_0
    if-lt v6, v5, :cond_0

    .line 1983
    const/16 v4, 0xc8

    const/4 v5, 0x0

    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    .line 1984
    iput-object v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->eue:Lcom/fleapapa/helper/CallPapa$UE;

    .line 1985
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v4, v0, v11}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1986
    :goto_1
    return-void

    .line 1967
    :cond_0
    aget-object v1, v4, v6

    .line 1968
    .local v1, line:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .local v2, tk:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-ge v7, v10, :cond_2

    .line 1967
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1970
    :cond_2
    aget-object v7, v2, v9

    const-string v8, "cid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1971
    iget-object v7, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8, v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 1972
    .restart local v0       #call:Lcom/fleapapa/helper/CallPapa$Call;
    if-nez v0, :cond_3

    .line 1973
    const/16 v4, 0x1e1

    const-string v5, "bad call"

    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 1977
    :cond_3
    iget-object v7, v0, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    iget v8, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1979
    iget-object v7, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    if-ge v7, v10, :cond_1

    .line 1980
    const v7, 0x7700007f

    invoke-virtual {v0, v7}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    goto :goto_2
.end method

.method req_call()V
    .locals 24

    .prologue
    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/fleapapa/helper/CallPapa;->noUnsolicited:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->uacid:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1789
    const/16 v4, 0x193

    const-string v5, "Rejected"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1792
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->uacid:I

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v22

    .line 1793
    .local v22, uac:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->online:Z

    .line 1794
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->nomap:Z

    .line 1795
    const/4 v14, 0x0

    .line 1796
    .local v14, call:Lcom/fleapapa/helper/CallPapa$Call;
    const/16 v18, 0x0

    .local v18, isNew:Z
    const/16 v17, 0x0

    .line 1798
    .local v17, isDuma:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    move-object v4, v0

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_4

    .line 1874
    if-eqz v14, :cond_0

    .line 1876
    if-eqz v18, :cond_3

    .line 1877
    sget-object v4, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    iget-boolean v5, v14, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v5, :cond_18

    const v5, 0x7f060016

    :goto_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1880
    .local v7, text:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    sget-object v4, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const-class v5, Lcom/fleapapa/helper/Helper;

    invoke-direct {v8, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1881
    .local v8, intent:Landroid/content/Intent;
    const-string v4, "push"

    const/4 v5, 0x1

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1882
    const-string v4, "cid"

    iget v5, v14, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1883
    const/high16 v4, 0x1000

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1887
    iget v4, v14, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    sput v4, Lcom/fleapapa/helper/Helper;->cid:I

    .line 1888
    sget-object v4, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    .line 1889
    const/4 v5, 0x3

    .line 1890
    iget-boolean v6, v14, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v6, :cond_19

    const v6, 0x7f020063

    .line 1895
    :goto_3
    const/16 v11, 0x10

    .line 1896
    const/4 v12, 0x0

    .line 1897
    const/4 v13, 0x2

    move-object v9, v7

    move-object v10, v7

    .line 1888
    invoke-static/range {v4 .. v13}, Lcom/fleapapa/util/MyNotify;->notifyStatusBar(Landroid/content/Context;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1899
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    invoke-virtual {v4, v14}, Lcom/fleapapa/helper/CallPapa;->setaCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 1901
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1903
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nomap="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/fleapapa/helper/CallPapa;->noMap:Z

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1904
    .local v20, nomap:Ljava/lang/String;
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1905
    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "emu=1"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    .line 1907
    :goto_5
    move-object/from16 v0, v22

    move-object v1, v14

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$Call;->eue:Lcom/fleapapa/helper/CallPapa$UE;

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    const/16 v5, 0x10

    invoke-virtual {v4, v14, v5}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    #calls: Lcom/fleapapa/helper/CallPapa;->shootUE(Lcom/fleapapa/helper/CallPapa$UE;)V
    invoke-static {v0, v1}, Lcom/fleapapa/helper/CallPapa;->access$0(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$UE;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v4, v0

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    monitor-enter v4

    .line 1913
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v5, v0

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1912
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1798
    .end local v20           #nomap:Ljava/lang/String;
    :cond_4
    aget-object v19, v4, v6

    .line 1799
    .local v19, line:Ljava/lang/String;
    const-string v7, "="

    const/4 v8, 0x2

    move-object/from16 v0, v19

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v21

    .local v21, tk:[Ljava/lang/String;
    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x2

    if-ge v7, v8, :cond_6

    .line 1798
    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1801
    :cond_6
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "cid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1802
    const/4 v7, 0x1

    aget-object v7, v21, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 1803
    .local v15, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v7, v0

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #call:Lcom/fleapapa/helper/CallPapa$Call;
    check-cast v14, Lcom/fleapapa/helper/CallPapa$Call;

    .line 1805
    .restart local v14       #call:Lcom/fleapapa/helper/CallPapa$Call;
    if-nez v14, :cond_8

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v7, v0

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v8, v0

    iget v8, v8, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    if-lt v7, v8, :cond_7

    .line 1807
    const/16 v4, 0x1e6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "max "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v6, v0

    iget v6, v6, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calls"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1810
    :cond_7
    new-instance v14, Lcom/fleapapa/helper/CallPapa$Call;

    .end local v14           #call:Lcom/fleapapa/helper/CallPapa$Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v7, v0

    invoke-direct {v14, v7, v15}, Lcom/fleapapa/helper/CallPapa$Call;-><init>(Lcom/fleapapa/helper/CallPapa;I)V

    .line 1811
    .restart local v14       #call:Lcom/fleapapa/helper/CallPapa$Call;
    const/4 v7, 0x1

    iput-boolean v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->inbound:Z

    .line 1812
    const/16 v18, 0x1

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v7, v0

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v7, v0

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_9

    const/4 v7, 0x0

    move/from16 v17, v7

    .line 1816
    :cond_8
    :goto_7
    iget-object v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    sget v8, Lcom/fleapapa/util/My;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    iget-object v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move v8, v0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1819
    iget-object v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    sget v8, Lcom/fleapapa/util/My;->uid:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_6

    .line 1814
    :cond_9
    const/4 v7, 0x1

    move/from16 v17, v7

    goto :goto_7

    .line 1822
    .end local v15           #cid:I
    :cond_a
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "to"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1823
    if-eqz v14, :cond_5

    .line 1824
    const/4 v7, 0x1

    aget-object v7, v21, v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1825
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_5

    aget-object v16, v21, v8

    .line 1826
    .local v16, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v9, v0

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v23

    .line 1827
    .local v23, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v9, v14, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1831
    .end local v16           #id:Ljava/lang/String;
    .end local v23           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_b
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "ice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1832
    const/4 v7, 0x1

    aget-object v7, v21, v7

    const-string v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1833
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    .line 1834
    const/4 v7, 0x0

    aget-object v7, v21, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    .line 1835
    const/4 v7, 0x1

    aget-object v7, v21, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    goto/16 :goto_6

    .line 1838
    :cond_c
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "uac"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1839
    const/4 v7, 0x1

    aget-object v7, v21, v7

    const-string v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1840
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    if-lez v7, :cond_d

    const/4 v7, 0x0

    aget-object v7, v21, v7

    move-object v0, v7

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    .line 1841
    :cond_d
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x1

    if-le v7, v8, :cond_e

    const/4 v7, 0x1

    aget-object v7, v21, v7

    move-object v0, v7

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    .line 1842
    :cond_e
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x2

    if-le v7, v8, :cond_f

    const/4 v7, 0x2

    aget-object v7, v21, v7

    move-object v0, v7

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->city:Ljava/lang/String;

    .line 1843
    :cond_f
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x3

    if-le v7, v8, :cond_10

    const/4 v7, 0x3

    aget-object v7, v21, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    .line 1844
    :cond_10
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x4

    if-le v7, v8, :cond_11

    const/4 v7, 0x4

    aget-object v7, v21, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    .line 1845
    :cond_11
    move-object/from16 v0, v21

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x5

    if-le v7, v8, :cond_5

    const/4 v7, 0x5

    aget-object v7, v21, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, v22

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    goto/16 :goto_6

    .line 1848
    :cond_12
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1849
    if-eqz v14, :cond_5

    .line 1851
    iget-object v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1852
    const/4 v7, 0x1

    aget-object v7, v21, v7

    iput-object v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    goto/16 :goto_6

    .line 1855
    :cond_13
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "urge"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1856
    if-eqz v14, :cond_5

    .line 1857
    const/4 v7, 0x1

    aget-object v7, v21, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    :goto_9
    iput-boolean v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    .line 1859
    iget-boolean v7, v14, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v7, :cond_5

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/fleapapa/helper/CallPapa;->noUrgency:Z

    if-eqz v7, :cond_5

    .line 1861
    const/16 v4, 0x25b

    const-string v5, "urgency call rejected"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v14}, Lcom/fleapapa/helper/CallPapa$Call;->close()V

    goto/16 :goto_0

    .line 1857
    :cond_14
    const/4 v7, 0x0

    goto :goto_9

    .line 1868
    :cond_15
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "emu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1869
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->emulator:Z

    goto/16 :goto_6

    .line 1871
    :cond_16
    const/4 v7, 0x0

    aget-object v7, v21, v7

    const-string v8, "nomap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1872
    const/4 v7, 0x1

    aget-object v7, v21, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    :goto_a
    move v0, v7

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->nomap:Z

    goto/16 :goto_6

    :cond_17
    const/4 v7, 0x0

    goto :goto_a

    .line 1877
    .end local v19           #line:Ljava/lang/String;
    .end local v21           #tk:[Ljava/lang/String;
    :cond_18
    const v5, 0x7f060015

    goto/16 :goto_2

    .line 1890
    .restart local v7       #text:Ljava/lang/String;
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_19
    const v6, 0x7f02004c

    goto/16 :goto_3

    .line 1903
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1906
    .restart local v20       #nomap:Ljava/lang/String;
    :cond_1b
    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method req_data()V
    .locals 26

    .prologue
    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->uacid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v16

    .line 2107
    .local v16, uac:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v7, 0x0

    .line 2109
    .local v7, call:Lcom/fleapapa/helper/CallPapa$Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 2212
    :cond_0
    :goto_1
    return-void

    .line 2109
    :cond_1
    aget-object v11, v17, v19

    .line 2110
    .local v11, line:Ljava/lang/String;
    const-string v20, "="

    const/16 v21, 0x2

    move-object v0, v11

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .local v15, tk:[Ljava/lang/String;
    if-eqz v15, :cond_2

    move-object v0, v15

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 2109
    :cond_2
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 2112
    :cond_3
    const/16 v20, 0x0

    aget-object v20, v15, v20

    const-string v21, "cid"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v21, v15, v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #call:Lcom/fleapapa/helper/CallPapa$Call;
    check-cast v7, Lcom/fleapapa/helper/CallPapa$Call;

    .line 2114
    .restart local v7       #call:Lcom/fleapapa/helper/CallPapa$Call;
    if-nez v7, :cond_4

    .line 2115
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "CallPapa.req_data: discard MEDIA with bad cid="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x1

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2118
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object v2, v7

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$Call;->atime:J

    goto :goto_2

    .line 2121
    :cond_5
    const/16 v20, 0x0

    aget-object v20, v15, v20

    const-string v21, "a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 2122
    if-eqz v7, :cond_0

    .line 2123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2124
    .local v12, now:J
    move-object v0, v7

    iget-wide v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->tpush:J

    move-wide/from16 v20, v0

    sub-long v8, v12, v20

    .local v8, dt:J
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-gez v20, :cond_6

    .line 2125
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "CallPapa.req_data: discard MEDIA before tpush expires="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v8

    neg-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2128
    :cond_6
    const/16 v20, 0x1

    aget-object v20, v15, v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2129
    move-object v0, v15

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 2130
    const/16 v20, 0x0

    aget-object v20, v15, v20

    invoke-static/range {v20 .. v20}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2131
    .local v10, fbyte:I
    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-static/range {v20 .. v20}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2134
    .local v14, nsample:I
    iget-object v6, v7, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 2135
    .local v6, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    if-eqz v14, :cond_7

    if-nez v10, :cond_8

    .line 2136
    :cond_7
    sget-object v20, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "CallPapa.req_data: END OF AUDIO!! uac_uid="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", burst_uid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object v2, v6

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    .line 2142
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 2143
    move-object/from16 v0, v16

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    .line 2144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object v2, v6

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    .line 2150
    :cond_9
    :goto_3
    move-object/from16 v0, v16

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move/from16 v20, v0

    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2153
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 2152
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2155
    if-lez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2158
    .local v5, blen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object v0, v6

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    move-object/from16 v22, v0

    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v23, v0

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v24

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2159
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    .line 2160
    iput v10, v6, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    .line 2161
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    .line 2162
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    .line 2165
    .end local v5           #blen:I
    :cond_a
    if-eqz v14, :cond_b

    if-nez v10, :cond_e

    .line 2166
    :cond_b
    invoke-virtual {v6}, Lcom/fleapapa/helper/CallPapa$Burst;->finish()V

    .line 2168
    iput-object v6, v7, Lcom/fleapapa/helper/CallPapa$Call;->lpback:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 2170
    const/16 v20, 0xc8

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "recv="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    .line 2184
    :cond_c
    :goto_4
    move-object v0, v6

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    const v20, 0x7700af00

    :goto_5
    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    goto/16 :goto_2

    .line 2147
    :cond_d
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->mp_blip:Landroid/media/MediaPlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_3

    .line 2152
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 2173
    :cond_e
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2174
    monitor-enter v6

    .line 2175
    :try_start_2
    invoke-virtual {v6}, Lcom/fleapapa/helper/CallPapa$Burst;->play()V

    .line 2174
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2178
    move-object v0, v7

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fleapapa/helper/CallPapa;->showNewTalkNotification()V

    goto :goto_4

    .line 2174
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 2181
    :cond_f
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v6

    move-object/from16 v1, v20

    move/from16 v2, v21

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Burst;->play([BII)V

    goto/16 :goto_4

    .line 2184
    :cond_10
    const/high16 v20, 0x77ff

    goto/16 :goto_5

    .line 2187
    :cond_11
    sget-object v20, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "CallPapa.req_data: discard MEDIA not by uid "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const/16 v20, 0x1d2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    .line 2191
    move-object v0, v6

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    invoke-virtual {v6}, Lcom/fleapapa/helper/CallPapa$Burst;->collided()V

    goto/16 :goto_2

    .line 2195
    .end local v6           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    .end local v8           #dt:J
    .end local v10           #fbyte:I
    .end local v12           #now:J
    .end local v14           #nsample:I
    :cond_12
    const/16 v20, 0x0

    aget-object v20, v15, v20

    const-string v21, "t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2196
    if-eqz v7, :cond_0

    .line 2198
    :try_start_4
    new-instance v6, Lcom/fleapapa/helper/CallPapa$Burst;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v7

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fleapapa/helper/CallPapa$Burst;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Call;BI)V

    .line 2199
    .restart local v6       #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v21, v0

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_6
    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    .line 2200
    move-object/from16 v0, v16

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    .line 2201
    invoke-virtual {v6}, Lcom/fleapapa/helper/CallPapa$Burst;->finish()V

    .line 2203
    const/16 v20, 0xc8

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "recv="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2207
    .end local v6           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object v1, v7

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 2208
    move-object v0, v7

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fleapapa/helper/CallPapa;->showNewTalkNotification()V

    goto/16 :goto_2

    .line 2199
    .restart local v6       #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :cond_13
    :try_start_5
    const-string v20, ""
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 2205
    .end local v6           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :catch_0
    move-exception v20

    goto :goto_7
.end method

.method req_fetch_om()V
    .locals 25

    .prologue
    .line 2243
    const/4 v10, 0x0

    .line 2244
    .local v10, call:Lcom/fleapapa/helper/CallPapa$Call;
    const/4 v9, 0x0

    .line 2245
    .local v9, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    const/4 v11, 0x0

    .local v11, cid:I
    const/4 v7, 0x0

    .local v7, bix:I
    const/4 v14, 0x0

    .line 2246
    .local v14, mid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 2311
    :cond_0
    if-nez v10, :cond_1

    .line 2312
    sget-object v18, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "CallPapa.req_fetch_om: no call with cid="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    const/16 v18, 0x1ea

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "no call with cid "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2314
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mid="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2313
    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    .line 2316
    :cond_1
    :goto_1
    return-void

    .line 2246
    :cond_2
    aget-object v12, v18, v20

    .line 2247
    .local v12, line:Ljava/lang/String;
    const-string v21, "="

    const/16 v22, 0x2

    move-object v0, v12

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v16

    .local v16, tk:[Ljava/lang/String;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 2246
    :cond_3
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 2250
    :cond_4
    const/16 v21, 0x0

    aget-object v21, v16, v21

    const-string v22, "cid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 2251
    const/16 v21, 0x1

    aget-object v21, v16, v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move v1, v11

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/CallPapa;->loadCall(IZ)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v10

    goto :goto_2

    .line 2255
    :cond_5
    const/16 v21, 0x0

    aget-object v21, v16, v21

    const-string v22, "mid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2256
    if-eqz v10, :cond_0

    .line 2257
    const/16 v21, 0x1

    aget-object v21, v16, v21

    invoke-static/range {v21 .. v21}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    .line 2260
    :cond_6
    const/16 v21, 0x0

    aget-object v21, v16, v21

    const-string v22, "bix"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2261
    if-eqz v10, :cond_0

    .line 2262
    const/16 v21, 0x1

    aget-object v21, v16, v21

    invoke-static/range {v21 .. v21}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2263
    if-ltz v7, :cond_7

    move-object v0, v10

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v7

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 2264
    :cond_7
    sget-object v18, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "CallPapa.req_fetch_om: no bix="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/16 v18, 0x1eb

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "index "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of bound "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v10

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2266
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mid="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2265
    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2269
    :cond_8
    move-object v0, v10

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    check-cast v9, Lcom/fleapapa/helper/CallPapa$Burst;

    .restart local v9       #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    goto/16 :goto_2

    .line 2272
    :cond_9
    const/16 v21, 0x0

    aget-object v21, v16, v21

    const-string v22, "bit"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2273
    if-eqz v10, :cond_0

    .line 2274
    if-eqz v14, :cond_1

    .line 2275
    if-eqz v9, :cond_1

    .line 2276
    const/16 v21, 0x1

    aget-object v21, v16, v21

    invoke-static/range {v21 .. v21}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2277
    .local v6, bit:I
    move v0, v6

    mul-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    move-object v0, v9

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 2278
    sget-object v18, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "CallPapa.req_fetch_om: no bit="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const/16 v18, 0x1ec

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "bit "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of bound "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v9

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3ff

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 2280
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mid="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2279
    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->respond(ILjava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2284
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v22, 0xc8

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->rsp_lines(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2285
    const-string v22, "mid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2286
    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2287
    const-string v22, "meta="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v9

    iget-wide v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2288
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v9

    iget-wide v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2289
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v9

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2290
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v9

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2291
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v9

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2292
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v9

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2293
    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2284
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2295
    .local v13, lines:Ljava/lang/String;
    const/16 v21, 0x400

    move-object v0, v9

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    move/from16 v22, v0

    move v0, v6

    mul-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2296
    .local v5, bdlen:I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "bit="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2297
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2298
    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2296
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2299
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2300
    new-instance v15, Lcom/fleapapa/helper/CallPapa$Packet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v21, v0

    move v0, v14

    neg-int v0, v0

    move/from16 v22, v0

    move-object v0, v15

    move-object/from16 v1, v21

    move-object v2, v13

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    .line 2302
    .local v15, rsp:Lcom/fleapapa/helper/CallPapa$Packet;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    .line 2303
    .local v17, txlen:I
    add-int v21, v17, v5

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v8, v0

    .line 2304
    .local v8, buf:[B
    move-object v0, v15

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v8

    move/from16 v3, v23

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2305
    move-object v0, v9

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    move-object/from16 v21, v0

    move v0, v6

    mul-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v8

    move/from16 v3, v17

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2307
    iput-object v8, v15, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    .line 2308
    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v15

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object v0, v15

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    goto/16 :goto_2
.end method

.method req_notify()V
    .locals 28

    .prologue
    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->uacid:I

    move v13, v0

    invoke-virtual {v12, v13}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v21

    .line 1990
    .local v21, uac:Lcom/fleapapa/helper/CallPapa$UE;
    const/16 v18, 0x0

    .local v18, sua:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v14, 0x0

    .line 1991
    .local v14, dua:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v10, 0x0

    .local v10, cid:I
    const/4 v11, -0x1

    .local v11, bix:I
    const/16 v20, 0x0

    .local v20, type:I
    const/4 v13, 0x0

    .local v13, len:I
    const/4 v5, -0x1

    .local v5, mid:I
    const/4 v6, 0x0

    .line 1992
    .local v6, uid:I
    const-wide/16 v8, 0x0

    .line 1993
    .local v8, stime:J
    const/4 v7, 0x0

    .line 1995
    .local v7, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    move-object v12, v0

    array-length v15, v12

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_0
    move/from16 v0, v17

    move v1, v15

    if-lt v0, v1, :cond_1

    .line 2039
    if-gez v5, :cond_9

    .line 2065
    .end local v14           #dua:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_0
    :goto_1
    return-void

    .line 1995
    .restart local v14       #dua:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_1
    aget-object v16, v12, v17

    .line 1997
    .local v16, line:Ljava/lang/String;
    const-string v19, "="

    const/16 v22, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .local v19, tk:[Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    .end local v16           #line:Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 1995
    :cond_2
    :goto_2
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto :goto_0

    .line 1999
    :cond_3
    const/16 v16, 0x0

    aget-object v16, v19, v16

    const-string v22, "on"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2000
    const/16 v16, 0x1

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->online:Z

    .line 2001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$UE;->atime:J

    goto :goto_2

    .line 2000
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 2004
    :cond_5
    const/16 v16, 0x0

    aget-object v16, v19, v16

    const-string v22, "su"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2005
    const/16 v16, 0x1

    aget-object v16, v19, v16

    const-string v19, "\\\\"

    .end local v19           #tk:[Ljava/lang/String;
    const/16 v22, 0x3

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .restart local v19       #tk:[Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    aget-object v18, v19, v18

    .end local v18           #sua:Lcom/fleapapa/helper/CallPapa$UE;
    invoke-static/range {v18 .. v18}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v18

    .line 2007
    .restart local v18       #sua:Lcom/fleapapa/helper/CallPapa$UE;
    const/16 v16, 0x1

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    .line 2008
    const/16 v16, 0x2

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    .line 2009
    move-object/from16 v0, v18

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move/from16 v16, v0

    sget v22, Lcom/fleapapa/util/My;->uid:I

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    #calls: Lcom/fleapapa/helper/CallPapa;->shootUE(Lcom/fleapapa/helper/CallPapa$UE;)V
    invoke-static {v0, v1}, Lcom/fleapapa/helper/CallPapa;->access$0(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$UE;)V

    goto/16 :goto_2

    .line 2012
    :cond_6
    const/16 v16, 0x0

    aget-object v16, v19, v16

    const-string v22, "du"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2013
    const/16 v16, 0x1

    aget-object v16, v19, v16

    const-string v19, "\\\\"

    .end local v19           #tk:[Ljava/lang/String;
    const/16 v22, 0x3

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .restart local v19       #tk:[Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v14, v0

    .end local v14           #dua:Lcom/fleapapa/helper/CallPapa$UE;
    const/16 v16, 0x0

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v14

    .line 2015
    .restart local v14       #dua:Lcom/fleapapa/helper/CallPapa$UE;
    const/16 v16, 0x1

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    .line 2016
    const/16 v16, 0x2

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    .line 2017
    move-object v0, v14

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move/from16 v16, v0

    sget v22, Lcom/fleapapa/util/My;->uid:I

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    #calls: Lcom/fleapapa/helper/CallPapa;->shootUE(Lcom/fleapapa/helper/CallPapa$UE;)V
    invoke-static {v0, v1}, Lcom/fleapapa/helper/CallPapa;->access$0(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$UE;)V

    goto/16 :goto_2

    .line 2020
    :cond_7
    const/16 v16, 0x0

    aget-object v16, v19, v16

    const-string v22, "nm"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2021
    const/16 v16, 0x1

    aget-object v16, v19, v16

    const-string v19, "\\\\"

    .end local v19           #tk:[Ljava/lang/String;
    const/16 v22, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .restart local v19       #tk:[Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    const/16 v22, 0x4

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 2022
    const/4 v13, 0x0

    aget-object v13, v19, v13

    .end local v13           #len:I
    const/16 v16, 0x10

    move-object v0, v13

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 2023
    const/4 v13, 0x1

    aget-object v13, v19, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2024
    const/4 v13, 0x2

    aget-object v13, v19, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2025
    const/4 v13, 0x3

    aget-object v13, v19, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2026
    .restart local v13       #len:I
    if-ltz v11, :cond_0

    if-ltz v13, :cond_0

    if-gez v20, :cond_2

    goto/16 :goto_1

    .line 2029
    :cond_8
    const/16 v16, 0x0

    aget-object v16, v19, v16

    const-string v22, "om"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2030
    const/16 v16, 0x1

    aget-object v16, v19, v16

    const-string v19, "\\\\"

    .end local v19           #tk:[Ljava/lang/String;
    const/16 v22, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .restart local v19       #tk:[Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v16, v0

    const/16 v22, 0x4

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 2031
    const/16 v16, 0x0

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 2034
    const/16 v16, 0x1

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    const/16 v16, 0x2

    aget-object v16, v19, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    sub-long v8, v22, v24

    .line 2036
    const/16 v16, 0x3

    aget-object v7, v19, v16

    goto/16 :goto_2

    .line 2041
    .end local v19           #tk:[Ljava/lang/String;
    :cond_9
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    move v12, v0

    sget v15, Lcom/fleapapa/util/My;->uid:I

    if-eq v12, v15, :cond_0

    .line 2044
    :cond_a
    new-instance v4, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    move/from16 v0, v20

    int-to-byte v0, v0

    move v12, v0

    invoke-direct/range {v4 .. v13}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;-><init>(IILjava/lang/String;JIIBI)V

    .line 2045
    .local v4, om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v12, v0

    iget-object v12, v12, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    if-eqz v14, :cond_0

    .line 2048
    iget v12, v14, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v14, Lcom/fleapapa/util/My;->uid:I

    .end local v14           #dua:Lcom/fleapapa/helper/CallPapa$UE;
    if-ne v12, v14, :cond_0

    .line 2050
    move v15, v10

    .line 2051
    .local v15, fcid:I
    invoke-virtual {v4}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->loaded()Z

    move-result v12

    if-nez v12, :cond_c

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v12, v0

    iget-object v12, v12, Lcom/fleapapa/helper/CallPapa;->omGetters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Thread;

    .line 2055
    .local v17, om_getter:Ljava/lang/Thread;
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->isAlive()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2056
    :cond_b
    new-instance v17, Lcom/fleapapa/helper/CallPapa$Packet$1;

    .end local v17           #om_getter:Ljava/lang/Thread;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Papa.om_getter "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v12

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet$1;-><init>(Lcom/fleapapa/helper/CallPapa$Packet;Ljava/lang/String;I)V

    .line 2057
    .restart local v17       #om_getter:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v12, v0

    iget-object v12, v12, Lcom/fleapapa/helper/CallPapa;->omGetters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v0, v12

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 2062
    .end local v17           #om_getter:Ljava/lang/Thread;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/fleapapa/helper/CallPapa;->showOffMsgNotification()V

    goto/16 :goto_1
.end method

.method varargs respond(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "rcode"
    .parameter "reason"
    .parameter "headers"

    .prologue
    .line 1714
    iget v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    if-gtz v0, :cond_0

    .line 1717
    :goto_0
    return-void

    .line 1715
    :cond_0
    new-instance v0, Lcom/fleapapa/helper/CallPapa$Packet;

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fleapapa/helper/CallPapa$Packet;->rsp_lines(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    neg-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    .line 1716
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    goto :goto_0
.end method

.method rsp_call()V
    .locals 11

    .prologue
    .line 1917
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Packet;->uasid:I

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v3

    .line 1918
    .local v3, uas:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/fleapapa/helper/CallPapa$UE;->online:Z

    .line 1919
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/fleapapa/helper/CallPapa$UE;->nomap:Z

    .line 1920
    const/4 v0, 0x0

    .line 1922
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 1954
    iput-object v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->eue:Lcom/fleapapa/helper/CallPapa$UE;

    .line 1955
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    const/16 v5, 0x10

    invoke-virtual {v4, v0, v5}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 1957
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    #calls: Lcom/fleapapa/helper/CallPapa;->shootUE(Lcom/fleapapa/helper/CallPapa$UE;)V
    invoke-static {v4, v3}, Lcom/fleapapa/helper/CallPapa;->access$0(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$UE;)V

    .line 1959
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    monitor-enter v4

    .line 1960
    :try_start_0
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1959
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    :cond_0
    return-void

    .line 1922
    :cond_1
    aget-object v1, v4, v6

    .line 1923
    .local v1, line:Ljava/lang/String;
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .local v2, tk:[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v7, v2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_3

    .line 1922
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1925
    :cond_3
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "cid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1926
    iget-object v7, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v8, 0x1

    aget-object v8, v2, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 1927
    .restart local v0       #call:Lcom/fleapapa/helper/CallPapa$Call;
    if-eqz v0, :cond_0

    .line 1928
    iget-object v7, v0, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    iget v8, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    const/16 v9, 0xc8

    iget v10, p0, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    if-gt v9, v10, :cond_4

    iget v9, p0, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    const/16 v10, 0x12c

    if-ge v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v7, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1931
    :cond_5
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "ice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1932
    const/4 v7, 0x1

    aget-object v7, v2, v7

    const-string v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1933
    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    .line 1934
    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    .line 1935
    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    goto :goto_1

    .line 1938
    :cond_6
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "uas"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1939
    const/4 v7, 0x1

    aget-object v7, v2, v7

    const-string v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1940
    array-length v7, v2

    if-lez v7, :cond_7

    const/4 v7, 0x0

    aget-object v7, v2, v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    .line 1941
    :cond_7
    array-length v7, v2

    const/4 v8, 0x1

    if-le v7, v8, :cond_8

    const/4 v7, 0x1

    aget-object v7, v2, v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    .line 1942
    :cond_8
    array-length v7, v2

    const/4 v8, 0x2

    if-le v7, v8, :cond_9

    const/4 v7, 0x2

    aget-object v7, v2, v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->city:Ljava/lang/String;

    .line 1943
    :cond_9
    array-length v7, v2

    const/4 v8, 0x3

    if-le v7, v8, :cond_a

    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    .line 1944
    :cond_a
    array-length v7, v2

    const/4 v8, 0x4

    if-le v7, v8, :cond_b

    const/4 v7, 0x4

    aget-object v7, v2, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    .line 1945
    :cond_b
    array-length v7, v2

    const/4 v8, 0x5

    if-le v7, v8, :cond_2

    const/4 v7, 0x5

    aget-object v7, v2, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    goto/16 :goto_1

    .line 1948
    :cond_c
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "emu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1949
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->emulator:Z

    goto/16 :goto_1

    .line 1951
    :cond_d
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "nomap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1952
    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->nomap:Z

    goto/16 :goto_1

    :cond_e
    const/4 v7, 0x0

    goto :goto_3

    .line 1959
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #tk:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method rsp_data()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2215
    const/4 v0, 0x0

    .line 2216
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    array-length v6, v5

    move v7, v11

    :goto_0
    if-lt v7, v6, :cond_1

    .line 2240
    :cond_0
    return-void

    .line 2216
    :cond_1
    aget-object v2, v5, v7

    .line 2217
    .local v2, line:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v2, v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .local v3, tk:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v8, v3

    if-ge v8, v13, :cond_3

    .line 2216
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2219
    :cond_3
    aget-object v8, v3, v11

    const-string v9, "cid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2220
    aget-object v8, v3, v12

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2221
    .local v1, cid:I
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CallPapa.rsp_data: cid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v8, v8, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 2223
    .restart local v0       #call:Lcom/fleapapa/helper/CallPapa$Call;
    if-eqz v0, :cond_0

    .line 2225
    iget v8, p0, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    const/16 v9, 0x1d2

    if-ne v8, v9, :cond_2

    .line 2226
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "CallPapa.rsp_data: collided!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iget-object v8, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {v8}, Lcom/fleapapa/helper/CallPapa$Burst;->collided()V

    goto :goto_1

    .line 2231
    .end local v1           #cid:I
    :cond_4
    aget-object v8, v3, v11

    const-string v9, "recv"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2232
    if-eqz v0, :cond_0

    .line 2233
    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget v9, p0, Lcom/fleapapa/helper/CallPapa$Packet;->uasid:I

    invoke-virtual {v8, v9}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v4

    .line 2234
    .local v4, uas:Lcom/fleapapa/helper/CallPapa$UE;
    aget-object v8, v3, v12

    invoke-static {v8}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/fleapapa/helper/CallPapa$UE;->recv:I

    .line 2235
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CallPapa.rsp_data: recv["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v4, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/fleapapa/helper/CallPapa$UE;->recv:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v8, v8, Lcom/fleapapa/helper/CallPapa;->rxChecks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/fleapapa/helper/CallPapa$Packet;->uasid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method rsp_fetch_om()V
    .locals 21

    .prologue
    .line 2319
    const/4 v7, 0x0

    .line 2320
    .local v7, call:Lcom/fleapapa/helper/CallPapa$Call;
    const/4 v12, 0x0

    .line 2321
    .local v12, om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    const/4 v6, 0x0

    .line 2322
    .local v6, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    const/4 v8, 0x0

    .line 2323
    .local v8, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    move-object v14, v0

    array-length v15, v14

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move v1, v15

    if-lt v0, v1, :cond_1

    .line 2383
    :cond_0
    :goto_1
    return-void

    .line 2323
    :cond_1
    aget-object v10, v14, v16

    .line 2324
    .local v10, line:Ljava/lang/String;
    const-string v17, "="

    const/16 v18, 0x2

    move-object v0, v10

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .local v13, tk:[Ljava/lang/String;
    if-eqz v13, :cond_2

    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 2323
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2327
    :cond_3
    const/16 v17, 0x0

    aget-object v17, v13, v17

    const-string v18, "cid"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2328
    const/16 v17, 0x1

    aget-object v17, v13, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move v1, v8

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/CallPapa;->loadCall(IZ)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v7

    .line 2330
    if-nez v7, :cond_2

    goto :goto_1

    .line 2333
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v13, v17

    const-string v18, "mid"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2334
    if-eqz v7, :cond_0

    .line 2335
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2336
    .local v11, mid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    check-cast v12, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 2337
    .restart local v12       #om:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    if-eqz v12, :cond_0

    .line 2339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    move/from16 v17, v0

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 2340
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->error:Z

    goto/16 :goto_1

    .line 2344
    :cond_5
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2345
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->uasid:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    goto/16 :goto_2

    .line 2348
    .end local v11           #mid:I
    :cond_6
    const/16 v17, 0x0

    aget-object v17, v13, v17

    const-string v18, "meta"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2349
    if-eqz v7, :cond_0

    .line 2350
    if-eqz v12, :cond_0

    .line 2351
    iget-object v6, v12, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    if-eqz v6, :cond_0

    .line 2352
    const/16 v17, 0x1

    aget-object v17, v13, v17

    const-string v18, ","

    const/16 v19, 0x6

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 2353
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 2354
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    .line 2355
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object v2, v6

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    .line 2356
    const/16 v17, 0x2

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    .line 2357
    const/16 v17, 0x3

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    .line 2358
    const/16 v17, 0x4

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    .line 2359
    const/16 v17, 0x5

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    goto/16 :goto_2

    .line 2362
    :cond_7
    const/16 v17, 0x0

    aget-object v17, v13, v17

    const-string v18, "bit"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2363
    if-eqz v7, :cond_0

    .line 2364
    if-eqz v12, :cond_0

    if-eqz v6, :cond_0

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2366
    const/16 v17, 0x1

    aget-object v17, v13, v17

    const-string v18, ","

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 2367
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 2368
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2369
    .local v5, bit:I
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2372
    .local v9, len:I
    const/16 v17, 0x400

    move v0, v9

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2373
    move v0, v5

    mul-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    add-int v17, v17, v9

    move-object v0, v6

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v6

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    move-object/from16 v19, v0

    move v0, v5

    mul-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2377
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2378
    :try_start_0
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2379
    move-object v0, v12

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 2377
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2381
    sget-object v17, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "CallPapa.rsp_fetch_om: bit "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v12

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->nkbit:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2377
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14
.end method

.method rsp_find()V
    .locals 13

    .prologue
    .line 2067
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 2103
    return-void

    .line 2067
    :cond_0
    aget-object v1, v4, v6

    .line 2068
    .local v1, line:Ljava/lang/String;
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2069
    .local v2, tk:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v7, v2

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 2067
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2070
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "ue"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2072
    const/4 v7, 0x1

    aget-object v7, v2, v7

    const-string v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2073
    .local v0, k:[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1

    .line 2074
    new-instance v3, Lcom/fleapapa/helper/CallPapa$UE;

    iget-object v7, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    invoke-direct {v3, v7}, Lcom/fleapapa/helper/CallPapa$UE;-><init>(Lcom/fleapapa/helper/CallPapa;)V

    .line 2075
    .local v3, ue:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    .line 2076
    const/4 v7, 0x1

    aget-object v7, v0, v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    .line 2077
    const/4 v7, 0x2

    aget-object v7, v0, v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    .line 2078
    const/4 v7, 0x3

    aget-object v7, v0, v7

    iput-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->city:Ljava/lang/String;

    .line 2079
    array-length v7, v0

    const/4 v8, 0x4

    if-le v7, v8, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x4

    aget-object v11, v0, v11

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v9, v11

    sub-long/2addr v7, v9

    iput-wide v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->atime:J

    .line 2080
    :cond_3
    array-length v7, v0

    const/4 v8, 0x5

    if-le v7, v8, :cond_4

    const/4 v7, 0x5

    aget-object v7, v0, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    .line 2081
    :cond_4
    array-length v7, v0

    const/4 v8, 0x6

    if-le v7, v8, :cond_5

    const/4 v7, 0x6

    aget-object v7, v0, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    .line 2082
    :cond_5
    array-length v7, v0

    const/4 v8, 0x7

    if-le v7, v8, :cond_6

    const/4 v7, 0x7

    aget-object v7, v0, v7

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    .line 2083
    :cond_6
    iget v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    iget v8, v3, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    invoke-static {v7, v8}, Lcom/fleapapa/util/MyUtil;->distance(II)F

    move-result v7

    float-to-int v7, v7

    iput v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->dist:I

    .line 2085
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    .line 2087
    sget-object v7, Lcom/fleapapa/helper/CallUes;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_1

    .line 2088
    sget-object v7, Lcom/fleapapa/helper/CallUes;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v7

    .line 2089
    :try_start_0
    sget-object v8, Lcom/fleapapa/helper/CallUes;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v9, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2091
    sget-object v7, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    .line 2092
    sget-object v7, Lcom/fleapapa/helper/CallUes;->runner_found:Ljava/lang/Runnable;

    if-eqz v7, :cond_1

    .line 2093
    sget-object v7, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    sget-object v8, Lcom/fleapapa/helper/CallUes;->runner_found:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 2088
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2097
    .end local v0           #k:[Ljava/lang/String;
    .end local v3           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_7
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "end"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2098
    sget-object v7, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    .line 2099
    sget-object v7, Lcom/fleapapa/helper/CallUes;->runner_eof:Ljava/lang/Runnable;

    if-eqz v7, :cond_1

    .line 2100
    sget-object v7, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    sget-object v8, Lcom/fleapapa/helper/CallUes;->runner_eof:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method rsp_helo()V
    .locals 21

    .prologue
    .line 1737
    const/4 v6, 0x1

    .line 1738
    .local v6, on:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    move-object v10, v0

    array-length v11, v10

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v11, :cond_2

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v10, v0

    iget-object v10, v10, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_f

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/fleapapa/helper/CallPapa;->on_old:Z

    if-ne v6, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v10, v0

    iget-boolean v10, v10, Lcom/fleapapa/helper/CallPapa;->force_notify:Z

    if-eqz v10, :cond_1

    .line 1782
    :cond_0
    invoke-static {v6}, Lcom/fleapapa/helper/CallPapa;->showHelloNotification(Z)V

    .line 1783
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v10, v0

    iput-boolean v6, v10, Lcom/fleapapa/helper/CallPapa;->on_old:Z

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/fleapapa/helper/CallPapa;->force_notify:Z

    .line 1785
    return-void

    .line 1738
    :cond_2
    aget-object v4, v10, v12

    .line 1739
    .local v4, line:Ljava/lang/String;
    const-string v13, "="

    const/4 v14, 0x2

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .local v8, tk:[Ljava/lang/String;
    if-eqz v8, :cond_3

    array-length v13, v8

    const/4 v14, 0x2

    if-ge v13, v14, :cond_4

    .line 1738
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1741
    :cond_4
    const/4 v13, 0x0

    aget-object v13, v8, v13

    const-string v14, "rsa"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v13, v0

    const/4 v14, 0x1

    aget-object v14, v8, v14

    iput-object v14, v13, Lcom/fleapapa/helper/CallPapa;->raddr:Ljava/lang/String;

    .line 1743
    sget-object v13, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v14, v0

    iget-object v14, v14, Lcom/fleapapa/helper/CallPapa;->raddr:Ljava/lang/String;

    invoke-static {v14}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v14

    iput-object v14, v13, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    .line 1744
    sget-object v13, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v14, v0

    iget-object v14, v14, Lcom/fleapapa/helper/CallPapa;->laddr:Ljava/lang/String;

    invoke-static {v14}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v14

    iput-object v14, v13, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v13, v0

    sget-object v14, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    iget-object v14, v14, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    sget-object v15, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    iget-object v15, v15, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    invoke-virtual {v14, v15}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    :goto_3
    iput-boolean v14, v13, Lcom/fleapapa/helper/CallPapa;->nated:Z

    goto :goto_2

    :cond_5
    const/4 v14, 0x1

    goto :goto_3

    .line 1748
    :cond_6
    const/4 v13, 0x0

    aget-object v13, v8, v13

    const-string v14, "texp"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v13, v0

    const/4 v14, 0x1

    aget-object v14, v8, v14

    invoke-static {v14}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/fleapapa/helper/CallPapa;->texp:I

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v13, v0

    iget v13, v13, Lcom/fleapapa/helper/CallPapa;->texp:I

    const/16 v14, 0x3c

    if-ge v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v13, v0

    const/16 v14, 0x3c

    iput v14, v13, Lcom/fleapapa/helper/CallPapa;->texp:I

    .line 1752
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v13, v0

    iget-object v13, v13, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    monitor-enter v13

    .line 1753
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v14, v0

    iget-object v14, v14, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1752
    monitor-exit v13

    goto/16 :goto_2

    :catchall_0
    move-exception v10

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1757
    :cond_8
    const/4 v13, 0x0

    aget-object v13, v8, v13

    const-string v14, "on"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1758
    const/4 v13, 0x1

    aget-object v13, v8, v13

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    move v6, v13

    :goto_4
    goto/16 :goto_2

    :cond_9
    const/4 v13, 0x0

    move v6, v13

    goto :goto_4

    .line 1761
    :cond_a
    const/4 v13, 0x0

    aget-object v13, v8, v13

    const-string v14, "adurl"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v13, v0

    const/4 v14, 0x1

    aget-object v14, v8, v14

    iput-object v14, v13, Lcom/fleapapa/helper/CallPapa;->adurl:Ljava/lang/String;

    goto/16 :goto_2

    .line 1765
    :cond_b
    const/4 v13, 0x0

    aget-object v13, v8, v13

    const-string v14, "buds"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1766
    const/4 v13, 0x1

    aget-object v13, v8, v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1767
    array-length v13, v8

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_3

    aget-object v2, v8, v14

    .line 1768
    .local v2, bud:Ljava/lang/String;
    const-string v15, "\\\\"

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1769
    .local v3, fk:[Ljava/lang/String;
    array-length v15, v3

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    .line 1767
    :cond_c
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1770
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v9

    .line 1771
    .local v9, ue:Lcom/fleapapa/helper/CallPapa$UE;
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-static {v15}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    :goto_7
    iput-boolean v15, v9, Lcom/fleapapa/helper/CallPapa$UE;->online:Z

    .line 1772
    const/4 v15, 0x2

    aget-object v15, v3, v15

    invoke-static {v15}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1773
    .local v7, ta:I
    if-ltz v7, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v17, v17, v19

    sub-long v15, v15, v17

    iput-wide v15, v9, Lcom/fleapapa/helper/CallPapa$UE;->atime:J

    goto :goto_6

    .line 1771
    .end local v7           #ta:I
    :cond_e
    const/4 v15, 0x0

    goto :goto_7

    .line 1778
    .end local v2           #bud:Ljava/lang/String;
    .end local v3           #fk:[Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v8           #tk:[Ljava/lang/String;
    .end local v9           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 1779
    .local v5, omsg:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    invoke-virtual {v5}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->loaded()Z

    move-result v11

    iput-boolean v11, v5, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->deleted:Z

    goto/16 :goto_1
.end method

.method varargs rsp_lines(ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "rcode"
    .parameter "reason"
    .parameter "headers"

    .prologue
    const-string v5, ","

    const-string v4, "\n"

    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    neg-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->uacid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1699
    .local v1, str:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1701
    :cond_0
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "emu=1\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1704
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 1709
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-lt v0, v2, :cond_5

    .line 1711
    return-object v1

    .line 1705
    :cond_2
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "to="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1706
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "cid="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1707
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1704
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1710
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method send()I
    .locals 4

    .prologue
    .line 1732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->tout:J

    .line 1733
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    iget v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa;->sendto(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method send(Ljava/net/InetSocketAddress;II)I
    .locals 6
    .parameter "toAddr"
    .parameter "mtry"
    .parameter "ersp"

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    .line 1720
    iput p3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->ersp:I

    .line 1722
    iput p2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mtry:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1724
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Packet;->this$0:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1723
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1727
    :cond_0
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallPapa.Packet.send: to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1728
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1727
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa$Packet;->send()I

    move-result v0

    return v0

    .line 1723
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
