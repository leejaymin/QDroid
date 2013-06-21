.class public Lcom/fleapapa/helper/CallPapa;
.super Ljava/lang/Object;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/CallPapa$Burst;,
        Lcom/fleapapa/helper/CallPapa$Call;,
        Lcom/fleapapa/helper/CallPapa$Callback;,
        Lcom/fleapapa/helper/CallPapa$Clip;,
        Lcom/fleapapa/helper/CallPapa$Packet;,
        Lcom/fleapapa/helper/CallPapa$RxCheck;,
        Lcom/fleapapa/helper/CallPapa$UE;
    }
.end annotation


# static fields
.field static final AFREQ:I = 0x1f40

.field public static final BT_MEDIA:B = 0x0t

.field public static final BT_TEXT:B = 0x1t

.field public static final CALLPATH:Ljava/lang/String; = "papa"

.field static final CHANNEL:I = 0x2

.field public static final CS_BURST_ADDED:I = 0x1

.field public static final CS_CALL_CHANGED:I = 0x20

.field public static final CS_PLAY_STATE:I = 0x8

.field public static final CS_SLICE_ADDED:I = 0x2

.field public static final CS_TALK_STATE:I = 0x4

.field public static final CS_UES_CHANGED:I = 0x10

.field static final JBSIZ:I = 0x3

.field static final MTU:I = 0x800

.field static final NB4P2P:I = 0x3

.field public static final NOTIFICATION_ID_OF_CONNECTION:I = 0x1

.field public static final NOTIFICATION_ID_OF_NEW_BURST:I = 0x2

.field public static final NOTIFICATION_ID_OF_NEW_TALK:I = 0x3

.field static final NRERTY:I = 0x3

.field static final PBYTES:I = 0xf00

.field static final PCMBITS:I = 0x2

.field static final PP:Ljava/lang/String; = "p/"

.field static final PSAMPLES:I = 0x780

.field static final PTIME:I = 0xf0

.field static final TBULL_MAX:I = 0x2bf20

.field static final TBULL_MIN:I = 0x7530

.field static final TBULL_TICK:I = 0x1388

.field static final TNOPUSH:I = 0x2d0

.field static final TPROBE_DELAY:I = 0x7d0

.field static final TPROBE_TRUNS:I = 0x4

.field static final TRETX:I = 0xbb8

.field public static final TS_CAN_TALK:I = 0x7700af00

.field public static final TS_NO_TALK:I = 0x7700007f

.field public static final TS_TALKING_I:I = 0x77ffff00

.field public static final TS_TALKING_J:I = 0x77ff7f00

.field public static final TS_TALKING_O:I = 0x77ff0000

.field static final UPORT:I = 0x1409

.field public static final WHO:Ljava/lang/String; = "CallPapa"


# instance fields
.field acall:Lcom/fleapapa/helper/CallPapa$Call;

.field adurl:Ljava/lang/String;

.field bshooter:Ljava/lang/Thread;

.field calls:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$Call;",
            ">;"
        }
    .end annotation
.end field

.field camera:Landroid/hardware/Camera;

.field dFrameSize:I

.field decoderOptions:Ljava/lang/String;

.field eFrameSize:I

.field ebytes:[B

.field enableCamera:Z

.field encoderOptions:Ljava/lang/String;

.field force_notify:Z

.field helloer:Ljava/lang/Thread;

.field ipapa:I

.field keyPush:I

.field laddr:Ljava/lang/String;

.field loop1sec:Ljava/lang/Thread;

.field maxCall:I

.field maxEout:I

.field maxIdleMins:I

.field maxParties:I

.field maxTalkSecs:I

.field mider:Ljava/util/concurrent/atomic/AtomicInteger;

.field mp_bang:Landroid/media/MediaPlayer;

.field mp_blip:Landroid/media/MediaPlayer;

.field mp_push:Landroid/media/MediaPlayer;

.field mp_time:Landroid/media/MediaPlayer;

.field muteBack:Z

.field nated:Z

.field nhello:J

.field noMap:Z

.field noUnsolicited:Z

.field noUrgency:Z

.field nopusher:Ljava/lang/Thread;

.field nshoot:I

.field obull:I

.field offMsgs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;",
            ">;"
        }
    .end annotation
.end field

.field omGetters:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field on_old:Z

.field packs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$Packet;",
            ">;"
        }
    .end annotation
.end field

.field papas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field playpoller:Ljava/lang/Thread;

.field ptick:I

.field pturn:I

.field quietOnPush:Z

.field quietOnStop:Z

.field quietOnTime:Z

.field raddr:Ljava/lang/String;

.field receiver:Ljava/lang/Thread;

.field record:Landroid/media/AudioRecord;

.field recorder:Ljava/lang/Thread;

.field resender:Ljava/lang/Thread;

.field rxChecks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fleapapa/helper/CallPapa$RxCheck;",
            ">;"
        }
    .end annotation
.end field

.field samples:[S

.field saveCall:Z

.field shootees:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$UE;",
            ">;"
        }
    .end annotation
.end field

.field stopped:Z

.field tbull:I

.field texp:I

.field tshoot:J

