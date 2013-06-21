.class Lorg/appcelerator/titanium/kroll/KrollCallback$1;
.super Ljava/lang/Object;
.source "KrollCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$invocation:Lorg/appcelerator/kroll/KrollInvocation;

.field final synthetic val$recycleInvocation:Z


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->this$0:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iput-object p2, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->val$invocation:Lorg/appcelerator/kroll/KrollInvocation;

    iput-object p3, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->val$args:[Ljava/lang/Object;

    iput-boolean p4, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->val$recycleInvocation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->this$0:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->val$invocation:Lorg/appcelerator/kroll/KrollInvocation;

    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callSync(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-boolean v0, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->val$recycleInvocation:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollCallback$1;->val$invocation:Lorg/appcelerator/kroll/KrollInvocation;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 168
    :cond_0
    return-void
.end method
