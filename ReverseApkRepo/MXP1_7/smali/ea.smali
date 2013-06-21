.class public Lea;
.super Ljava/lang/Object;

# interfaces
.implements Lci;


# instance fields
.field private 癤욱븳援:Lg;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lg;

    invoke-direct {v0}, Lg;-><init>()V

    invoke-direct {p0, v0}, Lea;-><init>(Lg;)V

    return-void
.end method

.method public constructor <init>(Lg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lea;->癤욱븳援:Lg;

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Lbg;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 3

    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Could not get the action parameter for open GMSG."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lea;->癤욱븳援:Lg;

    new-instance v1, Lbh;

    const-string v2, "webapp"

    invoke-direct {v1, v2, p2}, Lbh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lg;->癤욱븳援(Lbg;Lbh;)V

    goto :goto_0

    :cond_1
    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lea;->癤욱븳援:Lg;

    new-instance v1, Lbh;

    const-string v2, "expand"

    invoke-direct {v1, v2, p2}, Lbh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lg;->癤욱븳援(Lbg;Lbh;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lea;->癤욱븳援:Lg;

    new-instance v1, Lbh;

    const-string v2, "intent"

    invoke-direct {v1, v2, p2}, Lbh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lg;->癤욱븳援(Lbg;Lbh;)V

    goto :goto_0
.end method
