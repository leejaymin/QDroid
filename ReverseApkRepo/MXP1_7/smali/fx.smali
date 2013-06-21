.class Lfx;
.super Lfv;


# instance fields
.field final synthetic 궗:Lfw;


# direct methods
.method constructor <init>(Lfw;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lfx;->궗:Lfw;

    invoke-direct {p0, p2, p3}, Lfv;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public 寃껋씠()I
    .locals 1

    iget-object v0, p0, Lfx;->궗:Lfw;

    invoke-virtual {v0}, Lfw;->width()I

    move-result v0

    return v0
.end method

.method public 덉쓣()I
    .locals 1

    iget-object v0, p0, Lfx;->궗:Lfw;

    invoke-virtual {v0}, Lfw;->duration()I

    move-result v0

    return v0
.end method

.method public 뚮벏()I
    .locals 1

    iget-object v0, p0, Lfx;->궗:Lfw;

    invoke-virtual {v0}, Lfw;->height()I

    move-result v0

    return v0
.end method
