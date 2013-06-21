.class public Ledu/umich/PowerTutor/util/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeLoader"

.field private static loadOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    sput-boolean v3, Ledu/umich/PowerTutor/util/NativeLoader;->loadOk:Z

    .line 31
    :try_start_0
    const-string v1, "bindings"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x1

    sput-boolean v1, Ledu/umich/PowerTutor/util/NativeLoader;->loadOk:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "NativeLoader"

    const-string v2, "Failed to load jni dll, will fall back on pure java"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sput-boolean v3, Ledu/umich/PowerTutor/util/NativeLoader;->loadOk:Z

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "NativeLoader"

    const-string v2, "Failed to load jni dll, will fall back on pure java"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sput-boolean v3, Ledu/umich/PowerTutor/util/NativeLoader;->loadOk:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jniLoaded()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Ledu/umich/PowerTutor/util/NativeLoader;->loadOk:Z

    return v0
.end method
