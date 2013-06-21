.class public final enum Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
.super Ljava/lang/Enum;
.source "AndroidPitLicenseCheckCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/androidpit/licensing/AndroidPitLicenseCheckCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0111:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0112:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0113:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0121:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0211:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0212:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0213:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_COMMUNICATING_WITH_APPCENTER_0221:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_DECRYPTION_ERROR:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_ENCRYPTION_ERROR:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_INVALID_PACKAGE_NAME:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_INVALID_PUBLIC_KEY:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_NOT_APP_CENTER_MANAGED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_NOT_CONNECTED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_SERVER_FAILURE:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum ERROR_UNKNOWN:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum GOOGLE_CHECK_IN_PROGRESS:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum GOOGLE_INVALID_PACKAGE_NAME:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum GOOGLE_INVALID_PUBLIC_KEY:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum GOOGLE_MISSING_PERMISSION:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum GOOGLE_NON_MATCHING_UID:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum GOOGLE_NOT_MARKET_MANAGED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

.field public static final enum NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "LICENSED"

    invoke-direct {v0, v1, v3}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 26
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "NOT_LICENSED"

    invoke-direct {v0, v1, v4}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 31
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_NOT_APP_CENTER_MANAGED"

    invoke-direct {v0, v1, v5}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_APP_CENTER_MANAGED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 36
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_INVALID_PACKAGE_NAME"

    invoke-direct {v0, v1, v6}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_INVALID_PACKAGE_NAME:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 41
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_DECRYPTION_ERROR"

    invoke-direct {v0, v1, v7}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_DECRYPTION_ERROR:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 47
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_NOT_AUTHENTICATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 52
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_INVALID_PUBLIC_KEY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_INVALID_PUBLIC_KEY:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 57
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_ENCRYPTION_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_ENCRYPTION_ERROR:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 62
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_SERVER_FAILURE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_SERVER_FAILURE:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 67
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_NOT_CONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_CONNECTED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 74
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0111"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0111:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 76
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0112"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0112:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 78
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0113"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0113:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 80
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0121"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0121:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 82
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0211"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0211:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 84
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0212"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0212:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 86
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0213"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0213:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 88
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_COMMUNICATING_WITH_APPCENTER_0221"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0221:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 93
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "ERROR_UNKNOWN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_UNKNOWN:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 97
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "GOOGLE_INVALID_PACKAGE_NAME"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_INVALID_PACKAGE_NAME:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "GOOGLE_NON_MATCHING_UID"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_NON_MATCHING_UID:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "GOOGLE_NOT_MARKET_MANAGED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_NOT_MARKET_MANAGED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "GOOGLE_CHECK_IN_PROGRESS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_CHECK_IN_PROGRESS:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "GOOGLE_INVALID_PUBLIC_KEY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_INVALID_PUBLIC_KEY:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    const-string v1, "GOOGLE_MISSING_PERMISSION"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_MISSING_PERMISSION:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 14
    const/16 v0, 0x19

    new-array v0, v0, [Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    sget-object v1, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v1, v0, v3

    sget-object v1, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v1, v0, v4

    sget-object v1, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_APP_CENTER_MANAGED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v1, v0, v5

    sget-object v1, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_INVALID_PACKAGE_NAME:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v1, v0, v6

    sget-object v1, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_DECRYPTION_ERROR:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_INVALID_PUBLIC_KEY:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_ENCRYPTION_ERROR:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_SERVER_FAILURE:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_CONNECTED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0111:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0112:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0113:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0121:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0211:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0212:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0213:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0221:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_UNKNOWN:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_INVALID_PACKAGE_NAME:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_NON_MATCHING_UID:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_NOT_MARKET_MANAGED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_CHECK_IN_PROGRESS:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_INVALID_PUBLIC_KEY:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->GOOGLE_MISSING_PERMISSION:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    aput-object v2, v0, v1

    sput-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ENUM$VALUES:[Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    .locals 2
    .parameter "value"

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->valueOf(Ljava/lang/String;)Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_UNKNOWN:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    return-object v0
.end method

.method public static values()[Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ENUM$VALUES:[Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    array-length v1, v0

    new-array v2, v1, [Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
