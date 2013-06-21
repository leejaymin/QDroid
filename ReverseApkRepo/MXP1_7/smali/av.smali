.class final Lav;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/open"

    new-instance v1, Lea;

    invoke-direct {v1}, Lea;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/canOpenURLs"

    new-instance v1, Lck;

    invoke-direct {v1}, Lck;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/close"

    new-instance v1, Lcm;

    invoke-direct {v1}, Lcm;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/appEvent"

    new-instance v1, Lcj;

    invoke-direct {v1}, Lcj;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/evalInOpener"

    new-instance v1, Lcn;

    invoke-direct {v1}, Lcn;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/log"

    new-instance v1, Ldz;

    invoke-direct {v1}, Ldz;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/click"

    new-instance v1, Lcl;

    invoke-direct {v1}, Lcl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/httpTrack"

    new-instance v1, Lcq;

    invoke-direct {v1}, Lcq;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/touch"

    new-instance v1, Leb;

    invoke-direct {v1}, Leb;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/video"

    new-instance v1, Lp;

    invoke-direct {v1}, Lp;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/plusOne"

    new-instance v1, Ly;

    invoke-direct {v1}, Ly;-><init>()V

    invoke-virtual {p0, v0, v1}, Lav;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
