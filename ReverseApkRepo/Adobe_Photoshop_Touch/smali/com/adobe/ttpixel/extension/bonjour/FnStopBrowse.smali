.class public Lcom/adobe/ttpixel/extension/bonjour/FnStopBrowse;
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
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    aget-object v1, p2, v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    new-instance v4, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;

    invoke-direct {v4, v3, v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->scheduleCommand(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    const/4 v1, 0x1

    :try_start_2
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method
