.class Lcom/gameboys/pocket7/SMSNetWork;
.super Ljava/lang/Thread;
.source "SMSNetWork.java"


# static fields
.field public static final MANAGE_MODE:I = 0x4e20

.field public static NETMODE:I = 0x0

.field public static final SMS_AGREE:I = 0x1

.field public static final SMS_CHK_FILE:Ljava/lang/String; = "sms_chk.dat"

.field public static dis:Ljava/io/DataInputStream; = null

.field public static dos:Ljava/io/DataOutputStream; = null

.field public static socket:Ljava/net/Socket; = null

.field public static strEmergency:Ljava/lang/String; = null

.field public static final vender:I = 0x3


# instance fields
.field public RegResult:I

.field billHeader:Lcom/gameboys/pocket7/BillcomHeader;

.field context:Landroid/content/Context;

.field private m_canv:Lcom/gameboys/pocket7/MainCanvas;

.field public pass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/gameboys/pocket7/SMSNetWork;->strEmergency:Ljava/lang/String;

    .line 25
    const/16 v0, 0x4e20

    sput v0, Lcom/gameboys/pocket7/SMSNetWork;->NETMODE:I

    .line 8
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

    .line 15
    const-string v0, "SmsAgreement"

    iput-object v0, p0, Lcom/gameboys/pocket7/SMSNetWork;->pass:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/gameboys/pocket7/SMSNetWork;->RegResult:I

    .line 31
    iput-object p2, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    .line 32
    iget-object v0, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v1, 0x64

    iput v1, v0, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 33
    iput-object p1, p0, Lcom/gameboys/pocket7/SMSNetWork;->context:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/gameboys/pocket7/BillcomHeader;

    invoke-direct {v0, p1}, Lcom/gameboys/pocket7/BillcomHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/SMSNetWork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    .line 35
    sput p3, Lcom/gameboys/pocket7/SMSNetWork;->NETMODE:I

    .line 36
    return-void
.end method

