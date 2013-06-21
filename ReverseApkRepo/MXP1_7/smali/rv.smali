.class public Lrv;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static synthetic 궗:[I


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;


# direct methods
.method private constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;Lrv;)V
    .locals 0

    invoke-direct {p0, p1}, Lrv;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    return-void
.end method

.method static synthetic 癤욱븳援()[I
    .locals 3

    sget-object v0, Lrv;->궗:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lrs;->values()[Lrs;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lrs;->궗:Lrs;

    invoke-virtual {v1}, Lrs;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lrs;->弱밧:Lrs;

    invoke-virtual {v1}, Lrs;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lrs;->먯꽌:Lrs;

    invoke-virtual {v1}, Lrs;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lrs;->쇰뒗:Lrs;

    invoke-virtual {v1}, Lrs;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lrs;->ㅼ꽑嫄:Lrs;

    invoke-virtual {v1}, Lrs;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lrs;->癤욱븳援:Lrs;

    invoke-virtual {v1}, Lrs;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lrv;->궗:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lrv;->癤욱븳援()[I

    move-result-object v0

    iget-object v1, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v1}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Lcom/nbpcorp/mobilead/sdk/m;)Lrs;

    move-result-object v1

    invoke-virtual {v1}, Lrs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "market:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lrv;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-static {v0, p2}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
