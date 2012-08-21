.class public Ledu/umich/PowerTutor/components/Threeg;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "Threeg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/Threeg$ThreegData;,
        Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;
    }
.end annotation


# static fields
.field public static final POWER_STATE_DCH:I = 0x2

.field public static final POWER_STATE_FACH:I = 0x1

.field public static final POWER_STATE_IDLE:I = 0x0

.field public static final POWER_STATE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Threeg"

.field private static final buf:[B


# instance fields
.field private dchFachDelay:I

.field private downlinkQueueSize:I

.field private fachIdleDelay:I

.field private lastUids:[I

.field private oper:Ljava/lang/String;

.field private phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

.field private readBytesFile:Ljava/lang/String;

.field private readPacketsFile:Ljava/lang/String;

.field private sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

.field private transBytesFile:Ljava/lang/String;

.field private transPacketsFile:Ljava/lang/String;

.field private uidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;",
            ">;"
        }
    .end annotation
.end field

.field private uidStatsFolder:Ljava/io/File;

.field private uplinkQueueSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FACH"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DCH"

    aput-object v2, v0, v1

    sput-object v0, Ledu/umich/PowerTutor/components/Threeg;->POWER_STATE_NAMES:[Ljava/lang/String;

    .line 383
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Ledu/umich/PowerTutor/components/Threeg;->buf:[B

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 3
    .parameter "context"
    .parameter "phoneConstants"

    .prologue
    .line 124
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 125
    iput-object p2, p0, Ledu/umich/PowerTutor/components/Threeg;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    .line 127
    const-string v1, "phone"

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 129
    invoke-interface {p2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegInterface()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, interfaceName:Ljava/lang/String;
    new-instance v1, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    invoke-direct {v1}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->uidStates:Landroid/util/SparseArray;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/virtual/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/statistics/tx_packets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->transPacketsFile:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/virtual/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/statistics/rx_packets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->readPacketsFile:Ljava/lang/String;

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
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->readBytesFile:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sys/devices/virtual/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/statistics/tx_bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->transBytesFile:Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/uid_stat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->uidStatsFolder:Ljava/io/File;

    .line 141
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/components/Threeg;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    .line 142
    return-void
.end method

.method private readLongFromFile(Ljava/lang/String;)J
    .locals 2
    .parameter "filePath"

    .prologue
    .line 386
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Threeg;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    invoke-virtual {v0, p1}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 33
    .parameter "iteration"

    .prologue
    .line 146
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v29

    .line 148
    .local v29, result:Ledu/umich/PowerTutor/service/IterationData;
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v28

    .line 150
    .local v28, netType:I
    const/4 v2, 0x3

    move/from16 v0, v28

    if-eq v0, v2, :cond_0

    .line 151
    const/16 v2, 0x8

    move/from16 v0, v28

    if-eq v0, v2, :cond_0

    .line 153
    const/16 v28, 0x3

    .line 156
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    const/4 v14, 0x2

    if-ne v2, v14, :cond_1

    .line 157
    const/4 v2, 0x3

    move/from16 v0, v28

    if-eq v0, v2, :cond_3

    .line 158
    const/16 v2, 0x8

    move/from16 v0, v28

    if-eq v0, v2, :cond_3

    .line 163
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    invoke-virtual {v2}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->interfaceOff()V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 167
    invoke-static {}, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->obtain()Ledu/umich/PowerTutor/components/Threeg$ThreegData;

    move-result-object v11

    .line 168
    .local v11, data:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    invoke-virtual {v11}, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->init()V

    .line 169
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 256
    .end local v11           #data:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    :cond_2
    :goto_0
    return-object v29

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    invoke-interface {v2, v14}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegDchFachDelay(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ledu/umich/PowerTutor/components/Threeg;->dchFachDelay:I

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    invoke-interface {v2, v14}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegFachIdleDelay(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ledu/umich/PowerTutor/components/Threeg;->fachIdleDelay:I

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    invoke-interface {v2, v14}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegUplinkQueue(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ledu/umich/PowerTutor/components/Threeg;->uplinkQueueSize:I

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->phoneConstants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    invoke-interface {v2, v14}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegDownlinkQueue(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ledu/umich/PowerTutor/components/Threeg;->downlinkQueueSize:I

    .line 181
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->transPacketsFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ledu/umich/PowerTutor/components/Threeg;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v3

    .line 182
    .local v3, transmitPackets:J
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->readPacketsFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ledu/umich/PowerTutor/components/Threeg;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v5

    .line 183
    .local v5, receivePackets:J
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->transBytesFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ledu/umich/PowerTutor/components/Threeg;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v7

    .line 184
    .local v7, transmitBytes:J
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->readBytesFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ledu/umich/PowerTutor/components/Threeg;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v9

    .line 185
    .local v9, receiveBytes:J
    const-wide/16 v14, -0x1

    cmp-long v2, v7, v14

    if-eqz v2, :cond_5

    const-wide/16 v14, -0x1

    cmp-long v2, v9, v14

    if-nez v2, :cond_6

    .line 187
    :cond_5
    const-string v2, "Threeg"

    const-string v14, "Failed to read packet and byte counts from wifi interface"

    invoke-static {v2, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    invoke-virtual {v2}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    .line 194
    move-object/from16 v0, p0

    iget v11, v0, Ledu/umich/PowerTutor/components/Threeg;->dchFachDelay:I

    move-object/from16 v0, p0

    iget v12, v0, Ledu/umich/PowerTutor/components/Threeg;->fachIdleDelay:I

    .line 195
    move-object/from16 v0, p0

    iget v13, v0, Ledu/umich/PowerTutor/components/Threeg;->uplinkQueueSize:I

    move-object/from16 v0, p0

    iget v14, v0, Ledu/umich/PowerTutor/components/Threeg;->downlinkQueueSize:I

    .line 192
    invoke-virtual/range {v2 .. v14}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->updateState(JJJJIIII)V

    .line 196
    invoke-static {}, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->obtain()Ledu/umich/PowerTutor/components/Threeg$ThreegData;

    move-result-object v11

    .line 197
    .restart local v11       #data:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    invoke-virtual {v2}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getPackets()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    invoke-virtual {v2}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getUplinkBytes()J

    move-result-wide v14

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    invoke-virtual {v2}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getDownlinkBytes()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    invoke-virtual {v2}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getPowerState()I

    move-result v18

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 197
    invoke-virtual/range {v11 .. v19}, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->init(JJJILjava/lang/String;)V

    .line 200
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 208
    .end local v11           #data:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/components/Threeg;->lastUids:[I

    invoke-virtual {v2, v14}, Ledu/umich/PowerTutor/util/SystemInfo;->getUids([I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->lastUids:[I

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/umich/PowerTutor/components/Threeg;->lastUids:[I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Threeg;->lastUids:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/4 v2, 0x0

    :goto_2
    move/from16 v0, v32

    if-ge v2, v0, :cond_2

    aget v30, v31, v2

    .line 210
    .local v30, uid:I
    const/4 v14, -0x1

    move/from16 v0, v30

    if-ne v0, v14, :cond_9

    .line 209
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    .end local v30           #uid:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/components/Threeg;->threegState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->dchFachDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->fachIdleDelay:I

    move/from16 v22, v0

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->uplinkQueueSize:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->downlinkQueueSize:I

    move/from16 v24, v0

    move-wide v13, v3

    move-wide v15, v5

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    .line 202
    invoke-virtual/range {v12 .. v24}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->updateState(JJJJIIII)V

    goto :goto_1

    .line 214
    .restart local v30       #uid:I
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/components/Threeg;->uidStates:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    .line 215
    .local v12, uidState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;
    if-nez v12, :cond_a

    .line 216
    new-instance v12, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;

    .end local v12           #uidState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;
    invoke-direct {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;-><init>()V

    .line 217
    .restart local v12       #uidState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/components/Threeg;->uidStates:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v14, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    :cond_a
    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->isStale()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 228
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/proc/uid_stat/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/tcp_rcv"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ledu/umich/PowerTutor/components/Threeg;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v9

    .line 229
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/proc/uid_stat/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/tcp_snd"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ledu/umich/PowerTutor/components/Threeg;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v7

    .line 231
    const-wide/16 v14, -0x1

    cmp-long v14, v9, v14

    if-eqz v14, :cond_b

    const-wide/16 v14, -0x1

    cmp-long v14, v7, v14

    if-nez v14, :cond_c

    .line 232
    :cond_b
    const-string v14, "Threeg"

    const-string v15, "Failed to read uid read/write byte counts"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 251
    .end local v12           #uidState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;
    :catch_0
    move-exception v27

    .line 252
    .local v27, e:Ljava/lang/NumberFormatException;
    const-string v14, "Threeg"

    const-string v15, "Non-uid files in /proc/uid_stat"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 233
    .end local v27           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #uidState:Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;
    :cond_c
    :try_start_1
    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->isInitialized()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 234
    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->dchFachDelay:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->fachIdleDelay:I

    move/from16 v22, v0

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->uplinkQueueSize:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->downlinkQueueSize:I

    move/from16 v24, v0

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    .line 234
    invoke-virtual/range {v12 .. v24}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->updateState(JJJJIIII)V

    .line 238
    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getUplinkBytes()J

    move-result-wide v14

    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getDownlinkBytes()J

    move-result-wide v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_d

    .line 239
    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getPowerState()I

    move-result v14

    if-eqz v14, :cond_7

    .line 240
    :cond_d
    invoke-static {}, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->obtain()Ledu/umich/PowerTutor/components/Threeg$ThreegData;

    move-result-object v13

    .line 241
    .local v13, uidData:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getPackets()J

    move-result-wide v14

    .line 242
    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getUplinkBytes()J

    move-result-wide v16

    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getDownlinkBytes()J

    move-result-wide v18

    .line 243
    invoke-virtual {v12}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->getPowerState()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/Threeg;->oper:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 241
    invoke-virtual/range {v13 .. v21}, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->init(JJJILjava/lang/String;)V

    .line 244
    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    goto/16 :goto_3

    .line 247
    .end local v13           #uidData:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    :cond_e
    const-wide/16 v15, -0x1

    const-wide/16 v17, -0x1

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->dchFachDelay:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->fachIdleDelay:I

    move/from16 v24, v0

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->uplinkQueueSize:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/Threeg;->downlinkQueueSize:I

    move/from16 v26, v0

    move-object v14, v12

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    .line 247
    invoke-virtual/range {v14 .. v26}, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->updateState(JJJJIIII)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const-string v0, "3G"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Threeg;->uidStatsFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
