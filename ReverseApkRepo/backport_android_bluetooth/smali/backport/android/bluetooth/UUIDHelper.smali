.class public Lbackport/android/bluetooth/UUIDHelper;
.super Ljava/lang/Object;
.source "UUIDHelper.java"


# static fields
.field public static final BNEP_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final HTTP_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final L2CAP_PROTOCOL_UUID:Ljava/util/UUID; = null

.field private static final MASK_UUID128:I = 0xffff

.field private static final MASK_UUID16:I = 0xffff

.field public static final OBEX_FILE_TRANSFER_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final OBEX_OBJECT_PUSH_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final OBEX_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final PERSONAL_AREA_NETWORKING_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final RFCOMM_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final SDP_PROTOCOL_UUID:Ljava/util/UUID; = null

.field public static final SERIAL_PORT_PROTOCOL_UUID:Ljava/util/UUID; = null

.field private static final UUID_BASE:Ljava/lang/String; = "0000-1000-8000-00805F9B34FB"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->SDP_PROTOCOL_UUID:Ljava/util/UUID;

    .line 11
    const/4 v0, 0x3

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->RFCOMM_PROTOCOL_UUID:Ljava/util/UUID;

    .line 14
    const/16 v0, 0x8

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->OBEX_PROTOCOL_UUID:Ljava/util/UUID;

    .line 17
    const/16 v0, 0xc

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->HTTP_PROTOCOL_UUID:Ljava/util/UUID;

    .line 20
    const/16 v0, 0x100

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->L2CAP_PROTOCOL_UUID:Ljava/util/UUID;

    .line 23
    const/16 v0, 0xf

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->BNEP_PROTOCOL_UUID:Ljava/util/UUID;

    .line 26
    const/16 v0, 0x1101

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->SERIAL_PORT_PROTOCOL_UUID:Ljava/util/UUID;

    .line 29
    const/16 v0, 0x1105

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->OBEX_OBJECT_PUSH_PROTOCOL_UUID:Ljava/util/UUID;

    .line 32
    const/16 v0, 0x1106

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->OBEX_FILE_TRANSFER_PROTOCOL_UUID:Ljava/util/UUID;

    .line 35
    const/16 v0, 0x1115

    invoke-static {v0}, Lbackport/android/bluetooth/UUIDHelper;->fromUUID16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbackport/android/bluetooth/UUIDHelper;->PERSONAL_AREA_NETWORKING_PROTOCOL_UUID:Ljava/util/UUID;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromUUID16(I)Ljava/util/UUID;
    .locals 2
    .parameter "uuid16"

    .prologue
    .line 45
    invoke-static {p0}, Lbackport/android/bluetooth/UUIDHelper;->uuidStringFromUuid16(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 48
    .local v1, uuid:Ljava/util/UUID;
    return-object v1
.end method

.method public static final toUUID16(Ljava/util/UUID;)I
    .locals 6
    .parameter "uuid128"

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 55
    .local v0, bits:J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method private static final uuidStringFromUuid16(I)Ljava/lang/String;
    .locals 4
    .parameter "uuid16"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, b:Ljava/lang/StringBuilder;
    const v2, 0xffff

    and-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, hex:Ljava/lang/String;
    const-string v2, "00000000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const-string v2, "0000-1000-8000-00805F9B34FB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
