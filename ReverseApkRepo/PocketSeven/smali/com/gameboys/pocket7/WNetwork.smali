.class Lcom/gameboys/pocket7/WNetwork;
.super Ljava/lang/Thread;
.source "WNetwork.java"


# static fields
.field public static NETMODE:I = 0x0

.field public static final PAYMENT:I = 0x1

.field public static final REGISTER:I = 0x0

.field public static final RESTORE:I = 0x2

.field public static dis:Ljava/io/DataInputStream; = null

.field public static dos:Ljava/io/DataOutputStream; = null

.field public static socket:Ljava/net/Socket; = null

.field public static final vender:I = 0x3


# instance fields
.field public RegResult:I

.field billHeader:Lcom/gameboys/pocket7/BillcomHeader;

.field private m_canv:Lcom/gameboys/pocket7/MainCanvas;

.field public pass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/gameboys/pocket7/WNetwork;->NETMODE:I

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gameboys/pocket7/MainCanvas;I)V
    .locals 2
    .parameter "context"
    .parameter "canv"
    .parameter "mode"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    const-string v0, "aquaslot"

    iput-object v0, p0, Lcom/gameboys/pocket7/WNetwork;->pass:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/gameboys/pocket7/WNetwork;->RegResult:I

    .line 31
    iput-object p2, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    .line 32
    iget-object v0, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v1, 0x64

    iput v1, v0, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 34
    new-instance v0, Lcom/gameboys/pocket7/BillcomHeader;

    invoke-direct {v0, p1}, Lcom/gameboys/pocket7/BillcomHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/WNetwork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    .line 35
    sput p3, Lcom/gameboys/pocket7/WNetwork;->NETMODE:I

    .line 36
    return-void
.end method


