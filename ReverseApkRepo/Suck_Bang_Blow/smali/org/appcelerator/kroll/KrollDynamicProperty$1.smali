.class Lorg/appcelerator/kroll/KrollDynamicProperty$1;
.super Ljava/lang/Object;
.source "KrollDynamicProperty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/KrollDynamicProperty;->safeInvoke(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/KrollDynamicProperty;

.field final synthetic val$fInv:Lorg/appcelerator/kroll/KrollInvocation;

.field final synthetic val$fMethod:Ljava/lang/String;

.field final synthetic val$fValue:Ljava/lang/Object;

.field final synthetic val$result:Lorg/appcelerator/titanium/util/AsyncResult;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/KrollDynamicProperty;Ljava/lang/String;Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/util/AsyncResult;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->this$0:Lorg/appcelerator/kroll/KrollDynamicProperty;

    iput-object p2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$fMethod:Ljava/lang/String;

    iput-object p3, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$fInv:Lorg/appcelerator/kroll/KrollInvocation;

    iput-object p4, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$result:Lorg/appcelerator/titanium/util/AsyncResult;

    iput-object p5, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$fValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$fMethod:Ljava/lang/String;

    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->this$0:Lorg/appcelerator/kroll/KrollDynamicProperty;

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$fInv:Lorg/appcelerator/kroll/KrollInvocation;

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, retVal:Ljava/lang/Object;
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$result:Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 72
    .end local v1           #retVal:Ljava/lang/Object;
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->this$0:Lorg/appcelerator/kroll/KrollDynamicProperty;

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$fInv:Lorg/appcelerator/kroll/KrollInvocation;

    iget-object v4, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$fValue:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDynamicProperty;->dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$result:Lorg/appcelerator/titanium/util/AsyncResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 70
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;->val$result:Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-virtual {v2, v0}, Lorg/appcelerator/titanium/util/AsyncResult;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
