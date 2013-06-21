.class final Lorg/appcelerator/kroll/util/KrollBindingUtils$2;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "KrollBindingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessor:Ljava/lang/String;

.field final synthetic val$isSet:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 83
    iput-boolean p2, p0, Lorg/appcelerator/kroll/util/KrollBindingUtils$2;->val$isSet:Z

    iput-object p3, p0, Lorg/appcelerator/kroll/util/KrollBindingUtils$2;->val$accessor:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "invocation"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/appcelerator/kroll/util/KrollBindingUtils$2;->val$isSet:Z

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/kroll/util/KrollBindingUtils$2;->val$accessor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/kroll/util/KrollBindingUtils$2;->val$accessor:Ljava/lang/String;

    array-length v2, p2

    if-lez v2, :cond_1

    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, p1, v3, v4}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 93
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
