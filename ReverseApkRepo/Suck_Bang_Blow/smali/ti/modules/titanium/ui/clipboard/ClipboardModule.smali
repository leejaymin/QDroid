.class public Lti/modules/titanium/ui/clipboard/ClipboardModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "ClipboardModule.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 23
    return-void
.end method

.method private board()Landroid/text/ClipboardManager;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/ClipboardManager;

    return-object p0
.end method

.method private isTextType(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearData(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 46
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->clearText()V

    .line 47
    return-void
.end method

.method public clearText()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "type"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->getText()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->hasText()Z

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 110
    invoke-direct {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->board()Landroid/text/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
