.class public Ledu/umich/PowerTutor/components/Wifi;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/Wifi$WifiData;,
        Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;
    }
.end annotation


# static fields
.field public static final POWER_STATE_HIGH:I = 0x1

.field public static final POWER_STATE_LOW:I = 0x0

.field public static final POWER_STATE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Wifi"


# instance fields
.field private lastLinkSpeed:J

.field private lastUids:[I

.field private phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

.field private readBytesFile:Ljava/lang/String;

.field private readPacketsFile:Ljava/lang/String;

.field private sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

.field private transBytesFile:Ljava/lang/String;

.field private transPacketsFile:Ljava/lang/String;

.field private uidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;",
            ">;"
        }
    .end annotation
.end field

.field private uidStatsFolder:Ljava/io/File;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOW"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HIGH"

    aput-object v2, v0, v1

    sput-object v0, Ledu/umich/PowerTutor/components/Wifi;->POWER_STATE_NAMES:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 6
    .parameter "context"
    .parameter "phoneConstants"

    .prologue
    .line 115
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 116
    iput-object p2, p0, Ledu/umich/PowerTutor/components/Wifi;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    .line 117
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    .line 123
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v1

    const-string v2, "wifi.interface"

    invoke-virtual {v1, v2}, Ledu/umich/PowerTutor/util/SystemInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, interfaceName:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "eth0"

    .line 126
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/Wifi;->lastLinkSpeed:J

    .line 127
    new-instance v1, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-interface {p2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiHighLowTransition()D

    move-result-wide v2

    .line 128
    invoke-interface {p2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiLowHighTransition()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;-><init>(DD)V

    .line 127
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    .line 129
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->uidStates:Landroid/util/SparseArray;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/virtual/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/statistics/tx_packets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->transPacketsFile:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/virtual/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/statistics/rx_packets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->readPacketsFile:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/virtual/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/statistics/tx_bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->transBytesFile:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/virtual/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/statistics/rx_bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->readBytesFile:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/uid_stat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Wifi;->uidStatsFolder:Ljava/io/File;

    .line 139
    return-void
.end method

.method private readLongFromFile(Ljava/lang/String;)J
    .locals 2
    .parameter "filePath"

    .prologue
    .line 406
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    invoke-virtual {v0, p1}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 51
    .parameter "iteration"

    .prologue
    .line 143
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v48

    .line 145
    .local v48, result:Ledu/umich/PowerTutor/service/IterationData;
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v50

    .line 146
    .local v50, wifiStateFlag:I
    const/4 v5, 0x3

    move/from16 v0, v50

    if-eq v0, v5, :cond_1

    .line 147
    if-eqz v50, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->interfaceOff()V

    .line 153
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 154
    const-wide/16 v15, -0x1

    move-object/from16 v0, p0

    iput-wide v15, v0, Ledu/umich/PowerTutor/components/Wifi;->lastLinkSpeed:J

    .line 156
    invoke-static {}, Ledu/umich/PowerTutor/components/Wifi$WifiData;->obtain()Ledu/umich/PowerTutor/components/Wifi$WifiData;

    move-result-object v14

    .line 157
    .local v14, data:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    invoke-virtual {v14}, Ledu/umich/PowerTutor/components/Wifi$WifiData;->init()V

    .line 158
    move-object/from16 v0, v48

    invoke-virtual {v0, v14}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 263
    .end local v14           #data:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    :cond_0
    :goto_0
    return-object v48

    .line 162
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/Wifi;->transPacketsFile:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v6

    .line 163
    .local v6, transmitPackets:J
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/Wifi;->readPacketsFile:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v8

    .line 164
    .local v8, receivePackets:J
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/Wifi;->transBytesFile:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v10

    .line 165
    .local v10, transmitBytes:J
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/Wifi;->readBytesFile:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v12

    .line 166
    .local v12, receiveBytes:J
    const-wide/16 v15, -0x1

    cmp-long v5, v6, v15

    if-eqz v5, :cond_2

    const-wide/16 v15, -0x1

    cmp-long v5, v8, v15

    if-eqz v5, :cond_2

    .line 167
    const-wide/16 v15, -0x1

    cmp-long v5, v10, v15

    if-eqz v5, :cond_2

    const-wide/16 v15, -0x1

    cmp-long v5, v12, v15

    if-nez v5, :cond_3

    .line 169
    :cond_2
    const-string v5, "Wifi"

    const-string v15, "Failed to read packet and byte counts from wifi interface"

    invoke-static {v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_3
    const-wide/16 v15, 0xf

    rem-long v15, p1, v15

    const-wide/16 v17, 0x0

    cmp-long v5, v15, v17

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-wide v15, v0, Ledu/umich/PowerTutor/components/Wifi;->lastLinkSpeed:J

    const-wide/16 v17, -0x1

    cmp-long v5, v15, v17

    if-nez v5, :cond_5

    .line 178
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    int-to-long v15, v5

    move-object/from16 v0, p0

    iput-wide v15, v0, Ledu/umich/PowerTutor/components/Wifi;->lastLinkSpeed:J

    .line 180
    :cond_5
    move-object/from16 v0, p0

    iget-wide v15, v0, Ledu/umich/PowerTutor/components/Wifi;->lastLinkSpeed:J

    long-to-double v0, v15

    move-wide/from16 v23, v0

    .line 182
    .local v23, linkSpeed:D
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual/range {v5 .. v13}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->updateState(JJJJ)V

    .line 185
    invoke-static {}, Ledu/umich/PowerTutor/components/Wifi$WifiData;->obtain()Ledu/umich/PowerTutor/components/Wifi$WifiData;

    move-result-object v14

    .line 186
    .restart local v14       #data:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getPackets()D

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getUplinkBytes()J

    move-result-wide v17

    .line 187
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getDownlinkBytes()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getUplinkRate()D

    move-result-wide v21

    .line 188
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getPowerState()I

    move-result v25

    .line 186
    invoke-virtual/range {v14 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiData;->init(DJJDDI)V

    .line 189
    move-object/from16 v0, v48

    invoke-virtual {v0, v14}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 195
    .end local v14           #data:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/Wifi;->lastUids:[I

    invoke-virtual {v5, v15}, Ledu/umich/PowerTutor/util/SystemInfo;->getUids([I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->lastUids:[I

    .line 196
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->lastUids:[I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/Wifi;->lastUids:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v5, v0, :cond_0

    aget v49, v15, v5

    .line 197
    .local v49, uid:I
    const/16 v17, -0x1

    move/from16 v0, v49

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 196
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 191
    .end local v49           #uid:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    invoke-virtual/range {v5 .. v13}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->updateState(JJJJ)V

    goto :goto_1

    .line 201
    .restart local v49       #uid:I
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->uidStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    .line 202
    .local v25, uidState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;
    if-nez v25, :cond_9

    .line 203
    new-instance v25, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    .end local v25           #uidState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiHighLowTransition()D

    move-result-wide v17

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiLowHighTransition()D

    move-result-wide v19

    .line 203
    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;-><init>(DD)V

    .line 205
    .restart local v25       #uidState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->uidStates:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v49

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->isStale()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v17, v0

    .line 217
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "/proc/uid_stat/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/tcp_rcv"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 216
    invoke-virtual/range {v17 .. v18}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v12

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v17, v0

    .line 219
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "/proc/uid_stat/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/tcp_snd"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 218
    invoke-virtual/range {v17 .. v18}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v10

    .line 221
    const-wide/16 v17, -0x1

    cmp-long v17, v12, v17

    if-eqz v17, :cond_a

    const-wide/16 v17, -0x1

    cmp-long v17, v10, v17

    if-nez v17, :cond_b

    .line 222
    :cond_a
    const-string v17, "Wifi"

    const-string v18, "Failed to read uid read/write byte counts"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 258
    .end local v25           #uidState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;
    :catch_0
    move-exception v43

    .line 259
    .local v43, e:Ljava/lang/NumberFormatException;
    const-string v17, "Wifi"

    const-string v18, "Non-uid files in /proc/uid_stat"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 223
    .end local v43           #e:Ljava/lang/NumberFormatException;
    .restart local v25       #uidState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;
    :cond_b
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->isInitialized()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 228
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getTransmitBytes()J

    move-result-wide v17

    sub-long v41, v10, v17

    .line 229
    .local v41, deltaTransmitBytes:J
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getReceiveBytes()J

    move-result-wide v17

    sub-long v39, v12, v17

    .line 230
    .local v39, deltaReceiveBytes:J
    move-wide/from16 v0, v41

    long-to-double v0, v0

    move-wide/from16 v17, v0

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getAverageTransmitPacketSize()D

    move-result-wide v19

    .line 230
    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v46

    .line 232
    .local v46, estimatedTransmitPackets:J
    move-wide/from16 v0, v39

    long-to-double v0, v0

    move-wide/from16 v17, v0

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Wifi;->wifiState:Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getAverageReceivePacketSize()D

    move-result-wide v19

    .line 232
    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v44

    .line 234
    .local v44, estimatedReceivePackets:J
    const-wide/16 v17, 0x0

    cmp-long v17, v41, v17

    if-lez v17, :cond_c

    const-wide/16 v17, 0x0

    cmp-long v17, v46, v17

    if-nez v17, :cond_c

    .line 235
    const-wide/16 v46, 0x1

    .line 237
    :cond_c
    const-wide/16 v17, 0x0

    cmp-long v17, v39, v17

    if-lez v17, :cond_d

    const-wide/16 v17, 0x0

    cmp-long v17, v44, v17

    if-nez v17, :cond_d

    .line 238
    const-wide/16 v44, 0x1

    .line 241
    :cond_d
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getTransmitBytes()J

    move-result-wide v17

    cmp-long v17, v10, v17

    if-nez v17, :cond_e

    .line 242
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getReceiveBytes()J

    move-result-wide v17

    cmp-long v17, v12, v17

    if-nez v17, :cond_e

    const/16 v38, 0x0

    .line 244
    .local v38, active:Z
    :goto_4
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getTransmitPackets()J

    move-result-wide v17

    add-long v26, v17, v46

    .line 245
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getReceivePackets()J

    move-result-wide v17

    add-long v28, v17, v44

    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    .line 243
    invoke-virtual/range {v25 .. v33}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->updateState(JJJJ)V

    .line 248
    if-eqz v38, :cond_6

    .line 249
    invoke-static {}, Ledu/umich/PowerTutor/components/Wifi$WifiData;->obtain()Ledu/umich/PowerTutor/components/Wifi$WifiData;

    move-result-object v26

    .line 250
    .local v26, uidData:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getPackets()D

    move-result-wide v27

    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getUplinkBytes()J

    move-result-wide v29

    .line 251
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getDownlinkBytes()J

    move-result-wide v31

    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getUplinkRate()D

    move-result-wide v33

    .line 252
    invoke-virtual/range {v25 .. v25}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->getPowerState()I

    move-result v37

    move-wide/from16 v35, v23

    .line 250
    invoke-virtual/range {v26 .. v37}, Ledu/umich/PowerTutor/components/Wifi$WifiData;->init(DJJDDI)V

    .line 253
    move-object/from16 v0, v48

    move/from16 v1, v49

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    goto/16 :goto_3

    .line 242
    .end local v26           #uidData:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    .end local v38           #active:Z
    :cond_e
    const/16 v38, 0x1

    goto :goto_4

    .line 256
    .end local v39           #deltaReceiveBytes:J
    .end local v41           #deltaTransmitBytes:J
    .end local v44           #estimatedReceivePackets:J
    .end local v46           #estimatedTransmitPackets:J
    :cond_f
    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v27, v25

    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    invoke-virtual/range {v27 .. v35}, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->updateState(JJJJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    const-string v0, "Wifi"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Wifi;->uidStatsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
