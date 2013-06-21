.class public Lti/modules/titanium/ui/iphone/iPhoneModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "iPhoneModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "iPhone"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 25
    return-void
.end method


# virtual methods
.method public get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "scope"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;

    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI.iPhone."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lti/modules/titanium/ui/iphone/iPhoneModule$AnyProperty;-><init>(Lti/modules/titanium/ui/iphone/iPhoneModule;Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V

    return-object v0
.end method
