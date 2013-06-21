.class Laq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ㅼ꽑嫄:Ljava/util/HashMap;

.field private final 弱밧:Z

.field private final 癤욱븳援:Lao;

.field private final 궗:Ljava/lang/String;

.field private final 먯꽌:Li;

.field private final 쇰뒗:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lao;Landroid/app/Activity;Ljava/lang/String;Li;Ljava/util/HashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laq;->癤욱븳援:Lao;

    iput-object p3, p0, Laq;->궗:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Laq;->쇰뒗:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Laq;->먯꽌:Li;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Laq;->ㅼ꽑嫄:Ljava/util/HashMap;

    iget-object v0, p0, Laq;->ㅼ꽑嫄:Ljava/util/HashMap;

    invoke-static {v0}, Laq;->癤욱븳援(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Laq;->弱밧:Z

    return-void
.end method

.method private 癤욱븳援(Lby;)V
    .locals 13

    const/4 v1, 0x0

    iget-object v0, p0, Laq;->쇰뒗:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    new-instance v0, Lar;

    const-string v1, "Activity became null while trying to instantiate adapter."

    invoke-direct {v0, v1}, Lar;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Laq;->癤욱븳援:Lao;

    invoke-virtual {v0, p1}, Lao;->癤욱븳援(Lby;)V

    invoke-interface {p1}, Lby;->먯꽌()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcd;

    iget-object v3, p0, Laq;->ㅼ꽑嫄:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Lcd;->癤욱븳援(Ljava/util/Map;)V

    move-object v3, v0

    :goto_0
    invoke-interface {p1}, Lby;->궗()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Laq;->먯꽌:Li;

    invoke-virtual {v1, v0}, Li;->癤욱븳援(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcg;

    move-object v5, v0

    :goto_1
    new-instance v4, Lbx;

    iget-object v0, p0, Laq;->먯꽌:Li;

    iget-boolean v1, p0, Laq;->弱밧:Z

    invoke-direct {v4, v0, v2, v1}, Lbx;-><init>(Li;Landroid/content/Context;Z)V

    iget-object v0, p0, Laq;->癤욱븳援:Lao;

    iget-object v0, v0, Lao;->癤욱븳援:Lbm;

    invoke-virtual {v0}, Lbm;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcb;

    if-nez v0, :cond_1

    new-instance v0, Lar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laq;->궗:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationInterstitialAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interface."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcb;

    new-instance v1, Lbt;

    iget-object v6, p0, Laq;->癤욱븳援:Lao;

    invoke-direct {v1, v6}, Lbt;-><init>(Lao;)V

    invoke-interface/range {v0 .. v5}, Lcb;->癤욱븳援(Lcc;Landroid/app/Activity;Lcd;Lbx;Lcg;)V

    :goto_2
    iget-object v0, p0, Laq;->癤욱븳援:Lao;

    invoke-virtual {v0}, Lao;->대쫫()V

    return-void

    :cond_2
    instance-of v0, p1, Lbz;

    if-nez v0, :cond_3

    new-instance v0, Lar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laq;->궗:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support the MediationBannerAdapter interface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v6, p1

    check-cast v6, Lbz;

    new-instance v7, Lbs;

    iget-object v0, p0, Laq;->癤욱븳援:Lao;

    invoke-direct {v7, v0}, Lbs;-><init>(Lao;)V

    iget-object v0, p0, Laq;->癤욱븳援:Lao;

    iget-object v0, v0, Lao;->癤욱븳援:Lbm;

    invoke-virtual {v0}, Lbm;->궗()Ll;

    move-result-object v10

    move-object v8, v2

    move-object v9, v3

    move-object v11, v4

    move-object v12, v5

    invoke-interface/range {v6 .. v12}, Lbz;->癤욱븳援(Lca;Landroid/app/Activity;Lcd;Ll;Lbx;Lcg;)V

    goto :goto_2

    :cond_4
    move-object v5, v1

    goto/16 :goto_1

    :cond_5
    move-object v3, v1

    goto/16 :goto_0
.end method

.method private 癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;Lan;)V
    .locals 2

    invoke-static {p1, p2}, Lcv;->궗(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Laq;->癤욱븳援:Lao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lao;->癤욱븳援(ZLan;)V

    return-void
.end method

.method private static 癤욱븳援(Ljava/util/Map;)Z
    .locals 3

    const-string v0, "gwhirl_share_location"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an illegal value, \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', for the special share location parameter from mediation server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (expected \'0\' or \'1\'). Will not share the location."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to instantiate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laq;->궗:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Laq;->궗:Ljava/lang/String;

    const-class v1, Lby;

    invoke-static {v0, v1}, Lam;->癤욱븳援(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lby;

    invoke-direct {p0, v0}, Laq;->癤욱븳援(Lby;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find adapter class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laq;->궗:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Did you link the ad network\'s mediation adapter? Skipping ad network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lan;->弱밧:Lan;

    invoke-direct {p0, v1, v0, v2}, Laq;->癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;Lan;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error while creating adapter and loading ad from ad network. Skipping ad network."

    sget-object v2, Lan;->쇰뒗:Lan;

    invoke-direct {p0, v1, v0, v2}, Laq;->癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;Lan;)V

    goto :goto_0
.end method
