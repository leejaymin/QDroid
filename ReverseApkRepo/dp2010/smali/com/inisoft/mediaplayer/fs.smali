.class public final Lcom/inisoft/mediaplayer/fs;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:F

.field private G:I

.field private H:F

.field private I:I

.field private J:I

.field private K:I

.field private L:F

.field private M:Lcom/inisoft/mediaplayer/cj;

.field private N:Z

.field private O:Lcom/inisoft/mediaplayer/gm;

.field private P:Lcom/inisoft/mediaplayer/bw;

.field private Q:J

.field private R:Lcom/inisoft/mediaplayer/bw;

.field private S:I

.field private T:I

.field private U:Z

.field private V:I

.field private W:I

.field private X:Lcom/inisoft/mediaplayer/hv;

.field private Y:Lcom/inisoft/mediaplayer/co;

.field private Z:Z

.field private a:Lcom/inisoft/mediaplayer/PlayerActivity;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:Z

.field private af:I

.field private ag:I

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:I

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/media/AudioManager;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 7

    const/4 v6, -0x1

    const/high16 v5, 0x437f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/fs;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->d:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/fs;->e:Z

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->f:I

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->g:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/fs;->h:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->i:Z

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->j:I

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/fs;->k:Z

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->l:I

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/fs;->m:Z

    const-string v0, "Default"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/inisoft/mediaplayer/fs;->o:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->p:I

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->q:Z

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->r:I

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->s:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/fs;->t:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->u:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->v:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->w:I

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->y:I

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->z:Z

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/fs;->A:Z

    iput v3, p0, Lcom/inisoft/mediaplayer/fs;->B:I

    iput v3, p0, Lcom/inisoft/mediaplayer/fs;->C:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->D:I

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->E:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->F:F

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->G:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->I:I

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->J:I

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->K:I

    iput v5, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    iput-object v2, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->N:Z

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->P:Lcom/inisoft/mediaplayer/bw;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/fs;->Q:J

    sget-object v0, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->R:Lcom/inisoft/mediaplayer/bw;

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->S:I

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->T:I

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->U:Z

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->V:I

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/fs;->X:Lcom/inisoft/mediaplayer/hv;

    sget-object v0, Lcom/inisoft/mediaplayer/co;->a:Lcom/inisoft/mediaplayer/co;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->Y:Lcom/inisoft/mediaplayer/co;

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->Z:Z

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->aa:I

    iput v6, p0, Lcom/inisoft/mediaplayer/fs;->ab:I

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->ac:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->ad:I

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->ae:Z

    iput v4, p0, Lcom/inisoft/mediaplayer/fs;->af:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->ag:I

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/fs;->ah:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->ai:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->aj:Z

    iput v6, p0, Lcom/inisoft/mediaplayer/fs;->ak:I

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->al:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->am:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->an:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/fs;->ao:Z

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->c:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->G:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->H:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "backkeyprotect"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->d:Z

    const-string v1, "continuation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->e:Z

    const-string v1, "screen_size"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->f:I

    const-string v1, "gestureseek_ranges"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->g:I

    const-string v1, "rotation"

    const-string v2, "sensorLandscape"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/fs;->h:Ljava/lang/String;

    const-string v1, "subtitle_bold"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->i:Z

    const-string v1, "subtitle_borders"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->j:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->j:I

    const-string v1, "subtitle_shadow"

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/fs;->k:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->k:Z

    const-string v1, "subtitle_color"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->l:I

    const-string v1, "subtitle_custom_table"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->m:Z

    const-string v1, "subtitle_encodings"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/fs;->n:Ljava/lang/String;

    const-string v1, "subtitle_fonts"

    const-string v2, "Default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/fs;->o:Ljava/lang/String;

    const-string v1, "subtitle_synctimes"

    const-string v2, "500"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->p:I

    const-string v1, "subtitle_modes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->q:Z

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "subtitle_fontsize"

    const/16 v2, 0x24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->r:I

    :goto_1
    const-string v1, "audiotrack"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->s:Z

    const-string v1, "subtitle"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->t:Z

    const-string v1, "embeddedSubtitle"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->u:Z

    const-string v1, "vobSubtitle"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->v:Z

    const-string v1, "subtitle_order"

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->w:I

    const-string v1, "subtitle_save_position"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    const-string v1, "subtitle_gravity"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->y:I

    const-string v1, "gesture_use"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->A:Z

    const-string v1, "gestureseek_row"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->B:I

    const-string v1, "gesture_left_options"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->C:I

    const-string v1, "gesture_right_options"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->D:I

    const-string v1, "backGround_play"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->z:Z

    const-string v1, "screenoff_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->E:Z

    const-string v1, "volume_booster"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "volume_boost"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "volume_booster"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, "volume_boost"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->F:F

    const-string v1, "sec_hdmi"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/fs;->am:Z

    const-string v1, "support_ruby"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->ao:Z

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/fs;->e()V

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->K:I

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dice_brightMode"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->K:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->K:I

    iget v1, p0, Lcom/inisoft/mediaplayer/fs;->K:I

    if-nez v1, :cond_4

    const-string v1, "dice_brightValue"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    const/high16 v1, 0x41f0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/fs;->d()V

    return-void

    :cond_2
    const-string v1, "subtitle_fontsize"

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->r:I

    goto/16 :goto_1

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    const/high16 v0, 0x437f

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/high16 v0, 0x4300

    :try_start_3
    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->u:Z

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->w:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->y:I

    return v0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->A:Z

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->B:I

    return v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->C:I

    return v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->D:I

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->z:Z

    return v0
.end method

.method public final I()Lcom/inisoft/mediaplayer/cj;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final K()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final L()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock_screen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->N:Z

    return v0
.end method

