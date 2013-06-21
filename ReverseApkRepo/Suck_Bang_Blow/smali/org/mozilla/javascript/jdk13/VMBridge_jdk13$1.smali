.class Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;
.super Ljava/lang/Object;
.source "VMBridge_jdk13.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;->newInterfaceProxy(Ljava/lang/Object;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;

.field final synthetic val$adapter:Lorg/mozilla/javascript/InterfaceAdapter;

.field final synthetic val$cf:Lorg/mozilla/javascript/ContextFactory;

.field final synthetic val$target:Ljava/lang/Object;

.field final synthetic val$topScope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;Lorg/mozilla/javascript/InterfaceAdapter;Lorg/mozilla/javascript/ContextFactory;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->this$0:Lorg/mozilla/javascript/jdk13/VMBridge_jdk13;

    iput-object p2, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$adapter:Lorg/mozilla/javascript/InterfaceAdapter;

    iput-object p3, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$cf:Lorg/mozilla/javascript/ContextFactory;

    iput-object p4, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$target:Ljava/lang/Object;

    iput-object p5, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$topScope:Lorg/mozilla/javascript/Scriptable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "proxy"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 143
    iget-object v0, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$adapter:Lorg/mozilla/javascript/InterfaceAdapter;

    iget-object v1, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$cf:Lorg/mozilla/javascript/ContextFactory;

    iget-object v2, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$target:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/jdk13/VMBridge_jdk13$1;->val$topScope:Lorg/mozilla/javascript/Scriptable;

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/InterfaceAdapter;->invoke(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
