.class public Lorg/mozilla/javascript/SecurityUtilities;
.super Ljava/lang/Object;
.source "SecurityUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtectionDomain(Ljava/lang/Class;)Ljava/security/ProtectionDomain;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/security/ProtectionDomain;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mozilla/javascript/SecurityUtilities$2;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/SecurityUtilities$2;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast p0, Ljava/security/ProtectionDomain;

    return-object p0
.end method

.method public static getScriptProtectionDomain()Ljava/security/ProtectionDomain;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 90
    .local v0, securityManager:Ljava/lang/SecurityManager;
    instance-of v1, v0, Lorg/mozilla/javascript/RhinoSecurityManager;

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Lorg/mozilla/javascript/SecurityUtilities$3;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/SecurityUtilities$3;-><init>(Ljava/lang/SecurityManager;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #securityManager:Ljava/lang/SecurityManager;
    check-cast v0, Ljava/security/ProtectionDomain;

    move-object v1, v0

    .line 101
    :goto_0
    return-object v1

    .restart local v0       #securityManager:Ljava/lang/SecurityManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    new-instance v0, Lorg/mozilla/javascript/SecurityUtilities$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/SecurityUtilities$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
