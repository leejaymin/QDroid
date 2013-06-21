.class public Lorg/appcelerator/kroll/KrollProxy$ThisMethod;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "KrollProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThisMethod"
.end annotation


# instance fields
.field protected delegate:Lorg/appcelerator/kroll/KrollMethod;

.field protected name:Ljava/lang/String;

.field final synthetic this$0:Lorg/appcelerator/kroll/KrollProxy;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "delegate"

    .prologue
    .line 371
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->this$0:Lorg/appcelerator/kroll/KrollProxy;

    .line 372
    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    .line 373
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->name:Ljava/lang/String;

    .line 374
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->delegate:Lorg/appcelerator/kroll/KrollMethod;

    .line 375
    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/appcelerator/kroll/KrollMethod;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->delegate:Lorg/appcelerator/kroll/KrollMethod;

    return-object v0
.end method

.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "invocation"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->this$0:Lorg/appcelerator/kroll/KrollProxy;

    iput-object v0, p1, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 381
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->this$0:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    iput-object v0, p1, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 382
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->delegate:Lorg/appcelerator/kroll/KrollMethod;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollMethod;->invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
