.class public Lcom/adobe/ttpixel/extension/bonjour/FnUnpublishService;
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
    .locals 3

    const/4 v1, 0x0

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;

    invoke-direct {v2, v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->scheduleCommand(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
