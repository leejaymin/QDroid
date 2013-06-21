.class public final Lcom/tequnique/camerax/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tequnique/camerax/a;->a:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/tequnique/camerax/a;->b:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(ZLandroid/app/Activity;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x0

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget-object v2, Lcom/tequnique/camerax/a;->b:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/tequnique/camerax/a;->b:Ljava/util/HashMap;

    sget-object v3, Lcom/tequnique/camerax/a;->a:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    :cond_0
    if-eqz p0, :cond_4

    sget-object v3, Lcom/tequnique/camerax/a;->a:[I

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_3

    :cond_1
    return-void

    :cond_2
    aget v5, v3, v2

    sget-object v6, Lcom/tequnique/camerax/a;->b:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget v5, v3, v2

    invoke-virtual {v0, v5, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/tequnique/camerax/a;->a:[I

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_1

    aget v5, v3, v2

    sget-object v1, Lcom/tequnique/camerax/a;->b:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v5, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method
