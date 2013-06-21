.class public Lti/modules/titanium/media/AudioPlayerProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AudioPlayerProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "AudioPlayerProxy"

.field public static final STATE_BUFFERING:I = 0x0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_STARTING:I = 0x4

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_STOPPING:I = 0x6

.field public static final STATE_WAITING_FOR_DATA:I = 0x7

.field public static final STATE_WAITING_FOR_QUEUE:I = 0x8


# instance fields
.field protected snd:Lti/modules/titanium/media/TiSound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/AudioPlayerProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 3
    .parameter "tiContext"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 46
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiContext;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    .line 47
    const-string v0, "volume"

    const-wide/high16 v1, 0x3fe0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 48
    return-void
.end method

.method private allowBackground()Z
    .locals 3

    .prologue
    const-string v2, "allowBackground"

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, allow:Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "allowBackground"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->release()V

    .line 135
    return-void
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 149
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 52
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 53
    const-string v2, "url"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    const-string v2, "url"

    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "url"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_0
    :goto_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "allowBackground"

    const-string v2, "allowBackground"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :cond_1
    sget-boolean v2, Lti/modules/titanium/media/AudioPlayerProxy;->DBG:Z

    if-eqz v2, :cond_2

    .line 66
    const-string v2, "AudioPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating audio player proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v5}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    return-void

    .line 55
    :cond_3
    const-string v2, "sound"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v2, "sound"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/filesystem/FileProxy;

    .line 57
    .local v0, fp:Lti/modules/titanium/filesystem/FileProxy;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, url:Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {p0, v5, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 95
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 86
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 89
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
    .line 185
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 189
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 174
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 179
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 166
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 171
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 163
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 182
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 118
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 121
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 110
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 113
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 126
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 130
    :cond_0
    return-void
.end method

.method public setUrl(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)V
    .locals 4
    .parameter "kroll"
    .parameter "url"

    .prologue
    .line 78
    if-eqz p2, :cond_0

    .line 79
    const-string v0, "url"

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->play()V

    .line 105
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 140
    .local v0, s:Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 143
    :cond_0
    return-void
.end method
