.class public Lcom/adobe/ttpixel/extension/impexp/FnWaitFinishedEncoding;
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
    .locals 2

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;

    invoke-static {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;->waitFinishedEncoding(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)I

    move-result v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