.method public final N()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->t()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final O()Lcom/inisoft/mediaplayer/gm;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    return-object v0
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    return-void
.end method

.method public final Q()Lcom/inisoft/mediaplayer/bw;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->P:Lcom/inisoft/mediaplayer/bw;

    return-object v0
.end method

.method public final R()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/fs;->Q:J

    return-wide v0
.end method

.method public final S()Lcom/inisoft/mediaplayer/bw;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->R:Lcom/inisoft/mediaplayer/bw;

    return-object v0
.end method

.method public final T()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->S:I

    return v0
.end method

.method public final U()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->T:I

    return v0
.end method

.method public final V()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->V:I

    return v0
.end method

.method public final W()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    return v0
.end method

.method public final X()Lcom/inisoft/mediaplayer/hv;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->X:Lcom/inisoft/mediaplayer/hv;

    return-object v0
.end method

.method public final Y()Lcom/inisoft/mediaplayer/co;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->Y:Lcom/inisoft/mediaplayer/co;

    return-object v0
.end method

.method public final Z()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->ac:I

    return v0
.end method

.method public final a()Lcom/inisoft/mediaplayer/PlayerActivity;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    return-object v0
.end method

.method public final a(F)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    iget v1, p0, Lcom/inisoft/mediaplayer/fs;->G:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->c:Landroid/media/AudioManager;

    iget v1, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->c:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :cond_1
    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iput v3, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->f:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/fs;->Q:J

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->P:Lcom/inisoft/mediaplayer/bw;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/co;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->Y:Lcom/inisoft/mediaplayer/co;

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/hv;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->X:Lcom/inisoft/mediaplayer/hv;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->h:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->K:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/gm;

    invoke-direct {v0, p1, p2, p3}, Lcom/inisoft/mediaplayer/gm;-><init>(ZII)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    iput-boolean p1, v0, Lcom/inisoft/mediaplayer/gm;->a:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    iput p2, v0, Lcom/inisoft/mediaplayer/gm;->b:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    iput p3, v0, Lcom/inisoft/mediaplayer/gm;->c:I

    goto :goto_0
.end method

.method public final aa()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->ad:I

    return v0
.end method

.method public final ab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->ae:Z

    return v0
.end method

.method public final ac()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->af:I

    return v0
.end method

.method public final ad()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->ag:I

    return v0
.end method

.method public final ae()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->ah:Z

    return-void
.end method

.method public final af()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->ah:Z

    return v0
.end method

.method public final ag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->ai:Z

    return v0
.end method

.method public final ah()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->aj:Z

    return v0
.end method

.method public final ai()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->Z:Z

    return v0
.end method

.method public final aj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->v:Z

    return v0
.end method

.method public final ak()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->ak:I

    return v0
.end method

.method public final al()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->E:Z

    return v0
.end method

.method public final am()F
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->F:F

    return v0
.end method

.method public final an()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->al:Z

    return v0
.end method

.method public final ao()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->am:Z

    return v0
.end method

.method public final ap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->an:Z

    return v0
.end method

.method public final aq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->ao:Z

    return v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->H:F

    return v0
.end method

.method public final b(F)V
    .locals 3

    const/high16 v2, 0x437f

    const/high16 v1, 0x41f0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dice_brightValue"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->g:I

    return-void
.end method

.method public final b(Lcom/inisoft/mediaplayer/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->R:Lcom/inisoft/mediaplayer/bw;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitle_encodings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->i:Z

    return-void
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->G:I

    int-to-float v0, v0

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->j:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fs;->o:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->k:Z

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x5

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SubtitleOffset_X"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    if-ge v0, v3, :cond_1

    iput v3, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    :cond_1
    return-void

    :cond_2
    const-string v1, "SubtitleOffset_Y"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->l()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    goto :goto_0
.end method

.method public final d(I)V
    .locals 3

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->l:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitle_color"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->l:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/cj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/inisoft/mediaplayer/cj;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->t:Z

    return-void
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/fs;->I:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->J:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->p:I

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->u:Z

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->I:I

    return v0
.end method

.method public final f(I)V
    .locals 3

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->r:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitle_fontsize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->A:Z

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->J:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->w:I

    return-void
.end method

.method public final g(Z)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lock_screen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->K:I

    return v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->N:Z

    return-void
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->L:F

    return v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->y:I

    return-void
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->U:Z

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->B:I

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->ae:Z

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->d:Z

    return v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->C:I

    return-void
.end method

.method public final k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->ai:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->e:Z

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->f:I

    return v0
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->D:I

    return-void
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->aj:Z

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->g:I

    return v0
.end method

.method public final m(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/cj;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->Z:Z

    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->O:Lcom/inisoft/mediaplayer/gm;

    iput p1, v0, Lcom/inisoft/mediaplayer/gm;->b:I

    :cond_0
    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/fs;->al:Z

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->S:I

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->i:Z

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->j:I

    return v0
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->T:I

    return-void
.end method

.method public final q(I)V
    .locals 1

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->V:I

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->V:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/inisoft/mediaplayer/fs;->V:I

    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->k:Z

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->l:I

    return v0
.end method

.method public final r(I)V
    .locals 3

    const/4 v1, 0x1

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SubtitleOffset_X"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "SubtitleOffset_Y"

    iget v2, p0, Lcom/inisoft/mediaplayer/fs;->W:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->x:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->M:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0, p1, v1}, Lcom/inisoft/mediaplayer/cj;->a(IZ)V

    goto :goto_1
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->ac:I

    return-void
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->m:Z

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->ad:I

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fs;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->af:I

    return-void
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->p:I

    return v0
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->ag:I

    return-void
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/fs;->ak:I

    return-void
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->q:Z

    return v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/fs;->r:I

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->s:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fs;->t:Z

    return v0
.end method
