.class public Lgnu/expr/ModuleContext;
.super Ljava/lang/Object;
.source "ModuleContext.java"


# static fields
.field static global:Lgnu/expr/ModuleContext;

.field private static table:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field manager:Lgnu/expr/ModuleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lgnu/expr/ModuleContext;

    sget-object v1, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    invoke-direct {v0, v1}, Lgnu/expr/ModuleContext;-><init>(Lgnu/expr/ModuleManager;)V

    sput-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lgnu/expr/ModuleContext;->table:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    .line 20
    return-void
.end method

.method public static getContext()Lgnu/expr/ModuleContext;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    return-object v0
.end method


# virtual methods
.method public findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "instance"

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, instanceClass:Ljava/lang/Class;
    iget-object v2, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    invoke-static {v1}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    .line 101
    .local v0, info:Lgnu/expr/ModuleInfo;
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 102
    return-object v0
.end method

.method public findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;
    .locals 6
    .parameter "info"

    .prologue
    .line 47
    iget-object v1, p1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 51
    .local v1, cname:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/ModuleInfo;->getModuleClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    .local v0, clas:Ljava/lang/Class;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 53
    .end local v0           #clas:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 55
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lgnu/mapping/WrappedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public findInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter "clas"

    .prologue
    .line 67
    sget-object v2, Lgnu/expr/ModuleContext;->table:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, inst:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 74
    :try_start_0
    const-string v2, "$instance"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 87
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-object v1

    .line 76
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 79
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 82
    .end local v0           #ex:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v2, Lgnu/mapping/WrappedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while initializing module "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getManager()Lgnu/expr/ModuleManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    return-object v0
.end method

.method public searchInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "clas"

    .prologue
    .line 62
    sget-object v0, Lgnu/expr/ModuleContext;->table:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setInstance(Ljava/lang/Object;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 94
    sget-object v0, Lgnu/expr/ModuleContext;->table:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method
