.class public final Lcom/ui/LapseIt/settings/SettingsHelper$OTHER_PARAMS;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OTHER_PARAMS"
.end annotation


# static fields
.field public static final BUY:Ljava/lang/String; = "buy"

.field public static final FAQ:Ljava/lang/String; = "faq"

.field public static final FEEDBACK:Ljava/lang/String; = "feedback"

.field static final OTHER_ITEMS:[[Ljava/lang/String; = null

.field public static final RATE:Ljava/lang/String; = "rate"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final TUTORIAL:Ljava/lang/String; = "tutorial"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    .line 82
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "header"

    aput-object v2, v1, v4

    const v2, 0x7f080041

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 83
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "tutorial"

    aput-object v2, v1, v4

    const v2, 0x7f080042

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 84
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "buy"

    aput-object v2, v1, v4

    const v2, 0x7f080043

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 85
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rate"

    aput-object v3, v2, v4

    const v3, 0x7f080044

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 86
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "share"

    aput-object v3, v2, v4

    const v3, 0x7f080045

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 87
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "feedback"

    aput-object v3, v2, v4

    const v3, 0x7f080046

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 88
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "faq"

    aput-object v3, v2, v4

    const v3, 0x7f080047

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 81
    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$OTHER_PARAMS;->OTHER_ITEMS:[[Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
