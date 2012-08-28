.class public Lcom/trilead/ssh2/packets/Packets;
.super Ljava/lang/Object;
.source "Packets.java"


# static fields
.field private static final reverseNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "SSH_MSG_DISCONNECT"

    aput-object v2, v0, v1

    .line 82
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "SSH_MSG_IGNORE"

    aput-object v2, v0, v1

    .line 83
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "SSH_MSG_UNIMPLEMENTED"

    aput-object v2, v0, v1

    .line 84
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "SSH_MSG_DEBUG"

    aput-object v2, v0, v1

    .line 85
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "SSH_MSG_SERVICE_REQUEST"

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "SSH_MSG_SERVICE_ACCEPT"

    aput-object v2, v0, v1

    .line 88
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "SSH_MSG_KEXINIT"

    aput-object v2, v0, v1

    .line 89
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "SSH_MSG_NEWKEYS"

    aput-object v2, v0, v1

    .line 91
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "SSH_MSG_KEXDH_INIT"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "SSH_MSG_KEXDH_REPLY/SSH_MSG_KEX_DH_GEX_GROUP"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "SSH_MSG_KEX_DH_GEX_INIT"

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "SSH_MSG_KEX_DH_GEX_REPLY"

    aput-object v2, v0, v1

    .line 95
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "SSH_MSG_KEX_DH_GEX_REQUEST"

    aput-object v2, v0, v1

    .line 97
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x32

    const-string v2, "SSH_MSG_USERAUTH_REQUEST"

    aput-object v2, v0, v1

    .line 98
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x33

    const-string v2, "SSH_MSG_USERAUTH_FAILURE"

    aput-object v2, v0, v1

    .line 99
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x34

    const-string v2, "SSH_MSG_USERAUTH_SUCCESS"

    aput-object v2, v0, v1

    .line 100
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x35

    const-string v2, "SSH_MSG_USERAUTH_BANNER"

    aput-object v2, v0, v1

    .line 102
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "SSH_MSG_USERAUTH_INFO_REQUEST"

    aput-object v2, v0, v1

    .line 103
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "SSH_MSG_USERAUTH_INFO_RESPONSE"

    aput-object v2, v0, v1

    .line 105
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x50

    const-string v2, "SSH_MSG_GLOBAL_REQUEST"

    aput-object v2, v0, v1

    .line 106
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x51

    const-string v2, "SSH_MSG_REQUEST_SUCCESS"

    aput-object v2, v0, v1

    .line 107
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x52

    const-string v2, "SSH_MSG_REQUEST_FAILURE"

    aput-object v2, v0, v1

    .line 109
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5a

    const-string v2, "SSH_MSG_CHANNEL_OPEN"

    aput-object v2, v0, v1

    .line 110
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5b

    const-string v2, "SSH_MSG_CHANNEL_OPEN_CONFIRMATION"

    aput-object v2, v0, v1

    .line 111
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "SSH_MSG_CHANNEL_OPEN_FAILURE"

    aput-object v2, v0, v1

    .line 112
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5d

    const-string v2, "SSH_MSG_CHANNEL_WINDOW_ADJUST"

    aput-object v2, v0, v1

    .line 113
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5e

    const-string v2, "SSH_MSG_CHANNEL_DATA"

    aput-object v2, v0, v1

    .line 114
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x5f

    const-string v2, "SSH_MSG_CHANNEL_EXTENDED_DATA"

    aput-object v2, v0, v1

    .line 115
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x60

    const-string v2, "SSH_MSG_CHANNEL_EOF"

    aput-object v2, v0, v1

    .line 116
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x61

    const-string v2, "SSH_MSG_CHANNEL_CLOSE"

    aput-object v2, v0, v1

    .line 117
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x62

    const-string v2, "SSH_MSG_CHANNEL_REQUEST"

    aput-object v2, v0, v1

    .line 118
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x63

    const-string v2, "SSH_MSG_CHANNEL_SUCCESS"

    aput-object v2, v0, v1

    .line 119
    sget-object v0, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    const/16 v1, 0x64

    const-string v2, "SSH_MSG_CHANNEL_FAILURE"

    aput-object v2, v0, v1

    .line 10
    return-void
.end method

.method public static final getMessageName(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, res:Ljava/lang/String;
    if-ltz p0, :cond_0

    sget-object v1, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 128
    sget-object v1, Lcom/trilead/ssh2/packets/Packets;->reverseNames:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 131
    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN MSG "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #res:Ljava/lang/String;
    :cond_1
    return-object v0
.end method
