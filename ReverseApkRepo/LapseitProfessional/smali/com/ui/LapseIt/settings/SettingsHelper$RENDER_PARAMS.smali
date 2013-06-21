.class public final Lcom/ui/LapseIt/settings/SettingsHelper$RENDER_PARAMS;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RENDER_PARAMS"
.end annotation


# static fields
.field public static final ENCODER:Ljava/lang/String; = "renderencoder"

.field public static final FPS:Ljava/lang/String; = "renderfps"

.field public static final QUALITY:Ljava/lang/String; = "renderquality"

.field static final RENDER_ITEMS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    .line 65
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "header"

    aput-object v2, v1, v4

    const v2, 0x7f08003d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 66
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "renderencoder"

    aput-object v2, v1, v4

    const v2, 0x7f08003e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 67
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "renderquality"

    aput-object v2, v1, v4

    const v2, 0x7f08003f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 68
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "renderfps"

    aput-object v3, v2, v4

    const v3, 0x7f080040

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$RENDER_PARAMS;->RENDER_ITEMS:[[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
