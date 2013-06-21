.class public Lcom/adobe/ttpixel/extension/activityui/FnActivityUIShow;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10

    const/high16 v0, 0x7fc0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v1, 0x1

    :try_start_1
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    const/4 v1, 0x2

    :try_start_2
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    const/4 v1, 0x3

    :try_start_3
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const/4 v1, 0x4

    aget-object v6, p2, v1

    if-eqz v6, :cond_0

    const-string v1, "x"

    invoke-virtual {v6, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v7

    double-to-float v1, v7

    :try_start_4
    const-string v7, "y"

    invoke-virtual {v6, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsDouble()D
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v6

    double-to-float v0, v6

    :goto_0
    move v6, v0

    move v9, v1

    move v1, v5

    move v5, v9

    :goto_1
    const/4 v7, 0x0

    move-object v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->showActivityView(IIIZFF)V

    return-object v7

    :catch_0
    move-exception v1

    move-object v6, v1

    move v5, v0

    move v4, v3

    move v2, v3

    move v1, v3

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v6, v1

    move v4, v3

    move v2, v3

    move v1, v5

    move v5, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v6, v1

    move v4, v3

    move v1, v5

    move v5, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v6, v1

    move v1, v5

    move v5, v0

    goto :goto_2

    :catch_4
    move-exception v6

    move v9, v1

    move v1, v5

    move v5, v9

    goto :goto_2

    :cond_0
    move v1, v0

    goto :goto_0
.end method
