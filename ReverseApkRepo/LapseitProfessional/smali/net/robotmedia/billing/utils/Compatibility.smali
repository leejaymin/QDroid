.class public Lnet/robotmedia/billing/utils/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;

.field public static START_NOT_STICKY:I

.field private static startIntentSender:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 32
    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lnet/robotmedia/billing/utils/Compatibility;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 36
    invoke-static {}, Lnet/robotmedia/billing/utils/Compatibility;->initCompatibility()V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initCompatibility()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 41
    :try_start_0
    const-class v2, Landroid/app/Service;

    const-string v3, "START_NOT_STICKY"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 42
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lnet/robotmedia/billing/utils/Compatibility;->START_NOT_STICKY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    :try_start_1
    const-class v2, Landroid/app/Activity;

    const-string v3, "startIntentSender"

    .line 48
    sget-object v4, Lnet/robotmedia/billing/utils/Compatibility;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 47
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lnet/robotmedia/billing/utils/Compatibility;->startIntentSender:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 54
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    sput v2, Lnet/robotmedia/billing/utils/Compatibility;->START_NOT_STICKY:I

    goto :goto_0

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/SecurityException;
    sput-object v5, Lnet/robotmedia/billing/utils/Compatibility;->startIntentSender:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 51
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sput-object v5, Lnet/robotmedia/billing/utils/Compatibility;->startIntentSender:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method public static isStartIntentSenderSupported()Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lnet/robotmedia/billing/utils/Compatibility;->startIntentSender:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startIntentSender(Landroid/app/Activity;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 5
    .parameter "activity"
    .parameter "intentSender"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 57
    sget-object v2, Lnet/robotmedia/billing/utils/Compatibility;->startIntentSender:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 58
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/Object;

    .line 59
    .local v0, args:[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 60
    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 61
    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 62
    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 63
    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 65
    :try_start_0
    sget-object v2, Lnet/robotmedia/billing/utils/Compatibility;->startIntentSender:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0           #args:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    const-class v2, Lnet/robotmedia/billing/utils/Compatibility;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startIntentSender"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