.field ues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$UE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, ""

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v1, 0x7530

    iput v1, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    .line 89
    const/16 v1, 0x1388

    iput v1, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    .line 90
    const/16 v1, 0xb4

    iput v1, p0, Lcom/fleapapa/helper/CallPapa;->texp:I

    .line 91
    iput v4, p0, Lcom/fleapapa/helper/CallPapa;->ipapa:I

    .line 92
    const/16 v1, 0x1e

    iput v1, p0, Lcom/fleapapa/helper/CallPapa;->maxTalkSecs:I

    .line 93
    iput v6, p0, Lcom/fleapapa/helper/CallPapa;->maxParties:I

    .line 94
    const/16 v1, 0x780

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->samples:[S

    .line 95
    const/16 v1, 0x800

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->ebytes:[B

    .line 98
    const-string v1, ""

    iput-object v2, p0, Lcom/fleapapa/helper/CallPapa;->encoderOptions:Ljava/lang/String;

    .line 99
    const-string v1, ""

    iput-object v2, p0, Lcom/fleapapa/helper/CallPapa;->decoderOptions:Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    .line 111
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    .line 129
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->omGetters:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->rxChecks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 155
    sput-object p0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    .line 157
    const-string v1, "papa"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 159
    const-string v1, "jni_config"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "no_JNI_config"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallPapa;->initPapa(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, err:I
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa: initPapa="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "noUnsolicited"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->noUnsolicited:Z

    .line 163
    const-string v1, "noMap"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    :goto_1
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->noMap:Z

    .line 164
    const-string v1, "muteBack"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    :goto_2
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->muteBack:Z

    .line 165
    const-string v1, "saveCall"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    :goto_3
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->saveCall:Z

    .line 166
    const-string v1, "noUrgency"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v5

    :goto_4
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->noUrgency:Z

    .line 167
    const-string v1, "quietOnPush"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    :goto_5
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->quietOnPush:Z

    .line 168
    const-string v1, "quietOnTime"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    :goto_6
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->quietOnTime:Z

    .line 169
    const-string v1, "quietOnStop"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v5

    :goto_7
    iput-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->quietOnStop:Z

    .line 170
    const-string v1, "keyPush"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa;->keyPush:I

    .line 171
    const-string v1, "maxCall"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "5"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    .line 172
    const-string v1, "maxIdleMins"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "10"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    .line 173
    iget v1, p0, Lcom/fleapapa/helper/CallPapa;->keyPush:I

    if-nez v1, :cond_0

    iput v6, p0, Lcom/fleapapa/helper/CallPapa;->keyPush:I

    .line 174
    :cond_0
    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->setMyUE()V

    .line 175
    :cond_1
    return-void

    :cond_2
    move v1, v4

    .line 162
    goto/16 :goto_0

    :cond_3
    move v1, v4

    .line 163
    goto/16 :goto_1

    :cond_4
    move v1, v4

    .line 164
    goto/16 :goto_2

    :cond_5
    move v1, v4

    .line 165
    goto/16 :goto_3

    :cond_6
    move v1, v4

    .line 166
    goto/16 :goto_4

    :cond_7
    move v1, v4

    .line 167
    goto :goto_5

    :cond_8
    move v1, v4

    .line 168
    goto :goto_6

    :cond_9
    move v1, v4

    .line 169
    goto :goto_7
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$UE;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/fleapapa/helper/CallPapa;->shootUE(Lcom/fleapapa/helper/CallPapa$UE;)V

    return-void
.end method

.method static elevel([S)I
    .locals 4
    .parameter "samples"

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, mx:I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 901
    return v0

    .line 899
    :cond_0
    aget-short v1, p0, v3

    .line 900
    .local v1, s:S
    if-lt v1, v0, :cond_1

    move v0, v1

    .line 899
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static myCallLogPath(Z)Ljava/io/File;
    .locals 6
    .parameter "write"

    .prologue
    const/4 v5, 0x0

    .line 806
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 807
    .local v1, sdCard:Ljava/io/File;
    if-nez v1, :cond_0

    .line 808
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v3, "CallPapa.myCallLogPath: getExternalStorageDirectory() fail!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 821
    :goto_0
    return-object v2

    .line 811
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    .line 812
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CallPapa.myCallLogPath: sd card path \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not writeable!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 813
    goto :goto_0

    .line 815
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "papa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    .local v0, path:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 817
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 818
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CallPapa.myCallLogPath: failed to create sd card path \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 819
    goto/16 :goto_0

    :cond_3
    move-object v2, v0

    .line 821
    goto/16 :goto_0
.end method

.method static play_clip(I)V
    .locals 2
    .parameter "clipid"

    .prologue
    .line 271
    sget-object v1, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 272
    .local v0, player:Landroid/media/MediaPlayer;
    new-instance v1, Lcom/fleapapa/helper/CallPapa$7;

    invoke-direct {v1}, Lcom/fleapapa/helper/CallPapa$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 278
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 279
    return-void
.end method

.method private shootUE(Lcom/fleapapa/helper/CallPapa$UE;)V
    .locals 4
    .parameter "ue"

    .prologue
    .line 613
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-ne v0, v1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/fleapapa/helper/CallPapa$UE;->ptime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    .line 623
    const/4 v0, 0x3

    iput v0, p1, Lcom/fleapapa/helper/CallPapa$UE;->bcnt:I

    .line 624
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 624
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static showHelloNotification(Z)V
    .locals 10
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 883
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    if-eqz p0, :cond_0

    const v2, 0x7f060013

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v5, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    aput-object v5, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, text:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const-class v2, Lcom/fleapapa/helper/Helper;

    invoke-direct {v4, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    .local v4, intent:Landroid/content/Intent;
    const-string v0, "push"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    .line 888
    if-eqz p0, :cond_1

    const v2, 0x7f020023

    .line 893
    :goto_1
    const/16 v7, 0x20

    move-object v5, v3

    move-object v6, v3

    move v9, v8

    .line 886
    invoke-static/range {v0 .. v9}, Lcom/fleapapa/util/MyNotify;->notifyStatusBar(Landroid/content/Context;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;III)V

    .line 896
    return-void

    .line 883
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    const v2, 0x7f060014

    goto :goto_0

    .line 888
    .restart local v3       #text:Ljava/lang/String;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1
    const v2, 0x7f02005e

    goto :goto_1
.end method


# virtual methods
.method add_papa(Ljava/net/InetSocketAddress;)I
    .locals 4
    .parameter "papa"

    .prologue
    .line 262
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    monitor-exit v1

    move v1, v2

    :goto_0
    return v1

    .line 263
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 264
    .local v0, sa:Ljava/net/InetSocketAddress;
    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 262
    .end local v0           #sa:Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method bshooter()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fleapapa/helper/CallPapa;->tshoot:J

    .line 541
    :goto_0
    iget-boolean v4, p0, Lcom/fleapapa/helper/CallPapa;->stopped:Z

    if-eqz v4, :cond_1

    .line 610
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v5, "CallPapa.bshooter: exit!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 543
    :cond_0
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/CallPapa;->waitHelloer(I)V

    .line 542
    :cond_1
    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eqz v4, :cond_0

    .line 545
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 562
    .local v1, tnow:J
    iget-wide v4, p0, Lcom/fleapapa/helper/CallPapa;->tshoot:J

    cmp-long v4, v4, v1

    if-gtz v4, :cond_6

    .line 565
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    if-eqz v4, :cond_3

    .line 566
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    iget v5, p0, Lcom/fleapapa/helper/CallPapa;->obull:I

    if-ne v4, v5, :cond_3

    .line 567
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    const/16 v5, -0x7d0

    iput v5, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    add-int/lit16 v4, v4, -0x7d0

    iput v4, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    .line 568
    :cond_3
    iget-boolean v4, p0, Lcom/fleapapa/helper/CallPapa;->nated:Z

    if-eqz v4, :cond_5

    .line 577
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    if-eqz v4, :cond_b

    .line 578
    const-string v4, "$PAPA"

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v9}, Lcom/fleapapa/helper/CallPapa;->shoot(Ljava/lang/String;Ljava/net/InetSocketAddress;Z)V

    .line 584
    :goto_2
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c

    .line 592
    :cond_5
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    const/16 v5, 0x7530

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const v5, 0x2bf20

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    .line 593
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    iput v4, p0, Lcom/fleapapa/helper/CallPapa;->obull:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/fleapapa/helper/CallPapa;->tshoot:J

    .line 596
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/fleapapa/helper/CallPapa;->tshoot:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fleapapa/helper/CallPapa;->tshoot:J

    .line 601
    :cond_6
    :try_start_0
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :try_start_1
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 603
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 601
    :goto_3
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 607
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 545
    .end local v1           #tnow:J
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/CallPapa$UE;

    .line 546
    .local v3, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    if-nez v5, :cond_a

    .line 547
    iget v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->bcnt:I

    sub-int v6, v5, v9

    iput v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->bcnt:I

    if-gtz v5, :cond_8

    .line 548
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CallPapa.bshooter: ue "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not p2p-able!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    iget v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 555
    :cond_8
    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    sget-object v6, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    iget-object v6, v6, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    invoke-virtual {v5, v6}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    iget-object v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v5, v6, v8}, Lcom/fleapapa/helper/CallPapa;->shoot(Ljava/lang/String;Ljava/net/InetSocketAddress;Z)V

    .line 556
    :cond_9
    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    sget-object v6, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    iget-object v6, v6, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    invoke-virtual {v5, v6}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    iget-object v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->rsa:Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v5, v6, v8}, Lcom/fleapapa/helper/CallPapa;->shoot(Ljava/lang/String;Ljava/net/InetSocketAddress;Z)V

    goto/16 :goto_1

    .line 559
    :cond_a
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    iget v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 581
    .end local v3           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    .restart local v1       #tnow:J
    :cond_b
    const-string v4, "$papa"

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v8}, Lcom/fleapapa/helper/CallPapa;->shoot(Ljava/lang/String;Ljava/net/InetSocketAddress;Z)V

    goto/16 :goto_2

    .line 584
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 585
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v5, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/CallPapa$UE;

    .line 586
    .restart local v3       #ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v7, Lcom/fleapapa/util/My;->uid:I

    if-eq v6, v7, :cond_d

    .line 587
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    iget v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 588
    iget-object v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    if-eqz v6, :cond_d

    .line 589
    iget-object v6, v3, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    iget-object v7, v3, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v6, v7, v8}, Lcom/fleapapa/helper/CallPapa;->shoot(Ljava/lang/String;Ljava/net/InetSocketAddress;Z)V

    goto :goto_4

    .line 604
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    .end local v3           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_e
    :try_start_3
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v6, p0, Lcom/fleapapa/helper/CallPapa;->tshoot:J

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method public c2j(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 2550
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallPapa.c2j: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    return-void
.end method

.method call0(Z)Lcom/fleapapa/helper/CallPapa$Call;
    .locals 3
    .parameter "urgency"

    .prologue
    .line 916
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 919
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 916
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 917
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-boolean v2, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-ne v2, p1, :cond_0

    move-object v1, v0

    .line 918
    goto :goto_0
.end method

.method callback(Lcom/fleapapa/helper/CallPapa$Call;I)V
    .locals 1
    .parameter "call"
    .parameter "stateChange"

    .prologue
    .line 942
    if-nez p1, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa$Call;->callback:Lcom/fleapapa/helper/CallPapa$Callback;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa$Call;->callback:Lcom/fleapapa/helper/CallPapa$Callback;

    invoke-interface {v0, p1, p2}, Lcom/fleapapa/helper/CallPapa$Callback;->function(Lcom/fleapapa/helper/CallPapa$Call;I)V

    goto :goto_0
.end method

.method current_papa()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    iget v2, p0, Lcom/fleapapa/helper/CallPapa;->ipapa:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object p0

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native decStart(Ljava/lang/String;)I
.end method

.method public native decStop()I
.end method

.method public native decode([BI[SI)I
.end method

.method public native encStart(Ljava/lang/String;)I
.end method

.method public native encStop()I
.end method

.method public native encode([SI[BI)I
.end method

.method findUEs(Ljava/lang/String;Z)V
    .locals 6
    .parameter "name"
    .parameter "urgency"

    .prologue
    const/4 v5, 0x1

    const-string v4, "\n"

    .line 796
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 804
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    const v3, 0xffff

    and-int v0, v2, v3

    .line 799
    .local v0, mid:I
    const-string v2, "FN"

    invoke-virtual {p0, v2, v0}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 800
    .local v1, msg:Ljava/lang/StringBuffer;
    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p1, :cond_1

    move-object v3, p1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 801
    const-string v2, "urge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    const-string v2, "lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v5, v3}, Lcom/fleapapa/helper/Locales;->locales(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    new-instance v2, Lcom/fleapapa/helper/CallPapa$Packet;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    goto :goto_0

    .line 800
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 801
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method getUE(I)Lcom/fleapapa/helper/CallPapa$UE;
    .locals 3
    .parameter "uid"

    .prologue
    .line 786
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$UE;

    .line 787
    .local v0, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/fleapapa/helper/CallPapa$UE;

    invoke-direct {v1, p0, p1}, Lcom/fleapapa/helper/CallPapa$UE;-><init>(Lcom/fleapapa/helper/CallPapa;I)V

    goto :goto_0
.end method

.method public hello(ZZ)V
    .locals 10
    .parameter "on"
    .parameter "notify"

    .prologue
    .line 312
    iput-boolean p2, p0, Lcom/fleapapa/helper/CallPapa;->force_notify:Z

    .line 319
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    const v6, 0xffff

    and-int v0, v5, v6

    .line 320
    .local v0, mid:I
    const-string v5, "HI"

    invoke-virtual {p0, v5, v0}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 321
    .local v1, msg:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_9

    .line 322
    const-string v5, "lsa="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/fleapapa/helper/CallPapa;->laddr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 323
    const-string v6, "gps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v6}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v6}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 324
    const-string v6, "user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 325
    const-string v6, "avat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget v6, Lcom/fleapapa/util/My;->avatar:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 326
    const-string v6, "lang="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "|"

    invoke-static {v6, v7}, Lcom/fleapapa/helper/Locales;->locales(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 327
    const-string v6, "urge="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-boolean v6, p0, Lcom/fleapapa/helper/CallPapa;->noUrgency:Z

    if-eqz v6, :cond_7

    const-string v6, "0"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 328
    const-string v6, "buds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    invoke-virtual {v6}, Lcom/fleapapa/helper/Group;->buddyIds()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 329
    const-string v6, "hi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-wide v6, p0, Lcom/fleapapa/helper/CallPapa;->nhello:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 330
    const-string v6, "v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget v6, Lcom/fleapapa/util/My;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    sget-object v5, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "name="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :cond_0
    sget-object v5, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, "city="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    :cond_1
    sget-object v5, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, "email="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    :cond_2
    iget-wide v5, p0, Lcom/fleapapa/helper/CallPapa;->nhello:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/fleapapa/helper/CallPapa;->nhello:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 338
    const-string v5, "phone="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 339
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 340
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 342
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_3
    const-string v2, ""

    .line 345
    .local v2, omids:Ljava/lang/String;
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 348
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 349
    const-string v5, "mdel="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    .end local v2           #omids:Ljava/lang/String;
    :cond_5
    :goto_2
    new-instance v4, Lcom/fleapapa/helper/CallPapa$Packet;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    .line 356
    .local v4, p:Lcom/fleapapa/helper/CallPapa$Packet;
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    .line 358
    iget v5, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    const/16 v6, 0x7530

    if-gt v5, v6, :cond_6

    .line 359
    const/16 v5, 0x7530

    iput v5, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    .line 360
    const/16 v5, 0x1388

    iput v5, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    .line 361
    const/4 v5, 0x0

    iput v5, p0, Lcom/fleapapa/helper/CallPapa;->pturn:I

    .line 363
    :cond_6
    return-void

    .line 327
    .end local v4           #p:Lcom/fleapapa/helper/CallPapa$Packet;
    :cond_7
    const-string v6, "1"

    goto/16 :goto_0

    .line 345
    .restart local v2       #omids:Ljava/lang/String;
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 346
    .local v3, omsg:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    invoke-virtual {v3}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->loaded()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 347
    const-string v6, ","

    iget v7, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->mid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 352
    .end local v2           #omids:Ljava/lang/String;
    .end local v3           #omsg:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    :cond_9
    const-string v5, "off=1\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/fleapapa/helper/CallPapa;->showHelloNotification(Z)V

    goto :goto_2
.end method

.method helloer()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1770

    const/4 v8, 0x0

    .line 297
    const-wide/16 v0, 0x0

    .line 298
    .local v0, tLastHello:J
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/fleapapa/helper/CallPapa;->stopped:Z

    if-eqz v6, :cond_2

    .line 309
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v7, "CallPapa.helloer: exit!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 300
    :cond_1
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/CallPapa;->waitHelloer(I)V

    .line 299
    :cond_2
    sget v6, Lcom/fleapapa/util/My;->uid:I

    if-eqz v6, :cond_1

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 302
    .local v4, tnow:J
    iget v6, p0, Lcom/fleapapa/helper/CallPapa;->texp:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v6, v0

    sub-long/2addr v6, v9

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 303
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v8}, Lcom/fleapapa/helper/CallPapa;->hello(ZZ)V

    .line 304
    move-wide v0, v4

    .line 306
    :cond_3
    iget v6, p0, Lcom/fleapapa/helper/CallPapa;->texp:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v6, v0

    sub-long/2addr v6, v9

    sub-long v2, v6, v4

    .line 307
    .local v2, tnap:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    long-to-int v6, v2

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallPapa;->waitHelloer(I)V

    goto :goto_0
.end method

.method public native initPapa(Ljava/lang/String;)I
.end method

.method public isSpeaking(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x1

    .line 904
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 913
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 904
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 906
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v2, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    if-ne v2, p1, :cond_2

    move v1, v3

    .line 907
    goto :goto_0

    .line 909
    :cond_2
    iget-object v2, v0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, v0, Lcom/fleapapa/helper/CallPapa$Call;->clip:Lcom/fleapapa/helper/CallPapa$Clip;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Clip;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    if-ne v2, p1, :cond_0

    move v1, v3

    .line 911
    goto :goto_0
.end method

.method loadCall(IZ)Lcom/fleapapa/helper/CallPapa$Call;
    .locals 4
    .parameter "cid"
    .parameter "create"

    .prologue
    .line 2467
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 2475
    :goto_0
    return-object v2

    .line 2470
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/CallPapa;->logFile(I)Ljava/io/File;

    move-result-object v1

    .line 2471
    .local v1, logf:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 2472
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/fleapapa/helper/CallPapa;->readCall(Ljava/io/File;Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    .line 2473
    goto :goto_0

    .line 2475
    :cond_1
    if-eqz p2, :cond_2

    new-instance v2, Lcom/fleapapa/helper/CallPapa$Call;

    invoke-direct {v2, p0, p1}, Lcom/fleapapa/helper/CallPapa$Call;-><init>(Lcom/fleapapa/helper/CallPapa;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method logFile(I)Ljava/io/File;
    .locals 7
    .parameter "cid"

    .prologue
    const/4 v4, 0x1

    .line 931
    invoke-static {v4}, Lcom/fleapapa/helper/CallPapa;->myCallLogPath(Z)Ljava/io/File;

    move-result-object v0

    .line 932
    .local v0, logPath:Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 933
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%016x.log"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method loop1sec()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 642
    :goto_0
    iget-boolean v5, p0, Lcom/fleapapa/helper/CallPapa;->stopped:Z

    if-eqz v5, :cond_0

    .line 692
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "CallPapa.loop1sec: exit!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 643
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 646
    .local v3, tnow:J
    const/4 v1, 0x0

    .line 649
    .local v1, needSleep:Z
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 662
    iget v5, p0, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    if-eqz v5, :cond_3

    .line 663
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-le v5, v11, :cond_3

    .line 664
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b

    .line 670
    :cond_3
    iget v5, p0, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    if-eqz v5, :cond_5

    .line 671
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    .line 675
    :cond_5
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->rxChecks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_d

    .line 679
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->rxChecks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 680
    const/4 v1, 0x1

    .line 683
    :cond_7
    :try_start_0
    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    if-eqz v1, :cond_e

    .line 685
    :try_start_1
    iget-object v6, p0, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    const-wide/16 v7, 0x3e8

    add-long/2addr v7, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 683
    :goto_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 689
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 649
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 650
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    if-eqz v6, :cond_1

    .line 651
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v6, v6, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    if-lez v6, :cond_1

    .line 652
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v6, v6, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    sget v7, Lcom/fleapapa/util/My;->uid:I

    if-eq v6, v7, :cond_1

    .line 653
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-wide v6, v6, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 654
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-wide v6, v6, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_a

    .line 655
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget v6, v6, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_9

    .line 656
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {v6}, Lcom/fleapapa/helper/CallPapa$Burst;->finish()V

    goto/16 :goto_1

    .line 657
    :cond_9
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    invoke-virtual {v6}, Lcom/fleapapa/helper/CallPapa$Burst;->clear()V

    goto/16 :goto_1

    .line 658
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 664
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 665
    .restart local v0       #call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-le v6, v11, :cond_2

    .line 666
    iget-boolean v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-nez v6, :cond_2

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/fleapapa/helper/CallPapa$Call;->atime:J

    sub-long/2addr v6, v8

    iget v8, p0, Lcom/fleapapa/helper/CallPapa;->maxIdleMins:I

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 668
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->close()V

    goto/16 :goto_2

    .line 671
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 672
    .restart local v0       #call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-le v6, v11, :cond_4

    .line 673
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 675
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/CallPapa$RxCheck;

    .line 676
    .local v2, rc:Lcom/fleapapa/helper/CallPapa$RxCheck;
    iget-wide v6, v2, Lcom/fleapapa/helper/CallPapa$RxCheck;->stime:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 677
    invoke-virtual {v2}, Lcom/fleapapa/helper/CallPapa$RxCheck;->notifyOffMsg()V

    goto/16 :goto_4

    .line 686
    .end local v2           #rc:Lcom/fleapapa/helper/CallPapa$RxCheck;
    :cond_e
    :try_start_3
    iget-object v6, p0, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5
.end method

.method newCall(Z)Lcom/fleapapa/helper/CallPapa$Call;
    .locals 5
    .parameter "urgency"

    .prologue
    .line 790
    new-instance v0, Lcom/fleapapa/helper/CallPapa$Call;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/fleapapa/helper/CallPapa$Call;-><init>(Lcom/fleapapa/helper/CallPapa;I)V

    .line 791
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iput-boolean p1, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    .line 792
    if-eqz p1, :cond_0

    sget-object v1, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v2, 0x7f0600e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    .line 793
    return-object v0

    .line 792
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method om_getter(I)V
    .locals 20
    .parameter "cid"

    .prologue
    .line 2392
    const-wide/16 v14, 0x1388

    invoke-static {v14, v15}, Lcom/fleapapa/util/MyUtil;->nap(J)Z

    .line 2394
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v11, oms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_2

    .line 2400
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2401
    .local v10, nu:I
    new-instance v14, Lcom/fleapapa/helper/CallPapa$8;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/CallPapa$8;-><init>(Lcom/fleapapa/helper/CallPapa;)V

    invoke-static {v11, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2406
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/CallPapa;->loadCall(IZ)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v5

    .line 2408
    .local v5, call:Lcom/fleapapa/helper/CallPapa$Call;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_3

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->omGetters:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v14, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Call;->close()V

    .line 2462
    sget-object v14, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "CallPapa.om_getter#"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": exit!! # of unloads="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    return-void

    .line 2395
    .end local v5           #call:Lcom/fleapapa/helper/CallPapa$Call;
    .end local v10           #nu:I
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 2396
    .local v7, m:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    iget v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->cid:I

    move v0, v15

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 2397
    invoke-virtual {v7}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->loaded()Z

    move-result v15

    if-nez v15, :cond_0

    .line 2398
    iget-boolean v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->error:Z

    if-nez v15, :cond_0

    .line 2399
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2408
    .end local v7           #m:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    .restart local v5       #call:Lcom/fleapapa/helper/CallPapa$Call;
    .restart local v10       #nu:I
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 2409
    .restart local v7       #m:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    iget v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->uid:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v13

    .line 2411
    .local v13, sue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    if-nez v15, :cond_4

    .line 2412
    new-instance v15, Lcom/fleapapa/helper/CallPapa$Burst;

    move-object v0, v7

    iget-byte v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->type:B

    move/from16 v16, v0

    move-object v0, v7

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->len:I

    move/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fleapapa/helper/CallPapa$Burst;-><init>(Lcom/fleapapa/helper/CallPapa;Lcom/fleapapa/helper/CallPapa$Call;BI)V

    iput-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 2414
    iget-object v15, v5, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    move-object v0, v7

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2416
    :cond_4
    iget-byte v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->type:B

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 2418
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    move-object v0, v7

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->msg:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    .line 2419
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 2420
    move-object v0, v7

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    move-object/from16 v16, v0

    move-object v0, v7

    iget-wide v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->stime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    .line 2419
    move-wide/from16 v0, v17

    move-object v2, v15

    iput-wide v0, v2, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    .line 2421
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    const/16 v16, 0x0

    move-object v0, v7

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->nkbit:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/BitSet;->set(II)V

    .line 2451
    :cond_5
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    .line 2453
    iget v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->bix:I

    move-object v0, v5

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_b

    .line 2454
    iget-object v15, v5, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    move-object v0, v7

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->bix:I

    move/from16 v16, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2457
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 2424
    :cond_6
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    iget v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->nkbit:I

    if-lt v6, v15, :cond_8

    .line 2446
    :cond_7
    sget-object v15, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "CallPapa.om_getter#"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": nbits="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v7

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",error="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v7

    iget-boolean v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->error:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget-boolean v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->error:Z

    if-nez v15, :cond_1

    invoke-virtual {v7}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->loaded()Z

    move-result v15

    if-nez v15, :cond_5

    goto/16 :goto_1

    .line 2425
    :cond_8
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    invoke-virtual {v15, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_9

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->mider:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v15

    const v16, 0xffff

    and-int v8, v15, v16

    .line 2428
    .local v8, mid:I
    const-string v15, "FO"

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/CallPapa;->req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 2429
    .local v9, msg:Ljava/lang/StringBuffer;
    const-string v15, "to="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v0, v7

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2430
    const-string v15, "cid="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "%x"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v7

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->cid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2431
    const-string v15, "mid="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v0, v7

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->mid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2432
    const-string v15, "bix="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v0, v7

    iget v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->bix:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2433
    const-string v15, "bit="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2434
    new-instance v12, Lcom/fleapapa/helper/CallPapa$Packet;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;I)V

    .line 2436
    .local v12, pak:Lcom/fleapapa/helper/CallPapa$Packet;
    iget-object v15, v13, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    if-eqz v15, :cond_a

    iget-object v15, v13, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    :goto_4
    const/16 v16, 0x3

    const/16 v17, 0x1

    move-object v0, v12

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    .line 2439
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    monitor-enter v15

    .line 2440
    :try_start_0
    move-object v0, v7

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x1f40

    invoke-virtual/range {v16 .. v18}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2439
    :goto_5
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2444
    iget-object v15, v7, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    invoke-virtual {v15, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2424
    .end local v8           #mid:I
    .end local v9           #msg:Ljava/lang/StringBuffer;
    .end local v12           #pak:Lcom/fleapapa/helper/CallPapa$Packet;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 2436
    .restart local v8       #mid:I
    .restart local v9       #msg:Ljava/lang/StringBuffer;
    .restart local v12       #pak:Lcom/fleapapa/helper/CallPapa$Packet;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v15

    goto :goto_4

    .line 2439
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 2455
    .end local v6           #i:I
    .end local v8           #mid:I
    .end local v9           #msg:Ljava/lang/StringBuffer;
    .end local v12           #pak:Lcom/fleapapa/helper/CallPapa$Packet;
    :cond_b
    iget-object v15, v5, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    move-object v0, v7

    iget-object v0, v0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2441
    .restart local v6       #i:I
    .restart local v8       #mid:I
    .restart local v9       #msg:Ljava/lang/StringBuffer;
    .restart local v12       #pak:Lcom/fleapapa/helper/CallPapa$Packet;
    :catch_0
    move-exception v16

    goto :goto_5
.end method

.method readCall(Ljava/io/File;Z)Lcom/fleapapa/helper/CallPapa$Call;
    .locals 7
    .parameter "logFile"
    .parameter "readBursts"

    .prologue
    const/4 v6, 0x0

    .line 825
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 826
    .local v2, in:Ljava/io/DataInputStream;
    new-instance v0, Lcom/fleapapa/helper/CallPapa$Call;

    invoke-direct {v0, p0}, Lcom/fleapapa/helper/CallPapa$Call;-><init>(Lcom/fleapapa/helper/CallPapa;)V

    .line 827
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    #calls: Lcom/fleapapa/helper/CallPapa$Call;->read(Ljava/io/DataInputStream;Z)Z
    invoke-static {v0, v2, p2}, Lcom/fleapapa/helper/CallPapa$Call;->access$0(Lcom/fleapapa/helper/CallPapa$Call;Ljava/io/DataInputStream;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v6

    .line 839
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    .end local v2           #in:Ljava/io/DataInputStream;
    :goto_0
    return-object v3

    .line 828
    .restart local v0       #call:Lcom/fleapapa/helper/CallPapa$Call;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 830
    iget v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    if-nez v3, :cond_1

    .line 831
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 832
    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 835
    goto :goto_0

    .line 837
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    .end local v2           #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 838
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CallPapa.readCall: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 839
    goto :goto_0
.end method

.method receiver()V
    .locals 15

    .prologue
    .line 422
    new-instance v5, Lcom/fleapapa/helper/CallPapa$Packet;

    const/16 v11, 0x800

    invoke-direct {v5, p0, v11}, Lcom/fleapapa/helper/CallPapa$Packet;-><init>(Lcom/fleapapa/helper/CallPapa;I)V

    .line 423
    .local v5, pak:Lcom/fleapapa/helper/CallPapa$Packet;
    const/16 v11, 0x100

    new-array v6, v11, [B

    .line 424
    .local v6, peer:[B
    :cond_0
    :goto_0
    iget-boolean v11, p0, Lcom/fleapapa/helper/CallPapa;->stopped:Z

    if-eqz v11, :cond_1

    .line 534
    sget-object v11, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v12, "CallPapa.receiver: exit!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 425
    :cond_1
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    iget-object v12, v5, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    array-length v12, v12

    invoke-virtual {p0, v6, v11, v12}, Lcom/fleapapa/helper/CallPapa;->recv([B[BI)I

    move-result v11

    iput v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    .line 426
    iget v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    if-lez v11, :cond_0

    .line 427
    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/CallPapa$Packet;->b2a([B)V

    .line 428
    iget v3, v5, Lcom/fleapapa/helper/CallPapa$Packet;->dlen:I

    .line 429
    .local v3, mlen:I
    iget-object v2, v5, Lcom/fleapapa/helper/CallPapa$Packet;->data:[B

    .line 434
    .local v2, mbuf:[B
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    const/16 v12, 0x2a

    if-eq v11, v12, :cond_2

    const/4 v11, 0x0

    aget-byte v11, v2, v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_9

    .line 435
    :cond_2
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x1

    sub-int v13, v3, v13

    invoke-direct {v11, v2, v12, v13}, Ljava/lang/String;-><init>([BII)V

    const/16 v12, 0x10

    invoke-static {v11, v12}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 436
    .local v10, uid:I
    sget v11, Lcom/fleapapa/util/My;->uid:I

    if-eqz v11, :cond_0

    .line 438
    sget v11, Lcom/fleapapa/util/My;->uid:I

    if-ne v10, v11, :cond_7

    .line 439
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_4

    .line 440
    sget-object v11, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CallPapa.receiver: NAT probe acked. tbull="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". ptick="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". pturn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/fleapapa/helper/CallPapa;->pturn:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget v11, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    if-gez v11, :cond_3

    .line 442
    iget v11, p0, Lcom/fleapapa/helper/CallPapa;->pturn:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/fleapapa/helper/CallPapa;->pturn:I

    const/4 v12, 0x4

    if-lt v11, v12, :cond_5

    .line 443
    const/4 v11, 0x0

    iput v11, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    .line 446
    :cond_3
    :goto_1
    iget v11, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    const v12, 0x2bf20

    if-lt v11, v12, :cond_6

    .line 447
    const/4 v11, 0x0

    iput v11, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    .line 449
    :goto_2
    iget v11, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    if-nez v11, :cond_4

    .line 450
    sget-object v11, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CallPapa.receiver: FINAL tbull="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4
    iget-object v11, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v11

    .line 454
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/fleapapa/helper/CallPapa;->tshoot:J

    .line 455
    iget-object v12, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 453
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 444
    :cond_5
    const/16 v11, 0x1388

    iput v11, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    goto :goto_1

    .line 448
    :cond_6
    iget v11, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    iget v12, p0, Lcom/fleapapa/helper/CallPapa;->ptick:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    goto :goto_2

    .line 459
    :cond_7
    sget-object v11, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CallPapa.receiver: bullet from "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v11, p0, Lcom/fleapapa/helper/CallPapa;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fleapapa/helper/CallPapa$UE;

    .line 461
    .local v9, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-eqz v9, :cond_0

    .line 462
    iget-object v11, v9, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    if-nez v11, :cond_8

    .line 463
    sget-object v11, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CallPapa.bshooter: ue "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v9, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is p2p-able at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_8
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    iput-object v11, v9, Lcom/fleapapa/helper/CallPapa$UE;->psa:Ljava/net/InetSocketAddress;

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v9, Lcom/fleapapa/helper/CallPapa$UE;->ptime:J

    .line 466
    iget-object v11, p0, Lcom/fleapapa/helper/CallPapa;->shootees:Ljava/util/concurrent/ConcurrentHashMap;

    iget v12, v9, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 472
    .end local v9           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    .end local v10           #uid:I
    :cond_9
    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->headers()Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, text:Ljava/lang/String;
    sget-object v11, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CallPapa.receiver: from "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v5, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    invoke-static {v13}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v11, "\n"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    .line 475
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_0

    .line 477
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v0, v3, v11

    .line 478
    .local v0, blen:I
    if-lez v0, :cond_c

    .line 479
    new-array v11, v0, [B

    iput-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    .line 480
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, v5, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    const/4 v13, 0x0

    invoke-static {v2, v11, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    :goto_3
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "p/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 487
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->lines:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "p/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, tk:[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v11, v8

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 489
    const/4 v11, 0x0

    aget-object v11, v8, v11

    iput-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    .line 490
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    .line 491
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->uacid:I

    .line 493
    iget v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    if-gez v11, :cond_13

    .line 494
    array-length v11, v8

    const/4 v12, 0x5

    if-lt v11, v12, :cond_0

    .line 495
    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->uasid:I

    .line 496
    const/4 v11, 0x4

    aget-object v11, v8, v11

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    .line 497
    iget v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    const/16 v12, 0x12c

    if-lt v11, v12, :cond_a

    .line 498
    sget-object v11, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CallPapa.receiver: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", rcode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_a
    iget-object v11, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_d

    .line 515
    iget v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    const/16 v12, 0x64

    if-eq v11, v12, :cond_0

    .line 517
    sget v11, Lcom/fleapapa/util/My;->uid:I

    if-eqz v11, :cond_0

    .line 518
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "IV"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->rsp_call()V

    goto/16 :goto_0

    .line 483
    .end local v8           #tk:[Ljava/lang/String;
    :cond_c
    const/4 v11, 0x0

    iput-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->body:[B

    goto/16 :goto_3

    .line 500
    .restart local v8       #tk:[Ljava/lang/String;
    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/helper/CallPapa$Packet;

    .line 501
    .local v4, p:Lcom/fleapapa/helper/CallPapa$Packet;
    iget v12, v4, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    iget v13, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    neg-int v13, v13

    if-ne v12, v13, :cond_b

    .line 503
    const/16 v12, 0x12c

    iget v13, v5, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    if-gt v12, v13, :cond_e

    iget v12, v5, Lcom/fleapapa/helper/CallPapa$Packet;->rcode:I

    const/16 v13, 0x190

    if-ge v12, v13, :cond_e

    .line 504
    iget-object v12, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    iget v13, v4, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v12, "ct"

    invoke-virtual {v5, v12}, Lcom/fleapapa/helper/CallPapa$Packet;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, contact:Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 507
    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/CallPapa;->add_papa(Ljava/net/InetSocketAddress;)I

    move-result v12

    iput v12, p0, Lcom/fleapapa/helper/CallPapa;->ipapa:I

    .line 508
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v12

    iget v13, v4, Lcom/fleapapa/helper/CallPapa$Packet;->mtry:I

    iget v14, v4, Lcom/fleapapa/helper/CallPapa$Packet;->ersp:I

    invoke-virtual {v4, v12, v13, v14}, Lcom/fleapapa/helper/CallPapa$Packet;->send(Ljava/net/InetSocketAddress;II)I

    goto :goto_4

    .line 511
    .end local v1           #contact:Ljava/lang/String;
    :cond_e
    iget v12, v4, Lcom/fleapapa/helper/CallPapa$Packet;->ersp:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    iput v12, v4, Lcom/fleapapa/helper/CallPapa$Packet;->ersp:I

    if-gtz v12, :cond_b

    .line 512
    iget-object v12, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    iget v13, v4, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 519
    .end local v4           #p:Lcom/fleapapa/helper/CallPapa$Packet;
    :cond_f
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "HI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->rsp_helo()V

    goto/16 :goto_0

    .line 520
    :cond_10
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "FN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->rsp_find()V

    goto/16 :goto_0

    .line 521
    :cond_11
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "FO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->rsp_fetch_om()V

    goto/16 :goto_0

    .line 522
    :cond_12
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "MD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->rsp_data()V

    goto/16 :goto_0

    .line 526
    :cond_13
    sget v11, Lcom/fleapapa/util/My;->uid:I

    if-eqz v11, :cond_0

    .line 527
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "IV"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->req_call()V

    goto/16 :goto_0

    .line 528
    :cond_14
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "BY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->req_bye()V

    goto/16 :goto_0

    .line 529
    :cond_15
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "NT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->req_notify()V

    goto/16 :goto_0

    .line 530
    :cond_16
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "FO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->req_fetch_om()V

    goto/16 :goto_0

    .line 531
    :cond_17
    iget-object v11, v5, Lcom/fleapapa/helper/CallPapa$Packet;->mop:Ljava/lang/String;

    const-string v12, "MD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Packet;->req_data()V

    goto/16 :goto_0
.end method

.method recorded(Lcom/fleapapa/helper/CallPapa$Call;[S)V
    .locals 8
    .parameter "call"
    .parameter "samples"

    .prologue
    .line 743
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa$Call;->lburst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 745
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    if-nez v4, :cond_1

    .line 746
    :cond_0
    sget v4, Lcom/fleapapa/util/My;->uid:I

    iput v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    .line 749
    :cond_1
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    sget v5, Lcom/fleapapa/util/My;->uid:I

    if-eq v4, v5, :cond_3

    .line 784
    :cond_2
    :goto_0
    return-void

    .line 751
    :cond_3
    invoke-static {p2}, Lcom/fleapapa/helper/CallPapa;->elevel([S)I

    move-result v4

    iput v4, p1, Lcom/fleapapa/helper/CallPapa$Call;->elevel:I

    .line 753
    array-length v4, p2

    iget-object v5, p0, Lcom/fleapapa/helper/CallPapa;->ebytes:[B

    iget-object v6, p0, Lcom/fleapapa/helper/CallPapa;->ebytes:[B

    array-length v6, v6

    invoke-virtual {p0, p2, v4, v5, v6}, Lcom/fleapapa/helper/CallPapa;->encode([SI[BI)I

    move-result v1

    .line 754
    .local v1, fbyte:I
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    if-nez v4, :cond_4

    .line 755
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CallPapa.recorded: encode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_4
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    add-int/2addr v4, v1

    iget-object v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    array-length v5, v5

    if-gt v4, v5, :cond_6

    .line 757
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    if-ne v1, v4, :cond_6

    .line 758
    :cond_5
    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->ebytes:[B

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Burst;->bytes:[B

    iget v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    invoke-static {v4, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    iput v1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->fbyte:I

    .line 761
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nbyte:I

    .line 762
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    array-length v5, p2

    add-int/2addr v4, v5

    iput v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nsample:I

    .line 763
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    .line 758
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->etime:J

    .line 767
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->ebytes:[B

    array-length v5, p2

    invoke-virtual {v0, v4, v1, v5}, Lcom/fleapapa/helper/CallPapa$Burst;->sendAudio([BII)V

    .line 768
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/fleapapa/helper/CallPapa;->callback(Lcom/fleapapa/helper/CallPapa$Call;I)V

    .line 771
    iget v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->nslice:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 772
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->duration()J

    move-result-wide v2

    .line 773
    .local v2, tspeak:J
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->maxTalkSecs:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7

    .line 774
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CallPapa.record_poller: max talk="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {p1}, Lcom/fleapapa/helper/CallPapa$Call;->stopRecorder()Lcom/fleapapa/helper/CallPapa$Burst;

    goto/16 :goto_0

    .line 758
    .end local v2           #tspeak:J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 778
    .restart local v2       #tspeak:J
    :cond_7
    iget v4, p1, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    const v5, 0x77ffff00

    if-ne v4, v5, :cond_2

    .line 779
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->maxTalkSecs:I

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 780
    iget-boolean v4, p0, Lcom/fleapapa/helper/CallPapa;->quietOnTime:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->mp_time:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 781
    :cond_8
    const v4, 0x77ff7f00

    invoke-virtual {p1, v4}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    goto/16 :goto_0
.end method

.method recorder()V
    .locals 5

    .prologue
    .line 724
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/fleapapa/helper/CallPapa;->stopped:Z

    if-eqz v1, :cond_2

    .line 740
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v2, "CallPapa.recorder: exit!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 727
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    :cond_2
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->recorderState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 730
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    const v2, 0x77ffff00

    if-eq v1, v2, :cond_3

    .line 733
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    const v2, 0x77ff7f00

    if-ne v1, v2, :cond_0

    .line 736
    :cond_3
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->samples:[S

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->samples:[S

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 737
    .local v0, ns:I
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->samples:[S

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->samples:[S

    invoke-virtual {p0, v1, v2}, Lcom/fleapapa/helper/CallPapa;->recorded(Lcom/fleapapa/helper/CallPapa$Call;[S)V

    goto :goto_0

    .line 727
    .end local v0           #ns:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 728
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method recorderState()I
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    return v0
.end method

.method public native recv([B[BI)I
.end method

.method req_line(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 4
    .parameter "mop"
    .parameter "mid"

    .prologue
    const-string v3, ","

    .line 281
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method resender()V
    .locals 13

    .prologue
    .line 370
    :goto_0
    iget-boolean v8, p0, Lcom/fleapapa/helper/CallPapa;->stopped:Z

    if-eqz v8, :cond_0

    .line 414
    sget-object v8, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v9, "CallPapa.resender: exit!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 371
    :cond_0
    const-wide/16 v4, 0xbb8

    .line 372
    .local v4, tnap:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 374
    .local v6, tnow:J
    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 408
    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 409
    const-wide/16 v8, 0xbb8

    cmp-long v8, v4, v8

    if-lez v8, :cond_6

    const-wide/16 v8, 0xbb8

    :goto_2
    invoke-static {v8, v9}, Lcom/fleapapa/util/MyUtil;->nap(J)Z

    goto :goto_0

    .line 374
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$Packet;

    .line 375
    .local v1, p:Lcom/fleapapa/helper/CallPapa$Packet;
    iget-wide v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->tout:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 376
    iget-wide v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->tout:J

    sub-long v2, v9, v6

    .local v2, td:J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-gtz v9, :cond_5

    .line 377
    iget v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->ntry:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->ntry:I

    iget v10, v1, Lcom/fleapapa/helper/CallPapa$Packet;->mtry:I

    if-lt v9, v10, :cond_4

    .line 380
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    monitor-enter v9

    .line 381
    :try_start_0
    iget-object v10, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 382
    .local v0, npapa:I
    iget v10, p0, Lcom/fleapapa/helper/CallPapa;->ipapa:I

    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v0

    iput v10, p0, Lcom/fleapapa/helper/CallPapa;->ipapa:I

    .line 380
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->nsrv:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->nsrv:I

    if-lt v9, v0, :cond_3

    .line 387
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CallPapa.resender: discarded for no rsp from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!!\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Packet;->headers()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    iget v10, v1, Lcom/fleapapa/helper/CallPapa$Packet;->mid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 380
    .end local v0           #npapa:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 392
    .restart local v0       #npapa:I
    :cond_3
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CallPapa.resender: failover to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v11

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v9, 0x0

    iput v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->ntry:I

    .line 394
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->current_papa()Ljava/net/InetSocketAddress;

    move-result-object v9

    iput-object v9, v1, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    .line 395
    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Packet;->send()I

    goto/16 :goto_1

    .line 400
    .end local v0           #npapa:I
    :cond_4
    sget-object v9, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CallPapa.resender: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/fleapapa/helper/CallPapa$Packet;->ntry:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-th resend to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/fleapapa/helper/CallPapa$Packet;->peer:Ljava/net/InetSocketAddress;

    invoke-static {v11}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!!\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Packet;->headers()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Packet;->send()I

    goto/16 :goto_1

    .line 405
    :cond_5
    cmp-long v9, v2, v4

    if-gez v9, :cond_1

    .line 406
    move-wide v4, v2

    goto/16 :goto_1

    .end local v1           #p:Lcom/fleapapa/helper/CallPapa$Packet;
    .end local v2           #td:J
    :cond_6
    move-wide v8, v4

    .line 409
    goto/16 :goto_2

    .line 411
    :cond_7
    :try_start_2
    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, p0, Lcom/fleapapa/helper/CallPapa;->packs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 412
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public native send(Ljava/lang/String;[BI)I
.end method

.method sendto(Ljava/lang/String;[BI)I
    .locals 5
    .parameter "sto"
    .parameter "msg"
    .parameter "mlen"

    .prologue
    .line 696
    invoke-virtual {p0, p1, p2, p3}, Lcom/fleapapa/helper/CallPapa;->send(Ljava/lang/String;[BI)I

    move-result v0

    .line 697
    .local v0, len:I
    if-ltz v0, :cond_0

    move v1, v0

    .line 702
    :goto_0
    return v1

    .line 699
    :cond_0
    invoke-static {}, Lcom/fleapapa/util/My;->getIP()V

    .line 700
    sget-object v1, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/fleapapa/util/My;->ip:Ljava/net/InetAddress;

    const/16 v4, 0x1409

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, v1, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    .line 701
    sget-object v1, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fleapapa/helper/CallPapa;->laddr:Ljava/lang/String;

    .line 702
    invoke-virtual {p0, p1, p2, p3}, Lcom/fleapapa/helper/CallPapa;->send(Ljava/lang/String;[BI)I

    move-result v1

    goto :goto_0
.end method

.method public setMyUE()V
    .locals 5

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 177
    new-instance v0, Lcom/fleapapa/helper/CallPapa$UE;

    sget v1, Lcom/fleapapa/util/My;->uid:I

    invoke-direct {v0, p0, v1}, Lcom/fleapapa/helper/CallPapa$UE;-><init>(Lcom/fleapapa/helper/CallPapa;I)V

    sput-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    .line 178
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    sget-object v1, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    sget-object v1, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    sget-object v1, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->city:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    .line 182
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    .line 183
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    sget v1, Lcom/fleapapa/util/My;->avatar:I

    iput v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    .line 185
    new-instance v0, Lcom/fleapapa/helper/Group;

    sget-object v1, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v2, 0x7f0600ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/Group;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    .line 186
    sget-object v0, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    invoke-virtual {v0}, Lcom/fleapapa/helper/Group;->loadBuddies()V

    .line 188
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    new-instance v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/fleapapa/util/My;->ip:Ljava/net/InetAddress;

    const/16 v3, 0x1409

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    .line 194
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$UE;->lsa:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->laddr:Ljava/lang/String;

    .line 195
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallPapa.setMyUE: ladd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->laddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 189
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setaCall(Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    .line 923
    .local v0, ocall:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 924
    :cond_0
    if-nez p1, :cond_2

    .line 929
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 926
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/fleapapa/helper/CallPapa$Call;->atime:J

    .line 928
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v0, Lcom/fleapapa/helper/CallPapa$Call;->callback:Lcom/fleapapa/helper/CallPapa$Callback;

    iput-object v2, v1, Lcom/fleapapa/helper/CallPapa$Call;->callback:Lcom/fleapapa/helper/CallPapa$Callback;

    goto :goto_0
.end method

.method shoot(Ljava/lang/String;Ljava/net/InetSocketAddress;Z)V
    .locals 6
    .parameter "who"
    .parameter "peer"
    .parameter "probe"

    .prologue
    .line 633
    if-eqz p3, :cond_0

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/fleapapa/util/My;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->tbull:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, bullet:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 637
    .local v0, bb:[B
    invoke-static {p2}, Lcom/fleapapa/util/MyUtil;->atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, speer:Ljava/lang/String;
    array-length v3, v0

    invoke-virtual {p0, v2, v0, v3}, Lcom/fleapapa/helper/CallPapa;->sendto(Ljava/lang/String;[BI)I

    .line 639
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CallPapa.shoot: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 635
    .end local v0           #bb:[B
    .end local v1           #bullet:Ljava/lang/String;
    .end local v2           #speer:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/fleapapa/util/My;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #bullet:Ljava/lang/String;
    goto :goto_0
.end method

.method showNewTalkNotification()V
    .locals 15

    .prologue
    const v7, 0x7f0600da

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v14, 0x1

    .line 845
    const/4 v13, 0x0

    .local v13, ntext:I
    move v12, v13

    .line 846
    .local v12, ntalk:I
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    add-int v0, v12, v13

    if-nez v0, :cond_4

    .line 869
    :goto_1
    return-void

    .line 846
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fleapapa/helper/CallPapa$Call;

    .line 847
    .local v11, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v2, v11, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    monitor-enter v2

    .line 848
    :try_start_0
    iget-object v3, v11, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 847
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 848
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 849
    .local v10, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget v5, v10, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    sget v6, Lcom/fleapapa/util/My;->uid:I

    if-eq v5, v6, :cond_1

    iget v5, v10, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    if-eqz v5, :cond_1

    .line 850
    iget-boolean v5, v10, Lcom/fleapapa/helper/CallPapa$Burst;->heard:Z

    if-nez v5, :cond_1

    .line 851
    iget-byte v5, v10, Lcom/fleapapa/helper/CallPapa$Burst;->type:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v14, :cond_3

    .line 852
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 853
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 857
    .end local v10           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    .end local v11           #call:Lcom/fleapapa/helper/CallPapa$Call;
    :cond_4
    new-instance v4, Landroid/content/Intent;

    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const-class v2, Lcom/fleapapa/helper/Helper;

    invoke-direct {v4, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 858
    .local v4, intent:Landroid/content/Intent;
    const-string v0, "push"

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 859
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    .line 861
    const v2, 0x7f02001e

    .line 862
    sget-object v3, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 864
    sget-object v5, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 865
    sget-object v6, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v7, 0x7f0600db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 866
    const/16 v7, 0x10

    .line 867
    const/16 v8, 0x3e7

    add-int v14, v12, v13

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 859
    invoke-static/range {v0 .. v9}, Lcom/fleapapa/util/MyNotify;->notifyStatusBar(Landroid/content/Context;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1
.end method

.method public showOffMsgNotification()V
    .locals 11

    .prologue
    const v7, 0x7f0600da

    const/4 v1, 0x2

    const/4 v9, 0x0

    .line 871
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    .line 873
    const v2, 0x7f02001e

    .line 874
    sget-object v3, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 875
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const-class v6, Lcom/fleapapa/helper/OfflineMsgs;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    sget-object v5, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 877
    sget-object v6, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v7, 0x7f0600db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 878
    const/16 v7, 0x10

    .line 879
    iget-object v8, p0, Lcom/fleapapa/helper/CallPapa;->offMsgs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    .line 871
    invoke-static/range {v0 .. v9}, Lcom/fleapapa/util/MyNotify;->notifyStatusBar(Landroid/content/Context;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;III)V

    .line 881
    return-void
.end method

.method public native slimpacker(III[BIIILjava/lang/String;)I
.end method

.method start()Z
    .locals 12

    .prologue
    const v11, 0x7f050002

    const/16 v2, 0x1f40

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 199
    sget-object v0, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 213
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "CallPapa.start: no papa server!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    .line 241
    :goto_1
    return v0

    .line 199
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 201
    .local v7, fqdn:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/InetSocketAddress;

    const/16 v4, 0x1409

    invoke-direct {v8, v7, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 202
    .local v8, fsa:Ljava/net/InetSocketAddress;
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "CallPapa.start: papa server "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " resolved="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v4, p0, Lcom/fleapapa/helper/CallPapa;->papas:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v8           #fsa:Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v4

    move-object v6, v4

    .line 210
    .local v6, e:Ljava/lang/Exception;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "CallPapa.start: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #fsa:Ljava/net/InetSocketAddress;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "CallPapa.start: flea server "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " unresolvable!!"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 218
    .end local v7           #fqdn:Ljava/lang/String;
    .end local v8           #fsa:Ljava/net/InetSocketAddress;
    :cond_2
    invoke-static {v2, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    .line 219
    .local v9, minbz:I
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CallPapa.startRecorder: min recoder bufsiz="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Landroid/media/AudioRecord;

    .line 222
    iget v4, p0, Lcom/fleapapa/helper/CallPapa;->maxTalkSecs:I

    mul-int/lit16 v4, v4, 0x1f40

    mul-int/lit8 v5, v4, 0x2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 220
    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    .line 224
    const-string v0, "decoderOptions"

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallPapa;->decStart(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fleapapa/helper/CallPapa;->dFrameSize:I

    .line 225
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->encoderOptions:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallPapa;->encStart(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fleapapa/helper/CallPapa;->eFrameSize:I

    .line 226
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa.record: speex/JNI encoder FrameSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fleapapa/helper/CallPapa;->eFrameSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa.player: speex/JNI decoder FrameSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fleapapa/helper/CallPapa;->dFrameSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Lcom/fleapapa/helper/CallPapa$1;

    const-string v2, "Papa.helloer"

    invoke-direct {v0, p0, v2}, Lcom/fleapapa/helper/CallPapa$1;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    new-instance v0, Lcom/fleapapa/helper/CallPapa$2;

    const-string v2, "Papa.resender"

    invoke-direct {v0, p0, v2}, Lcom/fleapapa/helper/CallPapa$2;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->resender:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    new-instance v0, Lcom/fleapapa/helper/CallPapa$3;

    const-string v2, "Papa.receiver"

    invoke-direct {v0, p0, v2}, Lcom/fleapapa/helper/CallPapa$3;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->receiver:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    new-instance v0, Lcom/fleapapa/helper/CallPapa$4;

    const-string v2, "Papa.bshooter"

    invoke-direct {v0, p0, v2}, Lcom/fleapapa/helper/CallPapa$4;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->bshooter:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    new-instance v0, Lcom/fleapapa/helper/CallPapa$5;

    const-string v2, "Papa.loop1sec"

    invoke-direct {v0, p0, v2}, Lcom/fleapapa/helper/CallPapa$5;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->loop1sec:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    new-instance v0, Lcom/fleapapa/helper/CallPapa$6;

    const-string v2, "Papa.recorder"

    invoke-direct {v0, p0, v2}, Lcom/fleapapa/helper/CallPapa$6;-><init>(Lcom/fleapapa/helper/CallPapa;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->recorder:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-static {v0, v11}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->mp_push:Landroid/media/MediaPlayer;

    .line 238
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-static {v0, v11}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->mp_blip:Landroid/media/MediaPlayer;

    .line 239
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->mp_bang:Landroid/media/MediaPlayer;

    .line 240
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v2, 0x7f050007

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallPapa;->mp_time:Landroid/media/MediaPlayer;

    move v0, v1

    .line 241
    goto/16 :goto_1
.end method

.method startRecorder()V
    .locals 4

    .prologue
    .line 708
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v2, "CallPapa.startRecorder: start..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :try_start_1
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 712
    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 710
    monitor-exit v1

    .line 718
    :goto_0
    return-void

    .line 710
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 715
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 716
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa.startRecorder: startRecording() failed!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fleapapa/helper/CallPapa;->stopped:Z

    .line 246
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 248
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->encStop()I

    .line 249
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallPapa;->decStop()I

    .line 251
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 252
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->resender:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 253
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->receiver:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 254
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->bshooter:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 255
    return-void
.end method

.method stopRecorder()V
    .locals 2

    .prologue
    .line 720
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "CallPapa.stopRecorder: stop..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 722
    return-void
.end method

.method waitHelloer(I)V
    .locals 4
    .parameter "msec"

    .prologue
    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa.waitHelloer: sleep "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-lez p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 290
    :goto_0
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallPapa.waitHelloer: woke up after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v0

    .line 295
    :goto_1
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa;->helloer:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    :catch_0
    move-exception v0

    goto :goto_1
.end method
