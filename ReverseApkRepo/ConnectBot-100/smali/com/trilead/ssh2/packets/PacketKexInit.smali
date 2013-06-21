.class public Lcom/trilead/ssh2/packets/PacketKexInit;
.super Ljava/lang/Object;
.source "PacketKexInit.java"


# instance fields
.field kp:Lcom/trilead/ssh2/transport/KexParameters;

.field payload:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V
    .locals 6
    .parameter "cwl"
    .parameter "rnd"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "none"

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/trilead/ssh2/transport/KexParameters;

    invoke-direct {v0}, Lcom/trilead/ssh2/transport/KexParameters;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 25
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    .line 26
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 28
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "none"

    aput-object v5, v1, v3

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "none"

    aput-object v5, v1, v3

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iput-boolean v3, v0, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    .line 39
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iput v3, v0, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    .line 40
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5
    .parameter "payload"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v2, Lcom/trilead/ssh2/transport/KexParameters;

    invoke-direct {v2}, Lcom/trilead/ssh2/transport/KexParameters;-><init>()V

    iput-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 44
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    .line 45
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 49
    .local v1, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 51
    .local v0, packet_type:I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    .line 52
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This is not a KexInitPacket! ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    .line 55
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    .line 66
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    iput v3, v2, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    .line 68
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Padding in KexInitPacket!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public getCompression_algorithms_client_to_server()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    return-object v0
.end method

.method public getCompression_algorithms_server_to_client()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    return-object v0
.end method

.method public getCookie()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    return-object v0
.end method

.method public getEncryption_algorithms_client_to_server()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    return-object v0
.end method

.method public getEncryption_algorithms_server_to_client()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    return-object v0
.end method

.method public getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    return-object v0
.end method

.method public getKex_algorithms()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages_client_to_server()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages_server_to_client()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    return-object v0
.end method

.method public getMac_algorithms_client_to_server()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    return-object v0
.end method

.method public getMac_algorithms_server_to_client()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    if-nez v1, :cond_0

    .line 76
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 77
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 78
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    .line 79
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-boolean v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 90
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 91
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    .line 93
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    return-object v1
.end method

.method public getReserved_field1()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    return v0
.end method

.method public getServer_host_key_algorithms()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    return-object v0
.end method

.method public isFirst_kex_packet_follows()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-boolean v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    return v0
.end method
