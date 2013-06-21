.class public Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "iPhoneModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/iphone/iPhoneModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnyProperty"
.end annotation


# instance fields
.field protected name:Ljava/lang/String;

.field final synthetic this$0:Lti/modules/titanium/ui/iphone/iPhoneModule;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/iphone/iPhoneModule;Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 37
    iput-object p1, p0, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;->this$0:Lti/modules/titanium/ui/iphone/iPhoneModule;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Z)V

    .line 39
    iput-object p3, p0, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;->name:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "scope"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const-string v5, "."

    .line 45
    const-string v0, "iPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " property isn\'t supported on Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;

    iget-object v1, p0, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;->this$0:Lti/modules/titanium/ui/iphone/iPhoneModule;

    invoke-virtual {p0}, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;-><init>(Lti/modules/titanium/ui/iphone/iPhoneModule;Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "iphone only"

    return-object v0
.end method
