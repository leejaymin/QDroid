.class Lti/modules/titanium/android/AndroidModuleBindingGen$4;
.super Ljava/lang/Object;
.source "AndroidModuleBindingGen.java"

# interfaces
.implements Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/AndroidModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/android/AndroidModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/AndroidModuleBindingGen;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lti/modules/titanium/android/AndroidModuleBindingGen$4;->this$0:Lti/modules/titanium/android/AndroidModuleBindingGen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 478
    new-instance v0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;

    invoke-direct {v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
