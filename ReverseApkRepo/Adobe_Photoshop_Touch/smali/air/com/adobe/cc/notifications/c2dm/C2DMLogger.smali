.class public Lair/com/adobe/cc/notifications/c2dm/C2DMLogger;
.super Ljava/lang/Object;
.source "C2DMLogger.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final DEBUG:I = 0x4

.field public static final ERROR:I = 0x1

.field public static final FATAL:I = 0x0

.field public static final INFO:I = 0x3

.field public static final VERBOSE:I = 0x5

.field public static final WARN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 21
    const/4 v4, 0x0

    .line 25
    .local v4, result:Lcom/adobe/fre/FREObject;
    :try_start_0
    array-length v5, p2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 27
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    .line 28
    .local v2, logLevel:I
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, className:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, output:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 58
    :goto_0
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v4

    .line 72
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #logLevel:I
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 34
    .restart local v0       #className:Ljava/lang/String;
    .restart local v2       #logLevel:I
    .restart local v3       #output:Ljava/lang/String;
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FATAL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #logLevel:I
    .end local v3           #output:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 38
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #className:Ljava/lang/String;
    .restart local v2       #logLevel:I
    .restart local v3       #output:Ljava/lang/String;
    :pswitch_1
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :pswitch_2
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :pswitch_3
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :pswitch_5
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 67
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #logLevel:I
    .end local v3           #output:Ljava/lang/String;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
