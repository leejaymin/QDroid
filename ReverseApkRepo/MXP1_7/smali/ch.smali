.class public Lch;
.super Ljava/lang/Object;

# interfaces
.implements Lcg;


# instance fields
.field private 癤욱븳援:Z

.field private 궗:Z

.field private 먯꽌:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lch;->癤욱븳援:Z

    iput-boolean v0, p0, Lch;->궗:Z

    invoke-virtual {p0}, Lch;->먯꽌()Lch;

    return-void
.end method


# virtual methods
.method public 癤욱븳援()Z
    .locals 1

    iget-boolean v0, p0, Lch;->癤욱븳援:Z

    return v0
.end method

.method public 궗()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lch;->먯꽌:Ljava/util/Map;

    return-object v0
.end method

.method public 먯꽌()Lch;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch;->먯꽌:Ljava/util/Map;

    return-object p0
.end method
