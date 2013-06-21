.class public Lcom/superdroid/util/RegisterHelper;
.super Ljava/lang/Object;
.source "RegisterHelper.java"


# static fields
.field private static final REGISTER_CODE:Ljava/lang/String; = "register_code"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegisterCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 10
    const-string v0, "register_code"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/superdroid/util/preference/DefaultPreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setRegisterCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "code"

    .prologue
    .line 14
    const-string v0, "register_code"

    invoke-static {p0, v0, p1}, Lcom/superdroid/util/preference/DefaultPreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
