.class public final Lcom/adobe/ttpixel/extension/a/a;
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
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextLicensing;->a()Lcom/adobe/fre/FREObject;

    move-result-object v0

    return-object v0
.end method
