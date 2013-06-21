.class public Lcom/adobe/ttpixel/extension/bonjour/FnPublishService;
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
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const/4 v0, 0x3

    aget-object v0, p2, v0

    if-nez v0, :cond_0

    move-object v4, v6

    :goto_0
    const/4 v0, 0x4

    aget-object v0, p2, v0

    if-nez v0, :cond_1

    move-object v5, v6

    :goto_1
    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->scheduleCommand(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    :try_start_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    const/4 v0, 0x3

    :try_start_2
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->unFlattenArray(Lcom/adobe/fre/FREArray;)Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_3
.end method
