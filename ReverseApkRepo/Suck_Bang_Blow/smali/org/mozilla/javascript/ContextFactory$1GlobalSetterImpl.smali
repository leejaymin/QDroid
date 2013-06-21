.class Lorg/mozilla/javascript/ContextFactory$1GlobalSetterImpl;
.super Ljava/lang/Object;
.source "ContextFactory.java"

# interfaces
.implements Lorg/mozilla/javascript/ContextFactory$GlobalSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ContextFactory;->getGlobalSetter()Lorg/mozilla/javascript/ContextFactory$GlobalSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalSetterImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextFactoryGlobal()Lorg/mozilla/javascript/ContextFactory;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->access$000()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    return-object v0
.end method

.method public setContextFactoryGlobal(Lorg/mozilla/javascript/ContextFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 227
    if-nez p1, :cond_0

    new-instance v0, Lorg/mozilla/javascript/ContextFactory;

    invoke-direct {v0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    :goto_0
    invoke-static {v0}, Lorg/mozilla/javascript/ContextFactory;->access$002(Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/ContextFactory;

    .line 228
    return-void

    :cond_0
    move-object v0, p1

    .line 227
    goto :goto_0
.end method
