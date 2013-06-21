.class public final Lcom/inisoft/mediaplayer/cp;
.super Ljava/lang/Object;


# static fields
.field private static synthetic f:[I


# instance fields
.field private a:Lcom/inisoft/mediaplayer/cq;

.field private b:Lcom/inisoft/mediaplayer/fs;

.field private c:Landroid/os/ITvOutService;

.field private d:Landroid/os/ITvoutService;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/fs;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cp;->b:Lcom/inisoft/mediaplayer/fs;

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cp;->e:Z

    :try_start_0
    const-string v0, "android.os.ITvOutService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "tvoutservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "TvoutHDMIIsEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v0, Lcom/inisoft/mediaplayer/cq;->d:Lcom/inisoft/mediaplayer/cq;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cp;->a:Lcom/inisoft/mediaplayer/cq;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/inisoft/mediaplayer/cq;->a:Lcom/inisoft/mediaplayer/cq;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cp;->a:Lcom/inisoft/mediaplayer/cq;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "android.os.ITvoutService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    const/4 v1, 0x2

    :try_start_4
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/R$integer;

    aput-object v3, v1, v2

    const-string v2, "TvoutPostSubtitleString"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v1, Lcom/inisoft/mediaplayer/cq;->b:Lcom/inisoft/mediaplayer/cq;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/cp;->a:Lcom/inisoft/mediaplayer/cq;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    :try_start_5
    const-string v0, "tvoutservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ITvoutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Lcom/inisoft/mediaplayer/cq;->e:Lcom/inisoft/mediaplayer/cq;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cp;->a:Lcom/inisoft/mediaplayer/cq;

    goto :goto_0

    :catch_3
    move-exception v1

    const/4 v1, 0x2

    :try_start_6
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/R$integer;

    aput-object v3, v1, v2

    const-string v2, "TvoutPostSubtitle"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v0, Lcom/inisoft/mediaplayer/cq;->c:Lcom/inisoft/mediaplayer/cq;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cp;->a:Lcom/inisoft/mediaplayer/cq;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/cp;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/cq;->values()[Lcom/inisoft/mediaplayer/cq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/cq;->a:Lcom/inisoft/mediaplayer/cq;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cq;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/cq;->b:Lcom/inisoft/mediaplayer/cq;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cq;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/cq;->c:Lcom/inisoft/mediaplayer/cq;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cq;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/cq;->d:Lcom/inisoft/mediaplayer/cq;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cq;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/cq;->e:Lcom/inisoft/mediaplayer/cq;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cq;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/inisoft/mediaplayer/cp;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/cp;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->x()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/inisoft/mediaplayer/cp;->a()[I

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/cp;->a:Lcom/inisoft/mediaplayer/cq;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/cq;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v2}, Landroid/os/ITvOutService;->TvoutSubtitleIsEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    float-to-int v0, v0

    invoke-interface {v2, v1, v0}, Landroid/os/ITvOutService;->TvoutSubtitlePostString(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MoviePlayer"

    const-string v2, "updateTvOutSubTitle() - Tv OUT subtitle fail!!! "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    invoke-interface {v2}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    float-to-int v0, v0

    invoke-interface {v2, v1, v0}, Landroid/os/ITvoutService;->TvoutPostSubtitleString(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    if-eqz v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    invoke-interface {v2}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    float-to-int v0, v0

    invoke-interface {v2, v1, v0}, Landroid/os/ITvoutService;->TvoutPostSubtitle(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    if-eqz v2, :cond_0

    :try_start_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v2}, Landroid/os/ITvOutService;->TvoutHDMIIsSubtitleOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    float-to-int v0, v0

    invoke-interface {v2, v1, v0}, Landroid/os/ITvOutService;->TvoutHDMIPostSubtitle(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "MoviePlayer"

    const-string v2, "updateTvOutSubTitle() - Tv OUT subtitle fail!!! "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cp;->e:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->S()Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->b:Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/cp;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cp;->a:Lcom/inisoft/mediaplayer/cq;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    if-nez v0, :cond_2

    const-string v0, "MoviePlayer"

    const-string v1, "EnableHDMISubtitleOnTV() - TvOutService Not running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v0}, Landroid/os/ITvOutService;->TvoutSubtitleIsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ITvOutService;->TvoutSubtitleSetStatus(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v0}, Landroid/os/ITvOutService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v0}, Landroid/os/ITvOutService;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v0}, Landroid/os/ITvOutService;->isHdmiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v0}, Landroid/os/ITvOutService;->isHdmiSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/ITvOutService;->TvoutSubtitleSetStatus(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cp;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    if-nez v0, :cond_6

    const-string v0, "MoviePlayer"

    const-string v1, "EnableHDMISubtitleOnTV() - TvOutService Not running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    invoke-interface {v0}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ITvoutService;->TvoutSetSubtitleStatus(Z)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    invoke-interface {v0}, Landroid/os/ITvoutService;->TvoutGetStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    invoke-interface {v0}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->d:Landroid/os/ITvoutService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/ITvoutService;->TvoutSetSubtitleStatus(Z)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cp;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    if-nez v0, :cond_8

    const-string v0, "MoviePlayer"

    const-string v1, "EnableHDMISubtitleOnTV() - TvOutService Not running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    if-nez p1, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    invoke-interface {v0}, Landroid/os/ITvOutService;->TvoutHDMIIsSubtitleOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ITvOutService;->TvoutHDMISetSubtitleStatus(I)Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cp;->c:Landroid/os/ITvOutService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/ITvOutService;->TvoutHDMISetSubtitleStatus(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/cp;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
