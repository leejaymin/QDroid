.class final Lcom/inisoft/mediaplayer/fg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ej;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fg;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fg;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onError"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v3
.end method
