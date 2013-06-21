.class public Lcom/adobe/ttpixel/extension/impexp/FnRequestCancel;
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
    .locals 1

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;

    invoke-static {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;->requestCancel(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;)V

    const/4 v0, 0x0

    return-object v0
.end method
