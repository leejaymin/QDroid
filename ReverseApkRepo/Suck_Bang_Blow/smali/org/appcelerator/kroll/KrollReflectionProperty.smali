.class public Lorg/appcelerator/kroll/KrollReflectionProperty;
.super Ljava/lang/Object;
.source "KrollReflectionProperty.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProperty;


# instance fields
.field protected fieldName:Ljava/lang/String;

.field protected get:Z

.field protected javascriptConverter:Lorg/appcelerator/kroll/KrollJavascriptConverter;

.field protected name:Ljava/lang/String;

.field protected nativeConverter:Lorg/appcelerator/kroll/KrollNativeConverter;

.field protected set:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "get"
    .parameter "set"
    .parameter "fieldName"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->name:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->get:Z

    .line 24
    iput-boolean p3, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->set:Z

    .line 25
    iput-object p4, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->fieldName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public get(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "invocation"
    .parameter "name"

    .prologue
    .line 30
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollReflectionProperty;->supportsGet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    .line 46
    :goto_0
    return-object v3

    .line 32
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v2

    .line 34
    .local v2, proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->fieldName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/util/KrollReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->nativeConverter:Lorg/appcelerator/kroll/KrollNativeConverter;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lorg/appcelerator/kroll/KrollNativeConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 37
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 39
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 46
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #proxy:Lorg/appcelerator/kroll/KrollProxy;
    :cond_1
    :goto_1
    sget-object v3, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0

    .line 40
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v2       #proxy:Lorg/appcelerator/kroll/KrollProxy;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 42
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public set(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "invocation"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 51
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollReflectionProperty;->supportsSet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v2

    .line 54
    .local v2, proxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->fieldName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/util/KrollReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->javascriptConverter:Lorg/appcelerator/kroll/KrollJavascriptConverter;

    const-class v4, Ljava/lang/Object;

    invoke-interface {v3, p1, p3, v4}, Lorg/appcelerator/kroll/KrollJavascriptConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 60
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 63
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V
    .locals 0
    .parameter "javascriptConverter"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->javascriptConverter:Lorg/appcelerator/kroll/KrollJavascriptConverter;

    .line 84
    return-void
.end method

.method public setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V
    .locals 0
    .parameter "nativeConverter"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->nativeConverter:Lorg/appcelerator/kroll/KrollNativeConverter;

    .line 80
    return-void
.end method

.method public supportsGet(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->get:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsSet(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollReflectionProperty;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
