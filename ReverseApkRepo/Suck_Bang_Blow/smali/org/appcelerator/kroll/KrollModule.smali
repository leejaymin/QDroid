.class public Lorg/appcelerator/kroll/KrollModule;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "KrollModule.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;


# static fields
.field private static final TAG:Ljava/lang/String; = "KrollModule"

.field protected static constants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static customModuleInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static externalChildModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected moduleInfo:Lorg/appcelerator/kroll/KrollModuleInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollModule;->constants:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollModule;->customModuleInfo:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollModule;->externalChildModules:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 53
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiContext;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    .line 54
    iput-object p0, p0, Lorg/appcelerator/kroll/KrollModule;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 55
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModule;->bindConstants()V

    .line 57
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModule;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->getModuleInfo(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModuleInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollModule;->moduleInfo:Lorg/appcelerator/kroll/KrollModuleInfo;

    .line 58
    return-void
.end method

.method public static addExternalChildModule(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, parent:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollModule;>;"
    .local p1, child:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollModule;>;"
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->externalChildModules:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->externalChildModules:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->externalChildModules:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #parent:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollModule;>;"
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public static addModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 33
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->customModuleInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static getCustomModuleIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->customModuleInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalChildModule(Lorg/appcelerator/kroll/KrollModuleBinding;Ljava/lang/Class;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;
    .locals 7
    .parameter "binding"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/kroll/KrollModuleBinding;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollModule;"
        }
    .end annotation

    .prologue
    .local p1, moduleClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollModule;>;"
    const/4 v6, 0x0

    .line 84
    sget-object v5, Lorg/appcelerator/kroll/KrollModule;->externalChildModules:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v6

    .line 103
    :goto_0
    return-object v5

    .line 86
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollModuleBinding;->bindings:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollModuleBinding;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, bindingObj:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 89
    check-cast v0, Lorg/appcelerator/kroll/KrollModule;

    .end local v0           #bindingObj:Ljava/lang/Object;
    move-object v5, v0

    goto :goto_0

    .line 93
    :cond_1
    sget-object v5, Lorg/appcelerator/kroll/KrollModule;->externalChildModules:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 94
    .local v2, childModuleClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollModule;>;"
    invoke-static {v2}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/Class;)Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModuleBinding;

    .line 95
    .local v1, childBinding:Lorg/appcelerator/kroll/KrollModuleBinding;
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollModuleBinding;->getShortAPIName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollModuleBinding;->newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v4

    .line 98
    .local v4, module:Lorg/appcelerator/kroll/KrollModule;
    iget-object v5, p0, Lorg/appcelerator/kroll/KrollModuleBinding;->bindings:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 99
    goto :goto_0

    .end local v1           #childBinding:Lorg/appcelerator/kroll/KrollModuleBinding;
    .end local v2           #childModuleClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollModule;>;"
    .end local v4           #module:Lorg/appcelerator/kroll/KrollModule;
    :cond_3
    move-object v5, v6

    .line 103
    goto :goto_0
.end method

.method public static getModuleInfo(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModuleInfo;
    .locals 1
    .parameter "id"

    .prologue
    .line 37
    sget-object v0, Lorg/appcelerator/kroll/KrollModule;->customModuleInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollModuleInfo;

    return-object p0
.end method


# virtual methods
.method protected bindConstants()V
    .locals 3

    .prologue
    .line 78
    sget-object v2, Lorg/appcelerator/kroll/KrollModule;->constants:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, name:Ljava/lang/String;
    sget-object v2, Lorg/appcelerator/kroll/KrollModule;->constants:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/kroll/KrollModule;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bindToParent(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModule;->getModuleBinding()Lorg/appcelerator/kroll/KrollModuleBinding;

    move-result-object v0

    .line 74
    .local v0, binding:Lorg/appcelerator/kroll/KrollModuleBinding;
    invoke-virtual {v0, p1, p0}, Lorg/appcelerator/kroll/KrollModuleBinding;->bindToParent(Lorg/appcelerator/kroll/KrollProxy;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 75
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModule;->getModuleBinding()Lorg/appcelerator/kroll/KrollModuleBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollModuleBinding;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getModuleBinding()Lorg/appcelerator/kroll/KrollModuleBinding;
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModule;->getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollModuleBinding;

    return-object p0
.end method

.method public getModuleInfo()Lorg/appcelerator/kroll/KrollModuleInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModule;->moduleInfo:Lorg/appcelerator/kroll/KrollModuleInfo;

    return-object v0
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 128
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 132
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 116
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 112
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 108
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 120
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 124
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 136
    return-void
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .parameter
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, changes:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 145
    .local v0, change:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/appcelerator/kroll/KrollModule;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 147
    .end local v0           #change:Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 140
    return-void
.end method