# virtual methods
.method public DisConnectNet()V
    .locals 1

    .prologue
    .line 150
    :try_start_0
    sget-object v0, Lcom/gameboys/pocket7/WNetwork;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/gameboys/pocket7/WNetwork;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/gameboys/pocket7/WNetwork;->dos:Ljava/io/DataOutputStream;

    .line 154
    :cond_0
    sget-object v0, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    .line 158
    :cond_1
    sget-object v0, Lcom/gameboys/pocket7/WNetwork;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/gameboys/pocket7/WNetwork;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/gameboys/pocket7/WNetwork;->socket:Ljava/net/Socket;

    .line 163
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getByteFromInt(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 134
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 135
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 140
    return-object v0
.end method

.method public getIntFromByte([B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 145
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x50

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 39
    const/16 v7, 0x400

    new-array v5, v7, [B

    .line 40
    .local v5, tmpbuf:[B
    check-cast v2, [B

    .line 42
    .local v2, bbuf:[B
    const/4 v4, 0x0

    .line 43
    .local v4, sPos:I
    const/4 v6, 0x0

    .line 44
    .local v6, totalLength:I
    const/4 v1, 0x0

    .line 50
    .local v1, ServerCheck:I
    :try_start_0
    new-instance v7, Ljava/net/Socket;

    const-string v8, "210.127.253.142"

    const/16 v9, 0x2715

    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/gameboys/pocket7/WNetwork;->socket:Ljava/net/Socket;

    .line 52
    new-instance v7, Ljava/io/DataInputStream;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v7, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    .line 53
    new-instance v7, Ljava/io/DataOutputStream;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v7, Lcom/gameboys/pocket7/WNetwork;->dos:Ljava/io/DataOutputStream;

    .line 54
    sget v7, Lcom/gameboys/pocket7/WNetwork;->NETMODE:I

    if-nez v7, :cond_2

    .line 55
    const/16 v7, 0xfa2

    invoke-virtual {p0, v7}, Lcom/gameboys/pocket7/WNetwork;->getByteFromInt(I)[B

    move-result-object v2

    .line 58
    :goto_0
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    array-length v7, v2

    add-int/2addr v4, v7

    .line 60
    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 61
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->pass:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/gameboys/pocket7/WNetwork;->getByteFromInt(I)[B

    move-result-object v2

    .line 62
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v7, v2

    add-int/2addr v4, v7

    .line 64
    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 65
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->pass:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 66
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v7, v2

    add-int/2addr v4, v7

    .line 68
    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 69
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/gameboys/pocket7/WNetwork;->getByteFromInt(I)[B

    move-result-object v2

    .line 70
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v7, v2

    add-int/2addr v4, v7

    .line 72
    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 75
    sget v7, Lcom/gameboys/pocket7/WNetwork;->NETMODE:I

    if-eqz v7, :cond_0

    .line 77
    sget v7, Lcom/gameboys/pocket7/WNetwork;->NETMODE:I

    invoke-virtual {p0, v7}, Lcom/gameboys/pocket7/WNetwork;->getByteFromInt(I)[B

    move-result-object v2

    .line 78
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    array-length v7, v2

    add-int/2addr v4, v7

    .line 80
    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 83
    :cond_0
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v7, v8, v4}, Lcom/gameboys/pocket7/BillcomHeader;->sendBillcomPacket(Ljava/io/DataOutputStream;I)V

    .line 84
    sget-object v7, Lcom/gameboys/pocket7/WNetwork;->dos:Ljava/io/DataOutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 85
    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0

    .line 87
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v7, v8}, Lcom/gameboys/pocket7/BillcomHeader;->readBillcomPacket(Ljava/io/DataInputStream;)V

    .line 88
    sget-object v7, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 89
    sget-object v7, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 92
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v7, v8}, Lcom/gameboys/pocket7/BillcomHeader;->readBillcomPacket(Ljava/io/DataInputStream;)V

    .line 93
    sget-object v7, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 94
    sget v7, Lcom/gameboys/pocket7/WNetwork;->NETMODE:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 96
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->RestoreMoney:I

    .line 97
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->RestoreMission:I

    .line 98
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->RestoreUnlimit:I

    .line 99
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    sget-object v8, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->RestoreDay:I

    .line 100
    sget-object v7, Lcom/gameboys/pocket7/WNetwork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/gameboys/pocket7/WNetwork;->RegResult:I

    .line 102
    invoke-virtual {p0}, Lcom/gameboys/pocket7/WNetwork;->DisConnectNet()V

    .line 104
    iget v7, p0, Lcom/gameboys/pocket7/WNetwork;->RegResult:I

    if-nez v7, :cond_3

    .line 106
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v8, 0xc

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 132
    :cond_1
    :goto_1
    return-void

    .line 57
    :cond_2
    const/16 v7, 0xfa8

    invoke-virtual {p0, v7}, Lcom/gameboys/pocket7/WNetwork;->getByteFromInt(I)[B

    move-result-object v2

    goto/16 :goto_0

    .line 108
    :cond_3
    iget v7, p0, Lcom/gameboys/pocket7/WNetwork;->RegResult:I

    if-ne v7, v11, :cond_1

    .line 110
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iget v7, v7, Lcom/gameboys/pocket7/MainCanvas;->RestoreMoney:I

    if-lez v7, :cond_4

    .line 112
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iget v8, v7, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v9, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iget v9, v9, Lcom/gameboys/pocket7/MainCanvas;->RestoreMoney:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 114
    :cond_4
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iget v7, v7, Lcom/gameboys/pocket7/MainCanvas;->RestoreMission:I

    .line 118
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iget v7, v7, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    if-lt v7, v12, :cond_5

    .line 120
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v8, 0x50

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->Point_bet:I

    .line 122
    :cond_5
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    invoke-virtual {v7}, Lcom/gameboys/pocket7/MainCanvas;->Save()V

    .line 123
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v8, 0xa

    iput v8, v7, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/gameboys/pocket7/WNetwork;->DisConnectNet()V

    .line 129
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iput v11, v7, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 130
    iget-object v7, p0, Lcom/gameboys/pocket7/WNetwork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iput v10, v7, Lcom/gameboys/pocket7/MainCanvas;->PopUpCursor:I

    goto :goto_1
.end method
