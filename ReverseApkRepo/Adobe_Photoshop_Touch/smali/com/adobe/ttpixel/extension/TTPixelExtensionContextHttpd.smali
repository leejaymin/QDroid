.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextHttpd;
.super Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {}, Lcom/adobe/ttpixel/extension/httpd/Httpd;->stop()V

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "modifyPasswdFile"

    new-instance v2, Lcom/adobe/ttpixel/extension/httpd/FnModifyPasswdFile;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/httpd/FnModifyPasswdFile;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "start"

    new-instance v2, Lcom/adobe/ttpixel/extension/httpd/FnStart;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/httpd/FnStart;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stop"

    new-instance v2, Lcom/adobe/ttpixel/extension/httpd/FnStop;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/httpd/FnStop;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
