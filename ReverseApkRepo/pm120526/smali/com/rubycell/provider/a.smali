.class public interface abstract Lcom/rubycell/provider/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rubycell/provider/a;->a:[B

    const-string v0, "content://com.rubycell.provider/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/rubycell/provider/a;->b:Landroid/net/Uri;

    return-void

    :array_0
    .array-data 0x1
        0xd2t
        0x41t
        0x1et
        0x80t
        0x99t
        0xc7t
        0x4at
        0xc0t
        0x33t
        0x58t
        0xa1t
        0xd3t
        0x4dt
        0x8bt
        0xdct
        0x8ft
        0xf5t
        0x20t
        0xc0t
        0x59t
    .end array-data
.end method