.method public static checkedSMSAgree(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 46
    .local v2, fileSize:I
    :try_start_0
    const-string v3, "sms_chk.dat"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v3

    long-to-int v2, v3

    .line 63
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 64
    const/4 v3, 0x1

    .line 69
    .end local v1           #file:Ljava/io/File;
    :goto_1
    return v3

    .line 58
    .restart local v1       #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 66
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 69
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static writeSMSAgree(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "value"

    .prologue
    .line 76
    :try_start_0
    const-string v5, "sms_chk.dat"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 83
    .local v2, file:Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v0, bout:Ljava/io/BufferedOutputStream;
    const/4 v5, 0x1

    new-array v4, v5, [B

    .line 87
    .local v4, tempbytes:[B
    const/4 v5, 0x0

    int-to-byte v6, p1

    aput-byte v6, v4, v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 90
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 102
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 115
    .end local v0           #bout:Ljava/io/BufferedOutputStream;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #tempbytes:[B
    :goto_2
    return-void

    .line 91
    .restart local v0       #bout:Ljava/io/BufferedOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #tempbytes:[B
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 107
    .end local v0           #bout:Ljava/io/BufferedOutputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #tempbytes:[B
    :catch_1
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 112
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #file:Ljava/io/File;
    :catch_2
    move-exception v5

    goto :goto_2

    .line 97
    .restart local v0       #bout:Ljava/io/BufferedOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #tempbytes:[B
    :catch_3
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 105
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2
.end method


# virtual methods
.method public DisConnectNet()V
    .locals 1

    .prologue
    .line 234
    :try_start_0
    sget-object v0, Lcom/gameboys/pocket7/SMSNetWork;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/gameboys/pocket7/SMSNetWork;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/gameboys/pocket7/SMSNetWork;->dos:Ljava/io/DataOutputStream;

    .line 238
    :cond_0
    sget-object v0, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 240
    const/4 v0, 0x0

    sput-object v0, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    .line 242
    :cond_1
    sget-object v0, Lcom/gameboys/pocket7/SMSNetWork;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 243
    sget-object v0, Lcom/gameboys/pocket7/SMSNetWork;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/gameboys/pocket7/SMSNetWork;->socket:Ljava/net/Socket;

    .line 247
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getByteFromInt(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 218
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 219
    .local v0, b:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 220
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 222
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 224
    return-object v0
.end method

.method public getIntFromByte([B)I
    .locals 2
    .parameter "b"

    .prologue
    .line 229
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
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/16 v13, -0x64

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 118
    const/16 v9, 0x400

    new-array v7, v9, [B

    .line 119
    .local v7, tmpbuf:[B
    check-cast v3, [B

    .line 121
    .local v3, bbuf:[B
    const/4 v6, 0x0

    .line 122
    .local v6, sPos:I
    const/4 v8, 0x0

    .line 123
    .local v8, totalLength:I
    const/4 v1, 0x0

    .line 129
    .local v1, ServerCheck:I
    :try_start_0
    new-instance v9, Ljava/net/Socket;

    const-string v10, "210.127.253.142"

    const/16 v11, 0x2715

    invoke-direct {v9, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/gameboys/pocket7/SMSNetWork;->socket:Ljava/net/Socket;

    .line 130
    new-instance v9, Ljava/io/DataInputStream;

    sget-object v10, Lcom/gameboys/pocket7/SMSNetWork;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    .line 131
    new-instance v9, Ljava/io/DataOutputStream;

    sget-object v10, Lcom/gameboys/pocket7/SMSNetWork;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dos:Ljava/io/DataOutputStream;

    .line 133
    const/16 v9, 0x4e20

    invoke-virtual {p0, v9}, Lcom/gameboys/pocket7/SMSNetWork;->getByteFromInt(I)[B

    move-result-object v3

    .line 134
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v9, v3

    add-int/2addr v6, v9

    .line 136
    const/4 v9, 0x0

    move-object v0, v9

    check-cast v0, [B

    move-object v3, v0

    .line 137
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->pass:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/gameboys/pocket7/SMSNetWork;->getByteFromInt(I)[B

    move-result-object v3

    .line 138
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    array-length v9, v3

    add-int/2addr v6, v9

    .line 140
    const/4 v9, 0x0

    move-object v0, v9

    check-cast v0, [B

    move-object v3, v0

    .line 141
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->pass:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 142
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    array-length v9, v3

    add-int/2addr v6, v9

    .line 144
    const/4 v9, 0x0

    move-object v0, v9

    check-cast v0, [B

    move-object v3, v0

    .line 145
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/gameboys/pocket7/SMSNetWork;->getByteFromInt(I)[B

    move-result-object v3

    .line 146
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v9, v3

    add-int/2addr v6, v9

    .line 148
    const/4 v9, 0x0

    move-object v0, v9

    check-cast v0, [B

    move-object v3, v0

    .line 151
    sget v9, Lcom/gameboys/pocket7/SMSNetWork;->NETMODE:I

    invoke-virtual {p0, v9}, Lcom/gameboys/pocket7/SMSNetWork;->getByteFromInt(I)[B

    move-result-object v3

    .line 152
    const/4 v9, 0x0

    array-length v10, v3

    invoke-static {v3, v9, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length v9, v3

    add-int/2addr v6, v9

    .line 154
    const/4 v9, 0x0

    move-object v0, v9

    check-cast v0, [B

    move-object v3, v0

    .line 157
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    sget-object v10, Lcom/gameboys/pocket7/SMSNetWork;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v9, v10, v6}, Lcom/gameboys/pocket7/BillcomHeader;->sendBillcomPacket(Ljava/io/DataOutputStream;I)V

    .line 158
    sget-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dos:Ljava/io/DataOutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 159
    const/4 v9, 0x0

    move-object v0, v9

    check-cast v0, [B

    move-object v7, v0

    .line 161
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    sget-object v10, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9, v10}, Lcom/gameboys/pocket7/BillcomHeader;->readBillcomPacket(Ljava/io/DataInputStream;)V

    .line 162
    sget-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 163
    sget-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 165
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->billHeader:Lcom/gameboys/pocket7/BillcomHeader;

    sget-object v10, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9, v10}, Lcom/gameboys/pocket7/BillcomHeader;->readBillcomPacket(Ljava/io/DataInputStream;)V

    .line 166
    sget-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 167
    sget v9, Lcom/gameboys/pocket7/SMSNetWork;->NETMODE:I

    if-ne v9, v14, :cond_1

    .line 169
    sget-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->RegResult:I

    .line 170
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RegResult : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/gameboys/pocket7/SMSNetWork;->RegResult:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    iget v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->RegResult:I

    if-ne v9, v13, :cond_0

    .line 173
    const/4 v5, 0x0

    .line 175
    .local v5, iErrMsgLength:I
    sget-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 176
    if-lez v5, :cond_3

    .line 178
    new-array v2, v5, [B

    .line 179
    .local v2, bMessage:[B
    sget-object v9, Lcom/gameboys/pocket7/SMSNetWork;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v9

    if-ne v5, v9, :cond_2

    .line 181
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/gameboys/pocket7/SMSNetWork;->strEmergency:Ljava/lang/String;

    .line 192
    .end local v2           #bMessage:[B
    :goto_0
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v10, -0x64

    iput v10, v9, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 194
    .end local v5           #iErrMsgLength:I
    :cond_0
    invoke-virtual {p0}, Lcom/gameboys/pocket7/SMSNetWork;->DisConnectNet()V

    .line 196
    iget v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->RegResult:I

    if-ne v9, v14, :cond_4

    .line 198
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v10, 0xa

    iput v10, v9, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 199
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->context:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/gameboys/pocket7/SMSNetWork;->writeSMSAgree(Landroid/content/Context;I)V

    .line 216
    :cond_1
    :goto_1
    return-void

    .line 185
    .restart local v2       #bMessage:[B
    .restart local v5       #iErrMsgLength:I
    :cond_2
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c\uac00 \ubd88\uc548\uc815\ud558\uac70\ub098 \uc11c\ubc84 \uc0c1\uc758 \uc624\ub958\uac00 \ubc1c\uc0dd\ud558\uc600\uae30\uc5d0 \uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    sput-object v9, Lcom/gameboys/pocket7/SMSNetWork;->strEmergency:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v2           #bMessage:[B
    .end local v5           #iErrMsgLength:I
    :catch_0
    move-exception v4

    .line 212
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/gameboys/pocket7/SMSNetWork;->DisConnectNet()V

    .line 213
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iput v13, v9, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 214
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    iput v12, v9, Lcom/gameboys/pocket7/MainCanvas;->PopUpCursor:I

    goto :goto_1

    .line 190
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #iErrMsgLength:I
    :cond_3
    :try_start_1
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c\uac00 \ubd88\uc548\uc815\ud558\uac70\ub098 \uc11c\ubc84 \uc0c1\uc758 \uc624\ub958\uac00 \ubc1c\uc0dd\ud558\uc600\uae30\uc5d0 \uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    sput-object v9, Lcom/gameboys/pocket7/SMSNetWork;->strEmergency:Ljava/lang/String;

    goto :goto_0

    .line 201
    .end local v5           #iErrMsgLength:I
    :cond_4
    iget v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->RegResult:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 203
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v10, 0xb

    iput v10, v9, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I

    .line 204
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->context:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/gameboys/pocket7/SMSNetWork;->writeSMSAgree(Landroid/content/Context;I)V

    goto :goto_1

    .line 206
    :cond_5
    iget v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->RegResult:I

    if-nez v9, :cond_1

    .line 208
    iget-object v9, p0, Lcom/gameboys/pocket7/SMSNetWork;->m_canv:Lcom/gameboys/pocket7/MainCanvas;

    const/16 v10, -0x64

    iput v10, v9, Lcom/gameboys/pocket7/MainCanvas;->PopUpState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
