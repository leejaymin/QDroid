.class public Lcj;
.super Ljava/lang/Object;

# interfaces
.implements Lci;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Lbg;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Error: App event with no name parameter."

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "info"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lbg;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
