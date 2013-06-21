.class final Lax;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/invalidRequest"

    new-instance v1, Lcr;

    invoke-direct {v1}, Lcr;-><init>()V

    invoke-virtual {p0, v0, v1}, Lax;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadAdURL"

    new-instance v1, Ldx;

    invoke-direct {v1}, Ldx;-><init>()V

    invoke-virtual {p0, v0, v1}, Lax;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadSdkConstants"

    new-instance v1, Ldy;

    invoke-direct {v1}, Ldy;-><init>()V

    invoke-virtual {p0, v0, v1}, Lax;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
