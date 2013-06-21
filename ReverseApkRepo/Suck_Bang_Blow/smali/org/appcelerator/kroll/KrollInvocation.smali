.class public Lorg/appcelerator/kroll/KrollInvocation;
.super Ljava/lang/Object;
.source "KrollInvocation.java"


# static fields
.field protected static final MAX_POOL_SIZE:I = 0x20

.field protected static invocationPool:Lorg/appcelerator/kroll/KrollInvocation;

.field protected static invocationPoolSync:Ljava/lang/Object;

.field protected static poolSize:I


# instance fields
.field protected arguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/kroll/KrollArgument;",
            ">;"
        }
    .end annotation
.end field

.field protected isMethod:Z

.field protected isPropertyGet:Z

.field protected isPropertySet:Z

.field protected method:Lorg/appcelerator/kroll/KrollMethod;

.field protected name:Ljava/lang/String;

.field protected next:Lorg/appcelerator/kroll/KrollInvocation;

.field protected property:Lorg/appcelerator/kroll/KrollProperty;

.field protected proxy:Lorg/appcelerator/kroll/KrollProxy;

.field protected scope:Lorg/mozilla/javascript/Scriptable;

.field protected thisObj:Lorg/mozilla/javascript/Scriptable;

.field protected tiContext:Lorg/appcelerator/titanium/TiContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollInvocation;->invocationPoolSync:Ljava/lang/Object;

    .line 20
    new-instance v0, Lorg/appcelerator/kroll/KrollInvocation;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollInvocation;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollInvocation;->invocationPool:Lorg/appcelerator/kroll/KrollInvocation;

    .line 21
    const/4 v0, 0x0

    sput v0, Lorg/appcelerator/kroll/KrollInvocation;->poolSize:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public static createMethodInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 2
    .parameter "tiContext"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "name"
    .parameter "method"
    .parameter "proxy"

    .prologue
    .line 54
    invoke-static {}, Lorg/appcelerator/kroll/KrollInvocation;->obtainInvocation()Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 55
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    iput-object p0, v0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 56
    iput-object p1, v0, Lorg/appcelerator/kroll/KrollInvocation;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 57
    iput-object p2, v0, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 58
    iput-object p3, v0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    .line 59
    iput-object p4, v0, Lorg/appcelerator/kroll/KrollInvocation;->method:Lorg/appcelerator/kroll/KrollMethod;

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->isMethod:Z

    .line 61
    iput-object p5, v0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 62
    return-object v0
.end method

.method public static createMethodInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 6
    .parameter "scope"
    .parameter "thisObj"
    .parameter "name"
    .parameter "method"
    .parameter "proxy"

    .prologue
    .line 49
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createMethodInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    return-object v0
.end method

.method public static createPropertyGetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 2
    .parameter "tiContext"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "name"
    .parameter "property"
    .parameter "proxy"

    .prologue
    .line 72
    invoke-static {}, Lorg/appcelerator/kroll/KrollInvocation;->obtainInvocation()Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 73
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    iput-object p0, v0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 74
    iput-object p1, v0, Lorg/appcelerator/kroll/KrollInvocation;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 75
    iput-object p2, v0, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 76
    iput-object p3, v0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertyGet:Z

    .line 78
    iput-object p4, v0, Lorg/appcelerator/kroll/KrollInvocation;->property:Lorg/appcelerator/kroll/KrollProperty;

    .line 79
    iput-object p5, v0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 80
    return-object v0
.end method

.method public static createPropertyGetInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 6
    .parameter "scope"
    .parameter "thisObj"
    .parameter "name"
    .parameter "property"
    .parameter "proxy"

    .prologue
    .line 67
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertyGetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    return-object v0
.end method

.method public static createPropertySetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 2
    .parameter "tiContext"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "name"
    .parameter "property"
    .parameter "proxy"

    .prologue
    .line 90
    invoke-static {}, Lorg/appcelerator/kroll/KrollInvocation;->obtainInvocation()Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 91
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    iput-object p0, v0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 92
    iput-object p1, v0, Lorg/appcelerator/kroll/KrollInvocation;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 93
    iput-object p2, v0, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 94
    iput-object p3, v0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertySet:Z

    .line 96
    iput-object p4, v0, Lorg/appcelerator/kroll/KrollInvocation;->property:Lorg/appcelerator/kroll/KrollProperty;

    .line 97
    iput-object p5, v0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 98
    return-object v0
.end method

.method public static createPropertySetInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 6
    .parameter "scope"
    .parameter "thisObj"
    .parameter "name"
    .parameter "property"
    .parameter "proxy"

    .prologue
    .line 85
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertySetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    return-object v0
.end method

