.class public final Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CAPTURE_PARAMS"
.end annotation


# static fields
.field static final CAPTURE_ITEMS:[[Ljava/lang/String; = null

.field public static final DELAY:Ljava/lang/String; = "delay"

.field public static final DIM:Ljava/lang/String; = "dim"

.field public static final DIRECTORY:Ljava/lang/String; = "directory"

.field public static final GEOLOCATION:Ljava/lang/String; = "geolocation"

.field public static final INTERVAL:Ljava/lang/String; = "interval"

.field public static final LIMITFRAMES_DEFAULT:Ljava/lang/String; = "100"

.field public static final LIMITMODE:Ljava/lang/String; = "limitmode"

.field public static final LIMITTIMER_DEFAULT:Ljava/lang/String; = "600"

.field public static final LIMITVALUE:Ljava/lang/String; = "limitvalue"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final SHUTTER:Ljava/lang/String; = "shutter"

.field public static final TIMESCALE:Ljava/lang/String; = "timescale"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    .line 41
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "header"

    aput-object v2, v1, v4

    const v2, 0x7f080032

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 42
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "interval"

    aput-object v2, v1, v4

    const v2, 0x7f080033

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 43
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "timescale"

    aput-object v2, v1, v4

    const v2, 0x7f080034

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 44
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "limitmode"

    aput-object v3, v2, v4

    const v3, 0x7f080035

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 45
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "limitvalue"

    aput-object v3, v2, v4

    const v3, 0x7f080036

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 46
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "delay"

    aput-object v3, v2, v4

    const v3, 0x7f080037

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 47
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "resolution"

    aput-object v3, v2, v4

    const v3, 0x7f080038

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 48
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dim"

    aput-object v3, v2, v4

    const v3, 0x7f080039

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 49
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "shutter"

    aput-object v3, v2, v4

    const v3, 0x7f08003a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 50
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "schedule"

    aput-object v3, v2, v4

    const v3, 0x7f08003b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 51
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "directory"

    aput-object v3, v2, v4

    const v3, 0x7f08003c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 40
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;->CAPTURE_ITEMS:[[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
