.class final Lorg/appcelerator/kroll/util/KrollBindingUtils$1;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "KrollBindingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/util/KrollBindingUtils;->createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 63
    iput-object p2, p0, Lorg/appcelerator/kroll/util/KrollBindingUtils$1;->val$creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;

    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "invocation"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModule;

    .line 67
    .local v1, createdInModule:Lorg/appcelerator/kroll/KrollModule;
    iget-object v4, p0, Lorg/appcelerator/kroll/util/KrollBindingUtils$1;->val$creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;->create(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    .line 69
    .local v3, proxy:Lorg/appcelerator/kroll/KrollProxy;
    array-length v4, p2

    new-array v0, v4, [Ljava/lang/Object;

    .line 70
    .local v0, createArgs:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_0

    .line 71
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v2

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v3, v1, v0}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
