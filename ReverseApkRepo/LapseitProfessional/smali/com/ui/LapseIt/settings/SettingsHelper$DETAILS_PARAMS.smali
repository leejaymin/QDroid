.class public final Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DETAILS_PARAMS"
.end annotation


# static fields
.field static final BOOLEAN_PARAMS:[[Ljava/lang/String;

.field static final ENABLED_PARAMS:[[Ljava/lang/String;

.field static final ENCODER_PARAMS:[[Ljava/lang/String;

.field static final LIMITMODE_PARAMS:[[Ljava/lang/String;

.field static final QUALITY_PARAMS:[[Ljava/lang/String;

.field public static final RESOLUTION_PARAMS:[[Ljava/lang/String;

.field static final TIMESCALE_PARAMS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    new-array v0, v6, [[Ljava/lang/String;

    .line 94
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080048

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "true"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 95
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080049

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "false"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 93
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->BOOLEAN_PARAMS:[[Ljava/lang/String;

    .line 98
    new-array v0, v6, [[Ljava/lang/String;

    .line 99
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08004a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "enabled"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 100
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08004b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "disabled"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 98
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->ENABLED_PARAMS:[[Ljava/lang/String;

    .line 103
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    .line 104
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08004c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "fullsensor"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 105
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08004d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "1080p"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 106
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08004e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "720p"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 107
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08004f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "480p"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    .line 108
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080050

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "360p"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    .line 109
    new-array v2, v6, [Ljava/lang/String;

    const v3, 0x7f080051

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "240p"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 103
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->RESOLUTION_PARAMS:[[Ljava/lang/String;

    .line 112
    new-array v0, v7, [[Ljava/lang/String;

    .line 113
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080052

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "minutes"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 114
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080053

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "seconds"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 115
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080111

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "milliseconds"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 112
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->TIMESCALE_PARAMS:[[Ljava/lang/String;

    .line 118
    new-array v0, v7, [[Ljava/lang/String;

    .line 119
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080054

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "frames"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 120
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080055

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "timer"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 121
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080056

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "user"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 118
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->LIMITMODE_PARAMS:[[Ljava/lang/String;

    .line 126
    new-array v0, v7, [[Ljava/lang/String;

    .line 127
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080057

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "mp4"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 128
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080058

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "mov"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 129
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f080059

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "flv"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 126
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->ENCODER_PARAMS:[[Ljava/lang/String;

    .line 132
    new-array v0, v8, [[Ljava/lang/String;

    .line 133
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08005a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "1000000"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 134
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08005b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "2500000"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 135
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08005c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "5000000"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 136
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f08005d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "20000000"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    .line 132
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->QUALITY_PARAMS:[[Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
