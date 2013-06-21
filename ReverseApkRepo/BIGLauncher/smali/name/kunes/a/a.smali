.class public final Lname/kunes/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    return-wide v1

    :cond_0
    aget-char v5, v3, v0

    int-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
