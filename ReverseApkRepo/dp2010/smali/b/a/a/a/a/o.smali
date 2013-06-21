.class final Lb/a/a/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/a/k;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/a/a/a/a/h;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/a/a/a/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
