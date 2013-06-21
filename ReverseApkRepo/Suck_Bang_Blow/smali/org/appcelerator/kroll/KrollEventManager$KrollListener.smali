.class public Lorg/appcelerator/kroll/KrollEventManager$KrollListener;
.super Ljava/lang/Object;
.source "KrollEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KrollListener"
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "KrollListener"


# instance fields
.field protected listener:Ljava/lang/Object;

.field protected weakProxy:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/Object;)V
    .locals 1
    .parameter "proxy"
    .parameter "listener"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->weakProxy:Ljava/lang/ref/SoftReference;

    .line 136
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->listener:Ljava/lang/Object;

    .line 137
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z
    .locals 5
    .parameter "eventName"
    .parameter "data"
    .parameter "asyncCallback"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, invoked:Z
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->weakProxy:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollProxy;

    .line 142
    .local v1, p:Lorg/appcelerator/kroll/KrollProxy;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->listener:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->listener:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->fireSingleEvent(Ljava/lang/String;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;Z)V

    .line 144
    const/4 v0, 0x1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-static {}, Lorg/appcelerator/kroll/KrollEventManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const-string v2, "KrollListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fire event with eventName \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' references were garbage collected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSameProxy(Lorg/appcelerator/kroll/KrollProxy;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 155
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollEventManager$KrollListener;->weakProxy:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollProxy;

    .line 156
    .local v0, localProxy:Lorg/appcelerator/kroll/KrollProxy;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
