.class Lti/modules/titanium/media/MediaModuleBindingGen$3;
.super Ljava/lang/Object;
.source "MediaModuleBindingGen.java"

# interfaces
.implements Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/MediaModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/MediaModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/MediaModuleBindingGen;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lti/modules/titanium/media/MediaModuleBindingGen$3;->this$0:Lti/modules/titanium/media/MediaModuleBindingGen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    new-instance v0, Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-direct {v0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
