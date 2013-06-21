.class public Lti/modules/titanium/media/SoundProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "SoundProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "SoundProxy"


# instance fields
.field protected snd:Lti/modules/titanium/media/TiSound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/SoundProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 3
    .parameter "tiContext"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 35
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiContext;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    .line 36
    const-string v0, "volume"

    const-wide/high16 v1, 0x3fe0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 37
    return-void
.end method

.method private allowBackground()Z
    .locals 3

    .prologue
    const-string v2, "allowBackground"

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, allow:Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/SoundProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "allowBackground"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 201
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->release()V

    .line 148
    return-void
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 161
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getDuration()I

    move-result v1

    .line 165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 191
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getTime()I
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 171
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getTime()I

    move-result v1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .parameter "options"

    .prologue
    const-string v3, "sound"

    const-string v6, "allowBackground"

    const-string v5, "url"

    .line 41
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 42
    const-string v2, "url"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    const-string v2, "url"

    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "url"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_0
    :goto_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "allowBackground"

    const-string v2, "allowBackground"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_1
    sget-boolean v2, Lti/modules/titanium/media/SoundProxy;->DBG:Z

    if-eqz v2, :cond_2

    .line 55
    const-string v2, "SoundProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating sound proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v5}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    return-void

    .line 44
    :cond_3
    const-string v2, "sound"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string v2, "sound"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/filesystem/FileProxy;

    .line 46
    .local v0, fp:Lti/modules/titanium/filesystem/FileProxy;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, url:Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {p0, v5, v1}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 92
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isLooping()Z

    move-result v1

    .line 95
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 83
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 86
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 74
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 77
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 227
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 231
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 216
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 221
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 208
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 213
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 205
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 224
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 123
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 126
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 115
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 118
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 139
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 143
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 131
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->reset()V

    .line 134
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "looping"

    .prologue
    .line 100
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 101
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lti/modules/titanium/media/TiSound;->setLooping(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public setTime(Ljava/lang/Object;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 181
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 182
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    .line 185
    .end local v0           #s:Lti/modules/titanium/media/TiSound;
    :cond_0
    return-void
.end method

.method public setUrl(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)V
    .locals 4
    .parameter "kroll"
    .parameter "url"

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    const-string v0, "url"

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->play()V

    .line 110
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 153
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 156
    :cond_0
    return-void
.end method
