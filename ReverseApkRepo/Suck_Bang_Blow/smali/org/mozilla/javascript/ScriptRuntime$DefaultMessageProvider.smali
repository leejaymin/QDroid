.class Lorg/mozilla/javascript/ScriptRuntime$DefaultMessageProvider;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"

# interfaces
.implements Lorg/mozilla/javascript/ScriptRuntime$MessageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultMessageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/ScriptRuntime$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3706
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptRuntime$DefaultMessageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .parameter "messageId"
    .parameter "arguments"

    .prologue
    .line 3708
    const-string v1, "org.mozilla.javascript.resources.Messages"

    .line 3711
    .local v1, defaultResource:Ljava/lang/String;
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 3712
    .local v0, cx:Lorg/mozilla/javascript/Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v7

    move-object v4, v7

    .line 3715
    .local v4, locale:Ljava/util/Locale;
    :goto_0
    const-string v7, "org.mozilla.javascript.resources.Messages"

    invoke-static {v7, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 3719
    .local v6, rb:Ljava/util/ResourceBundle;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3730
    .local v2, formatString:Ljava/lang/String;
    new-instance v3, Ljava/text/MessageFormat;

    invoke-direct {v3, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 3731
    .local v3, formatter:Ljava/text/MessageFormat;
    invoke-virtual {v3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 3712
    .end local v2           #formatString:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/MessageFormat;
    .end local v4           #locale:Ljava/util/Locale;
    .end local v6           #rb:Ljava/util/ResourceBundle;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    .line 3720
    .restart local v4       #locale:Ljava/util/Locale;
    .restart local v6       #rb:Ljava/util/ResourceBundle;
    :catch_0
    move-exception v5

    .line 3721
    .local v5, mre:Ljava/util/MissingResourceException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no message resource found for message property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
