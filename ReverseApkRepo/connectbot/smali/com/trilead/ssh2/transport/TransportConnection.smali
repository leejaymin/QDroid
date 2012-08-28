.class public Lcom/trilead/ssh2/transport/TransportConnection;
.super Ljava/lang/Object;
.source "TransportConnection.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field can_recv_compress:Z

.field can_send_compress:Z

.field cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

.field cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

.field recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

.field recv_comp_buffer:[B

.field recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field recv_mac_buffer:[B

.field recv_mac_buffer_cmp:[B

.field final recv_packet_header_buffer:[B

.field recv_packet_header_present:Z

.field recv_padd_blocksize:I

.field final recv_padding_buffer:[B

.field recv_seq_number:I

.field final rnd:Ljava/security/SecureRandom;

.field send_comp:Lcom/trilead/ssh2/compression/ICompressor;

.field send_comp_buffer:[B

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
    .line 27
    const-class v0, Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 5
    .parameter "is"
    .parameter "os"
    .parameter "rnd"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x100

    const/16 v0, 0x8

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 31
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 37
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 45
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 53
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 55
    iput-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    .line 57
    iput-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    .line 59
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    .line 61
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    .line 69
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    .line 71
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    .line 73
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    .line 75
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 77
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 85
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 86
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    .line 87
    iput-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    .line 88
    return-void
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 3
    .parameter "bc"
    .parameter "mac"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 92
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 93
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 94
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    .line 95
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v0

    new-array v1, v0, [B

    :cond_0
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 96
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 97
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    if-ge v0, v2, :cond_1

    .line 98
    iput v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 99
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 94
    goto :goto_0
.end method

.method public changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/trilead/ssh2/compression/ICompressor;->getBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp_buffer:[B

    .line 124
    iget-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    invoke-interface {v1}, Lcom/trilead/ssh2/compression/ICompressor;->canCompressPreauth()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    .line 126
    :cond_0
    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 2
    .parameter "bc"
    .parameter "mac"

    .prologue
    const/16 v1, 0x8

    .line 103
    instance-of v0, p1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 111
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 112
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    .line 113
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 114
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    if-ge v0, v1, :cond_1

    .line 115
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 116
    :cond_1
    return-void

    .line 112
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/trilead/ssh2/compression/ICompressor;->getBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    .line 134
    iget-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    invoke-interface {v1}, Lcom/trilead/ssh2/compression/ICompressor;->canCompressPreauth()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    .line 136
    :cond_0
    return-void
.end method

.method public getPacketOverheadEstimate()I
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x9

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
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
    const/4 v8, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 270
    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    if-nez v5, :cond_1

    .line 272
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v5, v6, v9, v8}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 277
    :goto_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    .line 278
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    .line 277
    or-int/2addr v5, v6

    .line 278
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 277
    or-int/2addr v5, v6

    .line 279
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 277
    or-int v1, v5, v6

    .line 281
    .local v1, packet_length:I
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v6, 0x4

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 283
    .local v2, padding_length:I
    const v5, 0x88b8

    if-gt v1, v5, :cond_0

    const/16 v5, 0xc

    if-ge v1, v5, :cond_2

    .line 284
    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Illegal packet size! ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    .end local v1           #packet_length:I
    .end local v2           #padding_length:I
    :cond_1
    iput-boolean v9, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    goto :goto_0

    .line 286
    .restart local v1       #packet_length:I
    .restart local v2       #padding_length:I
    :cond_2
    sub-int v5, v1, v2

    add-int/lit8 v3, v5, -0x1

    .line 288
    .local v3, payload_length:I
    if-gez v3, :cond_3

    .line 289
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Illegal padding_length in packet from remote ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 291
    :cond_3
    if-lt v3, p3, :cond_4

    .line 292
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Receive buffer too small ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_4
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    invoke-virtual {v5, p1, p2, v3}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 295
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {v5, v6, v9, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 297
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v5, :cond_5

    .line 299
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    iget-object v7, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v9, v7}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 301
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 302
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v5, v6, v9, v8}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 303
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-virtual {v5, p1, p2, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 304
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {v5, v6, v9, v2}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 305
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-virtual {v5, v6, v9}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 307
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v5, v5

    if-lt v0, v5, :cond_7

    .line 314
    .end local v0           #i:I
    :cond_5
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 316
    sget-object v5, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v5}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 318
    sget-object v5, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x5a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received "

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 319
    const-string v8, " bytes payload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 322
    :cond_6
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    if-eqz v5, :cond_a

    .line 323
    new-array v4, v10, [I

    aput v3, v4, v9

    .line 324
    .local v4, uncomp_len:[I
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_comp:Lcom/trilead/ssh2/compression/ICompressor;

    invoke-interface {v5, p1, p2, v4}, Lcom/trilead/ssh2/compression/ICompressor;->uncompress([BI[I)[B

    move-result-object p1

    .line 326
    if-nez p1, :cond_9

    .line 327
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Error while inflating remote data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    .end local v4           #uncomp_len:[I
    .restart local v0       #i:I
    :cond_7
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    aget-byte v5, v5, v0

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    aget-byte v6, v6, v0

    if-eq v5, v6, :cond_8

    .line 310
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Remote sent corrupt MAC."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    .end local v0           #i:I
    .restart local v4       #uncomp_len:[I
    :cond_9
    aget v3, v4, v9

    .line 332
    .end local v3           #payload_length:I
    .end local v4           #uncomp_len:[I
    :cond_a
    return v3
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

    .line 140
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    .line 141
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

    .line 156
    if-ge p4, v9, :cond_8

    .line 157
    const/4 p4, 0x4

    .line 161
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    if-eqz v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    array-length v5, v5

    array-length v6, p1

    add-int/lit16 v6, v6, 0x400

    if-ge v5, v6, :cond_1

    .line 163
    array-length v5, p1

    add-int/lit16 v5, v5, 0x400

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp:Lcom/trilead/ssh2/compression/ICompressor;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    invoke-interface {v5, p1, p2, p3, v6}, Lcom/trilead/ssh2/compression/ICompressor;->compress([BII[B)I

    move-result p3

    .line 165
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_comp_buffer:[B

    .line 168
    :cond_2
    add-int/lit8 v5, p3, 0x5

    add-int v1, v5, p4

    .line 170
    .local v1, packet_len:I
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    rem-int v4, v1, v5

    .line 172
    .local v4, slack:I
    if-eqz v4, :cond_3

    .line 174
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    sub-int/2addr v5, v4

    add-int/2addr v1, v5

    .line 177
    :cond_3
    const/16 v5, 0x10

    if-ge v1, v5, :cond_4

    .line 178
    const/16 v1, 0x10

    .line 180
    :cond_4
    add-int/lit8 v5, p3, 0x5

    sub-int v2, v1, v5

    .line 182
    .local v2, padd_len:I
    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    if-eqz v5, :cond_a

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_9

    .line 212
    :cond_5
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    add-int/lit8 v6, v1, -0x4

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 213
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x1

    add-int/lit8 v7, v1, -0x4

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 214
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x2

    add-int/lit8 v7, v1, -0x4

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 215
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x3

    add-int/lit8 v7, v1, -0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 216
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    int-to-byte v6, v2

    aput-byte v6, v5, v9

    .line 218
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v5, v6, v8, v10}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 219
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v5, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 220
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v6, v8, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 222
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v5, :cond_6

    .line 224
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 225
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v5, v6, v8, v10}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 226
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-virtual {v5, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 227
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v6, v8, v2}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 229
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    invoke-virtual {v5, v6, v8}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 230
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    iget-object v7, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 233
    :cond_6
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->flush()V

    .line 235
    sget-object v5, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v5}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 237
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

    .line 240
    :cond_7
    iget v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 241
    return-void

    .line 158
    .end local v0           #i:I
    .end local v1           #packet_len:I
    .end local v2           #padd_len:I
    .end local v4           #slack:I
    :cond_8
    const/16 v5, 0x40

    if-le p4, v5, :cond_0

    .line 159
    const/16 p4, 0x40

    goto/16 :goto_0

    .line 194
    .restart local v0       #i:I
    .restart local v1       #packet_len:I
    .restart local v2       #padd_len:I
    .restart local v4       #slack:I
    :cond_9
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    .line 195
    .local v3, r:I
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v0

    .line 196
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 197
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x2

    shr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 198
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x3

    shr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 184
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_1

    .line 204
    .end local v0           #i:I
    .end local v3           #r:I
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_5

    .line 205
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    aput-byte v8, v5, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public startCompression()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_recv_compress:Z

    .line 341
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->can_send_compress:Z

    .line 342
    return-void
.end method
