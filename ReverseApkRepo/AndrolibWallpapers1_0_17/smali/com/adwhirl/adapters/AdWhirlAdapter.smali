.class public abstract Lcom/adwhirl/adapters/AdWhirlAdapter;
.super Ljava/lang/Object;
.source "AdWhirlAdapter.java"


# static fields
.field protected static googleAdSenseAppName:Ljava/lang/String;

.field protected static googleAdSenseChannel:Ljava/lang/String;

.field protected static googleAdSenseCompanyName:Ljava/lang/String;

.field protected static googleAdSenseExpandDirection:Ljava/lang/String;


# instance fields
.field protected final adWhirlLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adwhirl/AdWhirlLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected ration:Lcom/adwhirl/obj/Ration;


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    .locals 1
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adwhirl/adapters/AdWhirlAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p2, p0, Lcom/adwhirl/adapters/AdWhirlAdapter;->ration:Lcom/adwhirl/obj/Ration;

    .line 37
    return-void
.end method

.method private static getAdapter(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;
    .locals 3
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 41
    :try_start_0
    iget v1, p1, Lcom/adwhirl/obj/Ration;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 89
    invoke-static {p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->unknownAdNetwork(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 43
    :sswitch_0
    const-string v1, "com.admob.android.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "com.adwhirl.adapters.AdMobAdapter"

    invoke-static {v1, p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->unknownAdNetwork(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v1

    goto :goto_0

    .line 66
    :sswitch_1
    const-string v1, "com.google.ads.GoogleAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "com.adwhirl.adapters.AdSenseAdapter"

    invoke-static {v1, p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->unknownAdNetwork(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v1

    goto :goto_0

    .line 80
    :sswitch_2
    new-instance v1, Lcom/adwhirl/adapters/CustomAdapter;

    invoke-direct {v1, p0, p1}, Lcom/adwhirl/adapters/CustomAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-static {p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->unknownAdNetwork(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v1

    goto :goto_0

    .line 83
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :sswitch_3
    :try_start_1
    new-instance v1, Lcom/adwhirl/adapters/GenericAdapter;

    invoke-direct {v1, p0, p1}, Lcom/adwhirl/adapters/GenericAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/VerifyError;
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_2

    const-string v1, "AdWhirl"

    const-string v2, "YYY - Caught VerifyError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_2
    invoke-static {p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->unknownAdNetwork(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v1

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/lang/VerifyError;
    :sswitch_4
    :try_start_2
    new-instance v1, Lcom/adwhirl/adapters/EventAdapter;

    invoke-direct {v1, p0, p1}, Lcom/adwhirl/adapters/EventAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_2
        0xe -> :sswitch_1
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getNetworkAdapter(Ljava/lang/String;Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;
    .locals 8
    .parameter "networkAdapter"
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 106
    .local v1, adWhirlAdapter:Lcom/adwhirl/adapters/AdWhirlAdapter;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 108
    .local v2, adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/adwhirl/adapters/AdWhirlAdapter;>;"
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Class;

    .line 109
    .local v5, parameterTypes:[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Lcom/adwhirl/AdWhirlLayout;

    aput-object v7, v5, v6

    .line 110
    const/4 v6, 0x1

    const-class v7, Lcom/adwhirl/obj/Ration;

    aput-object v7, v5, v6

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 114
    .local v4, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/adwhirl/adapters/AdWhirlAdapter;>;"
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 115
    .local v3, args:[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 116
    const/4 v6, 0x1

    aput-object p2, v3, v6

    .line 118
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2           #adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/adwhirl/adapters/AdWhirlAdapter;>;"
    .end local v3           #args:[Ljava/lang/Object;
    .end local v4           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lcom/adwhirl/adapters/AdWhirlAdapter;>;"
    .end local v5           #parameterTypes:[Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v6

    goto :goto_0

    .line 124
    :catch_1
    move-exception v6

    goto :goto_0

    .line 123
    :catch_2
    move-exception v6

    goto :goto_0

    .line 122
    :catch_3
    move-exception v6

    goto :goto_0

    .line 121
    :catch_4
    move-exception v6

    goto :goto_0

    .line 120
    :catch_5
    move-exception v6

    goto :goto_0
.end method

.method public static handle(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    .locals 3
    .parameter "adWhirlLayout"
    .parameter "ration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->getAdapter(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;

    move-result-object v0

    .line 137
    .local v0, adapter:Lcom/adwhirl/adapters/AdWhirlAdapter;
    if-eqz v0, :cond_1

    .line 138
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_0

    const-string v1, "AdWhirl SDK"

    const-string v2, "Valid adapter, calling handle()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/adwhirl/adapters/AdWhirlAdapter;->handle()V

    .line 144
    return-void

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid adapter"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setGoogleAdSenseAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 158
    sput-object p0, Lcom/adwhirl/adapters/AdWhirlAdapter;->googleAdSenseAppName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public static setGoogleAdSenseChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 162
    sput-object p0, Lcom/adwhirl/adapters/AdWhirlAdapter;->googleAdSenseChannel:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static setGoogleAdSenseCompanyName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 154
    sput-object p0, Lcom/adwhirl/adapters/AdWhirlAdapter;->googleAdSenseCompanyName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static setGoogleAdSenseExpandDirection(Ljava/lang/String;)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 166
    sput-object p0, Lcom/adwhirl/adapters/AdWhirlAdapter;->googleAdSenseExpandDirection:Ljava/lang/String;

    .line 167
    return-void
.end method

.method private static unknownAdNetwork(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)Lcom/adwhirl/adapters/AdWhirlAdapter;
    .locals 3
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 131
    sget-boolean v0, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v0, :cond_0

    const-string v0, "AdWhirl SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ration type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/adwhirl/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract handle()V
.end method
