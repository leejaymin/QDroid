.class public Lcom/inisoft/mediaplayer/a/DicePlayerApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/inisoft/mediaplayer/fs;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;->a:Lcom/inisoft/mediaplayer/fs;

    return-void
.end method


# virtual methods
.method public final a()Lcom/inisoft/mediaplayer/fs;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;->a:Lcom/inisoft/mediaplayer/fs;

    return-object v0
.end method

.method public final a(Lcom/inisoft/mediaplayer/fs;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;->a:Lcom/inisoft/mediaplayer/fs;

    return-void
.end method
