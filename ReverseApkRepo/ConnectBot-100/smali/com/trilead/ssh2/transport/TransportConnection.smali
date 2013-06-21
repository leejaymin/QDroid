.class public Lcom/trilead/ssh2/transport/TransportConnection;
.super Ljava/lang/Object;
.source "TransportConnection.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

.field cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

.field csh:Lcom/trilead/ssh2/transport/ClientServerHello;

.field recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field recv_mac_buffer:[B

.field recv_mac_buffer_cmp:[B

.field final recv_packet_header_buffer:[B

.field recv_packet_header_present:Z

.field recv_padd_blocksize:I

.field final recv_padding_buffer:[B

.field recv_seq_number:I

.field final rnd:Ljava/security/SecureRandom;

.field send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field send_mac_buffer:[B

.field final send_packet_header_buffer:[B

.field send_padd_blocksize:I

.field final send_padding_buffer:[B

.field send_seq_number:I

.field useRandomPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 4
    .parameter "is"
    .parameter "os"
    .parameter "rnd"

    .prologue
    const/16 v3, 0x100

    const/16 v0, 0x8

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 30
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 36
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 44
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 52
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 56
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    .line 58
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    .line 60
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    .line 62
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 64
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 72
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 73
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    .line 74
    iput-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    .line 75
    return-void
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 3
    .parameter "bc"
    .parameter "mac"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 79
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 80
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 81
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    .line 82
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_1
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 83
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 84
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    if-ge v0, v1, :cond_0

    .line 85
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 86
    :cond_0
    return-void

    :cond_1
    move-object v0, v2

    .line 81
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 82
    goto :goto_1
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 2
    .parameter "bc"
    .parameter "mac"

    .prologue
    const/16 v1, 0x8

    .line 90
    instance-of v0, p1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 98
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 99
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    .line 100
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 101
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    if-ge v0, v1, :cond_1

    .line 102
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 103
    :cond_1
    return-void

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPacketOverheadEstimate()I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public peekNextMessageLength()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, ")"

    .line 205
    iget-boolean v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    if-nez v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v7, v5}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 208
    iput-boolean v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 211
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 212
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 211
    or-int/2addr v3, v4

    .line 212
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 211
    or-int/2addr v3, v4

    .line 213
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 211
    or-int v0, v3, v4

    .line 215
    .local v0, packet_length:I
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 217
    .local v1, padding_length:I
    const v3, 0x88b8

    if-gt v0, v3, :cond_1

    const/16 v3, 0xc

    if-ge v0, v3, :cond_2

    .line 218
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal packet size! ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    :cond_2
    sub-int v3, v0, v1

    sub-int v2, v3, v6

    .line 222
    .local v2, payload_length:I
    if-gez v2, :cond_3

    .line 223
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal padding_length in packet from remote ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_3
    return v2
.end method

.method public receiveMessage([BII)I
    .locals 11
    .parameter "buffer"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, ")"

    .line 230
    iget-boolean v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    if-nez v4, :cond_1

    .line 232
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v4, v5, v7, v10}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 237
    :goto_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 238
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 237
    or-int/2addr v4, v5

    .line 238
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 237
    or-int/2addr v4, v5

    .line 239
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    .line 237
    or-int v1, v4, v5

    .line 241
    .local v1, packet_length:I
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 243
    .local v2, padding_length:I
    const v4, 0x88b8

    if-gt v1, v4, :cond_0

    const/16 v4, 0xc

    if-ge v1, v4, :cond_2

    .line 244
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal packet size! ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    .end local v1           #packet_length:I
    .end local v2           #padding_length:I
    :cond_1
    iput-boolean v7, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    goto :goto_0

    .line 246
    .restart local v1       #packet_length:I
    .restart local v2       #padding_length:I
    :cond_2
    sub-int v4, v1, v2

    sub-int v3, v4, v9

    .line 248
    .local v3, payload_length:I
    if-gez v3, :cond_3

    .line 249
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal padding_length in packet from remote ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 251
    :cond_3
    if-lt v3, p3, :cond_4

    .line 252
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Receive buffer too small ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", need "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 254
    :cond_4
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v4, p1, p2, v3}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 255
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {v4, v5, v7, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 257
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v4, :cond_5

    .line 259
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v6, v6

    invoke-virtual {v4, v5, v7, v6}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 261
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 262
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v4, v5, v7, v10}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 263
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-virtual {v4, p1, p2, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 264
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {v4, v5, v7, v2}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 265
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-virtual {v4, v5, v7}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v4, v4

    if-lt v0, v4, :cond_7

    .line 274
    .end local v0           #i:I
    :cond_5
    iget v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 276
    sget-object v4, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 278
    sget-object v4, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x5a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 279
    const-string v7, " bytes payload"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 282
    :cond_6
    return v3

    .line 269
    .restart local v0       #i:I
    :cond_7
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    aget-byte v5, v5, v0

    if-eq v4, v5, :cond_8

    .line 270
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Remote sent corrupt MAC."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sendMessage([B)V
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    .line 108
    return-void
.end method

.method public sendMessage([BII)V
    .locals 1
    .parameter "message"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    .line 113
    return-void
.end method

.method public sendMessage([BIII)V
    .locals 11
    .parameter "message"
    .parameter "off"
    .parameter "len"
    .parameter "padd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 123
    if-ge p4, v9, :cond_6

    .line 124
    const/4 p4, 0x4

    .line 128
    :cond_0
    :goto_0
    add-int/lit8 v5, p3, 0x5

    add-int v1, v5, p4

    .line 130
    .local v1, packet_len:I
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    rem-int v4, v1, v5

    .line 132
    .local v4, slack:I
    if-eqz v4, :cond_1

    .line 134
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    sub-int/2addr v5, v4

    add-int/2addr v1, v5

    .line 137
    :cond_1
    const/16 v5, 0x10

    if-ge v1, v5, :cond_2

    .line 138
    const/16 v1, 0x10

    .line 140
    :cond_2
    add-int/lit8 v5, p3, 0x5

    sub-int v2, v1, v5

    .line 142
    .local v2, padd_len:I
    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    if-eqz v5, :cond_8

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_7

    .line 172
    :cond_3
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    sub-int v6, v1, v9

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 173
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x1

    sub-int v7, v1, v9

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 174
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x2

    sub-int v7, v1, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 175
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x3

    sub-int v7, v1, v9

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 176
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    int-to-byte v6, v2

    aput-byte v6, v5, v9

    .line 178
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v5, v6, v8, v10}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 179
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v5, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 180
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v6, v8, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 182
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v5, :cond_4

    .line 184
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 185
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v5, v6, v8, v10}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 186
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-virtual {v5, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 187
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v6, v8, v2}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 189
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    invoke-virtual {v5, v6, v8}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 190
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    iget-object v7, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 193
    :cond_4
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->flush()V

    .line 195
    sget-object v5, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v5}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 197
    sget-object v5, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x5a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sent "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes payload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 200
    :cond_5
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 201
    return-void

    .line 125
    .end local v1           #packet_len:I
    .end local v4           #slack:I
    .end local v2           #padd_len:I
    .end local v0           #i:I
    :cond_6
    const/16 v5, 0x40

    if-le p4, v5, :cond_0

    .line 126
    const/16 p4, 0x40

    goto/16 :goto_0

    .line 154
    .restart local v0       #i:I
    .restart local v1       #packet_len:I
    .restart local v2       #padd_len:I
    .restart local v4       #slack:I
    :cond_7
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    .line 155
    .local v3, r:I
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v0

    .line 156
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 157
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x2

    shr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 158
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x3

    shr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 144
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_1

    .line 164
    .end local v0           #i:I
    .end local v3           #r:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 165
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    aput-byte v8, v5, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
