.class public Lcom/adobe/ttpixel/extension/httpd/FnStart;
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
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    long-to-int v3, v5

    new-array v3, v3, [Ljava/lang/String;

    move v4, v2

    :goto_0
    int-to-long v7, v4

    cmp-long v7, v7, v5

    if-gez v7, :cond_0

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_1
    invoke-static {v0}, Lcom/adobe/ttpixel/extension/httpd/Httpd;->start([Ljava/lang/String;)Z
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

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