.method protected static obtainInvocation()Lorg/appcelerator/kroll/KrollInvocation;
    .locals 3

    .prologue
    .line 36
    sget-object v1, Lorg/appcelerator/kroll/KrollInvocation;->invocationPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v2, Lorg/appcelerator/kroll/KrollInvocation;->invocationPool:Lorg/appcelerator/kroll/KrollInvocation;

    if-eqz v2, :cond_0

    .line 38
    sget-object v0, Lorg/appcelerator/kroll/KrollInvocation;->invocationPool:Lorg/appcelerator/kroll/KrollInvocation;

    .line 39
    .local v0, inv:Lorg/appcelerator/kroll/KrollInvocation;
    iget-object v2, v0, Lorg/appcelerator/kroll/KrollInvocation;->next:Lorg/appcelerator/kroll/KrollInvocation;

    sput-object v2, Lorg/appcelerator/kroll/KrollInvocation;->invocationPool:Lorg/appcelerator/kroll/KrollInvocation;

    .line 40
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/appcelerator/kroll/KrollInvocation;->next:Lorg/appcelerator/kroll/KrollInvocation;

    .line 41
    monitor-exit v1

    move-object v1, v0

    .line 44
    .end local v0           #inv:Lorg/appcelerator/kroll/KrollInvocation;
    :goto_0
    return-object v1

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    new-instance v1, Lorg/appcelerator/kroll/KrollInvocation;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollInvocation;-><init>()V

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public addArgument(Lorg/appcelerator/kroll/KrollArgument;)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 136
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method protected clearForRecycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertySet:Z

    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertyGet:Z

    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->isMethod:Z

    .line 189
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->method:Lorg/appcelerator/kroll/KrollMethod;

    .line 190
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->property:Lorg/appcelerator/kroll/KrollProperty;

    .line 192
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 193
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 194
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 195
    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 196
    return-void
.end method

.method public copy()Lorg/appcelerator/kroll/KrollInvocation;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lorg/appcelerator/kroll/KrollInvocation;->obtainInvocation()Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 172
    .local v0, other:Lorg/appcelerator/kroll/KrollInvocation;
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    .line 173
    iget-boolean v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->isMethod:Z

    iput-boolean v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->isMethod:Z

    .line 174
    iget-boolean v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertyGet:Z

    iput-boolean v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertyGet:Z

    .line 175
    iget-boolean v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertySet:Z

    iput-boolean v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertySet:Z

    .line 176
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->method:Lorg/appcelerator/kroll/KrollMethod;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->method:Lorg/appcelerator/kroll/KrollMethod;

    .line 177
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->property:Lorg/appcelerator/kroll/KrollProperty;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->property:Lorg/appcelerator/kroll/KrollProperty;

    .line 179
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 180
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->scope:Lorg/mozilla/javascript/Scriptable;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 181
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 182
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    iput-object v1, v0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 183
    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public getArgument(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollArgument;
    .locals 3
    .parameter "name"

    .prologue
    .line 144
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollArgument;

    .line 145
    .local v0, arg:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollArgument;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 149
    .end local v0           #arg:Lorg/appcelerator/kroll/KrollArgument;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollArgument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMethod()Lorg/appcelerator/kroll/KrollMethod;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->method:Lorg/appcelerator/kroll/KrollMethod;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Lorg/appcelerator/kroll/KrollProperty;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->property:Lorg/appcelerator/kroll/KrollProperty;

    return-object v0
.end method

.method public getProxy()Lorg/appcelerator/kroll/KrollProxy;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    return-object v0
.end method

.method public getScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getThisObj()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->thisObj:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->tiContext:Lorg/appcelerator/titanium/TiContext;

    return-object v0
.end method

.method public isDefaultValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "argName"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollInvocation;->getArgument(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollArgument;

    move-result-object v0

    .line 154
    .local v0, arg:Lorg/appcelerator/kroll/KrollArgument;
    if-eqz v0, :cond_0

    .line 155
    iget-boolean v1, v0, Lorg/appcelerator/kroll/KrollArgument;->isValueDefault:Z

    .line 157
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMethod()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->isMethod:Z

    return v0
.end method

.method public isPropertyGet()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertyGet:Z

    return v0
.end method

.method public isPropertySet()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertySet:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lorg/appcelerator/kroll/KrollInvocation;->invocationPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    sget v1, Lorg/appcelerator/kroll/KrollInvocation;->poolSize:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollInvocation;->clearForRecycle()V

    .line 164
    sget-object v1, Lorg/appcelerator/kroll/KrollInvocation;->invocationPool:Lorg/appcelerator/kroll/KrollInvocation;

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollInvocation;->next:Lorg/appcelerator/kroll/KrollInvocation;

    .line 165
    sput-object p0, Lorg/appcelerator/kroll/KrollInvocation;->invocationPool:Lorg/appcelerator/kroll/KrollInvocation;

    .line 167
    :cond_0
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, " "

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertyGet:Z

    if-eqz v3, :cond_4

    .line 104
    const-string v3, "[getProperty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v3, :cond_1

    .line 112
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v3}, Lorg/appcelerator/kroll/KrollProxy;->getAPIName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertyGet:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertySet:Z

    if-eqz v3, :cond_6

    .line 117
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->property:Lorg/appcelerator/kroll/KrollProperty;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    :cond_3
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 105
    :cond_4
    iget-boolean v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->isPropertySet:Z

    if-eqz v3, :cond_5

    .line 106
    const-string v3, "[setProperty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :cond_5
    iget-boolean v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->isMethod:Z

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "[callMethod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_6
    iget-boolean v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->isMethod:Z

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->method:Lorg/appcelerator/kroll/KrollMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 121
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollInvocation;->arguments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/appcelerator/kroll/KrollArgument;>;"
    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollArgument;

    .line 124
    .local v0, arg:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    const-string v3, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
