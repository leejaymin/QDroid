.class public Lorg/appcelerator/titanium/proxy/RProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "RProxy.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final RESOURCE_TYPE_ANDROID:I = 0x0

.field public static final RESOURCE_TYPE_APPLICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AndroidRProxy"


# instance fields
.field protected name:Ljava/lang/String;

.field protected resourceType:I

.field protected subResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/titanium/proxy/RProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/RProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;I)V
    .locals 1
    .parameter "context"
    .parameter "resourceType"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/String;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resourceType"
    .parameter "name"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Z)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/RProxy;->subResources:Ljava/util/HashMap;

    .line 36
    iput p2, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    .line 37
    iput-object p3, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "scope"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->subResources:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v0, p2

    .line 45
    .local v0, childName:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->subResources:Ljava/util/HashMap;

    new-instance v2, Lorg/appcelerator/titanium/proxy/RProxy;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/RProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    iget v4, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    invoke-direct {v2, v3, v4, v0}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .end local v0           #childName:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->subResources:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 60
    sget-boolean v1, Lorg/appcelerator/titanium/proxy/RProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "AndroidRProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    if-nez v3, :cond_1

    const-string v3, "android.R."

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :try_start_0
    iget v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->resourceType:I

    if-nez v1, :cond_2

    .line 65
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getAndroidResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_1
    return-object v1

    .line 61
    :cond_1
    const-string v3, "R."

    goto :goto_0

    .line 67
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-super {p0}, Lorg/appcelerator/kroll/KrollProxy;->getNativeValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/RProxy;->name:Ljava/lang/String;

    return-object v0
.end method
