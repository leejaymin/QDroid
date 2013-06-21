.class Lorg/appcelerator/kroll/KrollMethod$1;
.super Ljava/lang/Object;
.source "KrollMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/KrollMethod;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/KrollMethod;

.field final synthetic val$fArgs:[Ljava/lang/Object;

.field final synthetic val$fInv:Lorg/appcelerator/kroll/KrollInvocation;

.field final synthetic val$result:Lorg/appcelerator/titanium/util/AsyncResult;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/AsyncResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollMethod$1;->this$0:Lorg/appcelerator/kroll/KrollMethod;

    iput-object p2, p0, Lorg/appcelerator/kroll/KrollMethod$1;->val$fInv:Lorg/appcelerator/kroll/KrollInvocation;

    iput-object p3, p0, Lorg/appcelerator/kroll/KrollMethod$1;->val$fArgs:[Ljava/lang/Object;

    iput-object p4, p0, Lorg/appcelerator/kroll/KrollMethod$1;->val$result:Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollMethod$1;->this$0:Lorg/appcelerator/kroll/KrollMethod;

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollMethod$1;->val$fInv:Lorg/appcelerator/kroll/KrollInvocation;

    iget-object v4, p0, Lorg/appcelerator/kroll/KrollMethod$1;->val$fArgs:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollMethod;->invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, retVal:Ljava/lang/Object;
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollMethod$1;->val$result:Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1           #retVal:Ljava/lang/Object;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollMethod$1;->val$result:Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-virtual {v2, v0}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
